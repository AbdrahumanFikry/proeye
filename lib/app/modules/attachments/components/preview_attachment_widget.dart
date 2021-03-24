import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:pro_eye/app/modules/attachments/components/download_widget.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:path/path.dart' as path;

class PreviewAttachmentWidget extends StatefulWidget {
  final String url;
  final bool isLocal;
  final void Function() onDelete;

  const PreviewAttachmentWidget({
    Key key,
    @required this.url,
    @required this.isLocal,
    this.onDelete,
  }) : super(key: key);

  @override
  _PreviewAttachmentWidgetState createState() =>
      _PreviewAttachmentWidgetState();
}

class _PreviewAttachmentWidgetState extends State<PreviewAttachmentWidget> {
  @override
  Widget build(BuildContext context) {
    final ext = path.extension(widget.url);

    final deleteWidget = widget.onDelete == null
        ? null
        : PositionedDirectional(
            top: 0.0,
            start: 0.0,
            child: InkWell(
              onTap: widget.onDelete,
              child: Material(
                color: ColorUtil.errorColor,
                shape: CircleBorder(),
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: Icon(
                    Icons.cancel,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
    Widget bodyWidget;
    switch (ext.toLowerCase()) {
      case '.jpg':
      case '.jpeg':
      case '.png':
      case '.tiff':
        ImageProvider provider;
        if (widget.isLocal) {
          provider = FileImage(File(widget.url));
        } else {
          provider = CachedNetworkImageProvider(widget.url);
        }
        //handle on click preview image
        bodyWidget = InkWell(
          onTap: () {
            Get.to(
              () => Material(
                child: PhotoView(
                  minScale: PhotoViewComputedScale.contained,
                  imageProvider: provider,
                ),
              ),
            );
          },
          child: Image(
            image: provider,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        );
        break;
      default:
        //simple file
        bodyWidget = SizedBox.expand(
          child: InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.file_present,
                  color: ColorUtil.primaryColor,
                ),
                Text(
                  path.basenameWithoutExtension(widget.url),
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        );
        break;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 8,
                    bottom: 0,
                    end: 8,
                    top: 8,
                  ),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: bodyWidget,
                  ),
                ),
                if (deleteWidget != null) deleteWidget,
                if (!widget.isLocal)
                  PositionedDirectional(
                    top: 0,
                    end: 0,
                    child: DownloadWidget(
                      url: widget.url,
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
