import 'package:bespoke_ai_job_app/features/resume/ui/widgets/select_resume_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Upload CV"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.sp),
        children: [
          Text("Upload resume*"),
          SizedBox(
            height: 16.h,
          ),
          SelectResumeWidget(),

          SizedBox(height: 32.h), //
//
          Text("Cover Letter (optional)"),
          SizedBox(
            height: 16.h,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.sp),
                ),
              ),
            ),
            minLines: 4,
            maxLines: 8,
          ),
          //
          //
          SizedBox(
            height: 16.h,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                maximumSize: Size.fromWidth(200)),
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
