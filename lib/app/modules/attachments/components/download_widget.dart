import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:path/path.dart' as path;

class DownloadWidget extends StatefulWidget {
  final String url;

  const DownloadWidget({Key key, @required this.url}) : super(key: key);
  @override
  _DownloadWidgetState createState() => _DownloadWidgetState();
}

class _DownloadWidgetState extends State<DownloadWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Material(
        shape: CircleBorder(),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Icon(
            Icons.file_download,
            color: ColorUtil.primaryColor,
          ),
        ),
      ),
      onTap: () async {
        try {
          final permStatus = await Permission.storage.request().isGranted;
          if (!permStatus) {
            AppUtil.showAlertSnack(
              isGood: false,
              body: 'الصلاحيات مرفوضة',
              title: 'برجاء منح التطبيق صلاحيات تحميل الملفات',
            );
            return;
          }
          final today = DateTime.now();
          final timeTag = '${today.year} - ${today.month}';
          final fileName = path.basename(widget.url);
          final ext = path.extension(widget.url);
          Get.until((_) => !Get.isOverlaysOpen);
          bool saved;
          switch (ext) {
            case '.jpg':
            case '.jpeg':
            case '.png':
            case '.tiff':
              AppUtil.showAlertSnack(
                isGood: true,
                body: 'جاري حفظ الصورة إلى المعرض',
                title: 'سيتم حفظ الصورة فى ألبوم: "ProEye - $timeTag"',
              );
              saved = await GallerySaver.saveImage(widget.url,
                  albumName: 'ProEye - $timeTag');
              break;
            case '.mp4':
            case '.mp3':
            case '.m44':
            case '.webm':
            case '.mkv':
            case '.flv':
            case '.avi':
              AppUtil.showAlertSnack(
                isGood: true,
                body: 'جاري حفظ الفيديو إلى المعرض',
                title: 'سيتم حفظ الفيديو فى ألبوم: "ProEye - $timeTag"',
              );
              saved = await GallerySaver.saveVideo(widget.url,
                  albumName: 'ProEye - $timeTag');
              break;
            default:
          }
          if (saved == true) {
            Get.until((_) => !Get.isOverlaysOpen);

            AppUtil.showAlertSnack(
              isGood: true,
              body: 'تم حفظ الملف إلى المعرض',
              title: 'اسم الملف:\n$fileName',
              duration: Duration(seconds: 5),
            );
          } else if (saved == null) {
            final dir = Platform.isIOS
                ? await getApplicationDocumentsDirectory()
                : await getExternalStorageDirectory();

            AppUtil.showAlertSnack(
              isGood: true,
              body: 'تم بدئ التحميل',
              title: 'برجاء متابعة التحميل من قائمة الإشعارات',
            );
            final newDir = Directory(path.join(dir.path, timeTag));
            await newDir.create(recursive: true);
            await FlutterDownloader.enqueue(
              url: widget.url,
              savedDir: newDir.path,
            );
          }
        } catch (e) {
          printError(info: e.toString());
        }
      },
    );
  }
}
