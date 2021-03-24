import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:proeye_api/model/app_file_view_model.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';

mixin UploadFilesMixin on BusyMixin, ApiMixin {
  BuiltList<String> get filesToUpload => filesStateController.value.toUpload;
  File get firstOrDefaultFile {
    final path = filesToUpload.firstOrDefault;
    if (path == null) return null;
    return File(path);
  }

  final filesStateController = FilesState().obs;
  Future<void> pickFiles(
      {bool isMulti = true, FileType fileType = FileType.any}) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: fileType,
        allowMultiple: isMulti,
      );

      if (result != null && result.count > 0) {
        if (!isMulti) {
          filesStateController.value = filesStateController.value.resetAll();
        }
        filesStateController.value =
            filesStateController.value.addUploadFiles(result.paths);
      }
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    } catch (error) {
      AppUtil.showAlertDialog(body: error.toString());
    }
    return null;
  }

  Future<List<dio.MultipartFile>> prepareFilesToUpload() async {
    final res = <dio.MultipartFile>[];
    for (var x in filesStateController.value.toUpload) {
      res.add(await dio.MultipartFile.fromFile(x));
    }
    return res;
  }

  Future<List<String>> uploadFilesToServer({bool returnRelative = true}) async {
    final urls = <String>[];
    if (filesStateController.value.toUpload.length == 0) return urls;
    try {
      final resp = await request<BuiltList<AppFileViewModel>>(
        api.getFilesApi().v10ApiFilesPost(
              files: (await prepareFilesToUpload()).toBuiltList(),
            ),
      );
      urls.addAll(resp.map((f) => returnRelative ? f.relativeUrl : f.fullUrl));
    } catch (error) {
      printError(info: 'Error Posting ProfileImage : ' + error.toString());
    }
    return urls;
  }
}
