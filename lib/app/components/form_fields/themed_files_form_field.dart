import 'dart:async';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/form_fields/themed_error_widget.dart';
import 'package:pro_eye/app/modules/attachments/controllers/attachments_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:proeye_api/model/app_file_view_model.dart';

class FilesState {
  final BuiltList<AppFileViewModel> existingFiles;
  final BuiltList<AppFileViewModel> toRemove;
  final BuiltList<String> toUpload;

  int get existingCount => toUpload.length + existingFiles.length;
  int get changesCount => toUpload.length + toRemove.length;

  FilesState({
    BuiltList<AppFileViewModel> existingFiles,
    BuiltList<AppFileViewModel> toRemove,
    BuiltList<String> toUpload,
  })  : this.existingFiles = existingFiles ??
            BuiltList<AppFileViewModel>.from(<AppFileViewModel>[]),
        this.toRemove =
            toRemove ?? BuiltList<AppFileViewModel>.from(<AppFileViewModel>[]),
        this.toUpload = toUpload ?? BuiltList<String>.from(<String>[]);

  FilesState resetAll() {
    return copyWith(
      toUpload: ListBuilder<String>([]).build(),
      toRemove: ListBuilder<AppFileViewModel>([]).build(),
      existingFiles: ListBuilder<AppFileViewModel>([
        ...existingFiles,
        ...toRemove,
      ]).build(),
    );
  }

  FilesState resetUploadFiles() {
    return copyWith(
      toUpload: ListBuilder<String>([]).build(),
      toRemove: toRemove,
      existingFiles: existingFiles,
    );
  }

  FilesState resetRemovedFiles() {
    final newList = ListBuilder<AppFileViewModel>([
      ...existingFiles,
      ...toRemove,
    ]);
    return copyWith(
      toUpload: toUpload,
      toRemove: ListBuilder<AppFileViewModel>().build(),
      existingFiles: newList.build(),
    );
  }

  FilesState addFileBack(AppFileViewModel file) {
    return copyWith(
      toUpload: toUpload,
      toRemove: (toRemove.toBuilder()..remove(file)).build(),
      existingFiles: (existingFiles.toBuilder()..add(file)).build(),
    );
  }

  FilesState removeFile(AppFileViewModel file) {
    return copyWith(
      toUpload: toUpload,
      toRemove: (toRemove.toBuilder()..add(file)).build(),
      existingFiles: (existingFiles.toBuilder()..remove(file)).build(),
    );
  }

  FilesState addUploadFile(String file) {
    if (isFileExistInToUpload(file)) return this;
    return copyWith(
      toUpload: (toUpload.toBuilder()..add(file)).build(),
      toRemove: toRemove,
      existingFiles: existingFiles,
    );
  }

  FilesState addUploadFiles(Iterable<String> file) {
    return copyWith(
      toUpload: (toUpload.toBuilder()
            ..addAll(file.where((x) => !isFileExistInToUpload(x))))
          .build(),
      toRemove: toRemove,
      existingFiles: existingFiles,
    );
  }

  bool isFileExistInToUpload(String file) {
    return toUpload.contains(file);
  }

  FilesState removeUploadFile(String file) {
    return copyWith(
      toUpload: (toUpload.toBuilder()..remove(file)).build(),
      toRemove: toRemove,
      existingFiles: existingFiles,
    );
  }

  FilesState copyWith({
    BuiltList<AppFileViewModel> existingFiles,
    BuiltList<AppFileViewModel> toRemove,
    BuiltList<String> toUpload,
  }) {
    return FilesState(
      existingFiles: existingFiles ?? this.existingFiles,
      toRemove: toRemove ?? this.toRemove,
      toUpload: toUpload ?? this.toUpload,
    );
  }

  @override
  int get hashCode =>
      existingFiles.hashCode ^ toRemove.hashCode ^ toUpload.hashCode;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is FilesState &&
        o.existingFiles == existingFiles &&
        o.toRemove == toRemove &&
        o.toUpload == toUpload;
  }
}

class ThemedFilesFormField extends FormField<FilesState> {
  final Rx<FilesState> controller;
  ThemedFilesFormField({
    Key key,
    @required this.controller,
    bool enabled = true,
    bool canDeleteOld = false,
    bool isRequiredNew = false,
    bool isRequiredAny = false,
    AutovalidateMode autovalidateMode,
    bool isMulti = true,
    FileType fileType = FileType.any,
    void onSaved(FilesState value),
    String title,
  }) : super(
          key: key,
          initialValue: controller.value,
          enabled: enabled,
          builder: (_field) {
            final field = _field as ThemedFilesFormFieldState;
            final state = field.value;
            Widget body;
            if (isMulti) {
              body = AppButton(
                textColor: Colors.white,
                width: Get.width / 2,
                borderRadius: 50,
                color: ColorUtil.primaryColor,
                title: '${title ?? 'المرفقات'} (${state.existingCount})',
                onPressed: () {
                  Get.toNamed(
                    Routes.ATTACHMENTS,
                    arguments: AttachmentsControllerRouteParams(
                      canDeleteOld: canDeleteOld,
                      enabled: enabled,
                      controller: controller,
                      fileType: fileType,
                      isMulti: isMulti,
                    ),
                  );
                },
              );
            } else {
              void onClick() {
                AttachmentsController.pickFilesStatic(
                  AttachmentsControllerRouteParams(
                    controller: controller,
                    canDeleteOld: false,
                    isMulti: false,
                    enabled: true,
                    fileType: FileType.image,
                  ),
                );
              }

              var themedStub = ThemedBaseStub(
                title: title,
                aboveDataBuilder: (context, child) => InkWell(
                  child: child,
                  onTap: onClick,
                ),
                child: Text(
                  state.toUpload.length == 0
                      ? ''
                      : basename(state.toUpload.first).substring(0, 25) + '...',
                ),
              );
              var children = <Widget>[
                state.toUpload.length == 0
                    ? Expanded(
                        child: themedStub,
                      )
                    : themedStub,
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Material(
                    color: Colors.transparent,
                    shape: CircleBorder(),
                    child: InkWell(
                      onTap: onClick,
                      child: state.toUpload.length == 0
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.upload_rounded),
                            )
                          : Image.file(
                              File(state.toUpload.first),
                              width: Get.width / 4,
                              height: Get.width / 4,
                            ),
                    ),
                  ),
                )
              ];
              body = state.toUpload.length == 0
                  ? Row(
                      children: children,
                    )
                  : Column(
                      // mainAxisSize: MainAxisSize.min,
                      children: children,
                    );
            }
            return Column(
              children: [
                //upload button
                body,
                if (field.hasError) ThemedErrorWidget(field.errorText),
              ],
            );
          },
          autovalidateMode: autovalidateMode,
          onSaved: onSaved,
          validator: (state) {
            if (!enabled) {
              return null;
            }
            if (isRequiredNew) {
              if (state.toUpload.length == 0) {
                return 'برجاء إضافة ملفات للرفع';
              }
            }
            if (isRequiredAny) {
              if (state.toUpload.length == 0 &&
                  state.existingFiles.length == 0) {
                return 'برجاء إضافة ملفات للرفع';
              }
            }
            return null;
          },
        );

  @override
  createState() => ThemedFilesFormFieldState();
}

class ThemedFilesFormFieldState extends FormFieldState<FilesState> {
  @override
  ThemedFilesFormField get widget => super.widget;

  Rx<FilesState> get controller => widget.controller;
  StreamSubscription _sub;
  void _handleControllerChanged(newVal) {
    if (newVal != value) didChange(newVal);
  }

  @override
  void initState() {
    super.initState();
    _sub = controller.listen(_handleControllerChanged);
    setValue(controller.value);
  }

  @override
  void dispose() {
    _sub?.cancel();
    _sub = null;
    super.dispose();
  }

  @override
  void didChange(FilesState value) {
    super.didChange(value);
    controller.value = value;
  }

  @override
  void didUpdateWidget(ThemedFilesFormField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      _sub?.cancel();
      if (widget.controller != null) {
        _sub = widget.controller.listen(_handleControllerChanged);
        setValue(widget.controller.value);
      }
    }
  }

  @override
  void reset() {
    super.reset();
    controller.value = widget.initialValue;
  }
}
