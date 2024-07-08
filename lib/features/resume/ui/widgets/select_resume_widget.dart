import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectResumeWidget extends StatelessWidget {
  const SelectResumeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectFile(context);
      },
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(16.sp),
        child: Container(
          height: 160.sp,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.cloud_upload_outlined,
                size: 24.sp,
              ),
              Text(
                "Format PDF, JPG,PNG",
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              Text("Browse files"),
            ],
          ),
        ),
      ),
    );
  }
  
  void selectFile(BuildContext context) async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: ["jpg","png","webp","pdf"],
      type: FileType.custom,
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      
    } else {
      // User canceled the picker
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("No file selected"),)
      );
    }
  }
}
