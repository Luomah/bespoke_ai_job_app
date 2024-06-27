import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16.sp),
          children: [
            Text(
              "Hello, Dorcas",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text("Find job through opportunities"),
            SizedBox(height: 16.sp,),
            Container(
              height: 36,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(
                            color:  Colors.grey.shade300,
                          )
                        )
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey,
                          
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      minimumSize: Size(45,45),
                      padding: EdgeInsets.zero
                    ),
                    onPressed: () {},
                    label: Icon(Icons.filter_list),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
