import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 280.h,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlue, Colors.lightBlueAccent, Colors.blue],
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
              ),

              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12..r),
                bottomRight: Radius.circular(12.r),
              ),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50.h),
                // Text for Profile Page
                Text(
                  'P r o f i l e ',
                  style: GoogleFonts.pacifico(
                    fontSize: 20.sp,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 15.h),
                // Image os User
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 50.sp,

                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/apecify.jpeg'),
                    radius: 45.sp,
                  ),
                ),

                SizedBox(height: 10.h),
                // name of User
                Text(
                  'Apexcify Technology',
                  style: GoogleFonts.alef(fontSize: 20.sp, color: Colors.white),
                ),

                SizedBox(height: 5.h),

                // email of user
                Text(
                  'apexcifytechnologys@gmail.com',
                  style: GoogleFonts.acme(fontSize: 20.sp, color: Colors.white),
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // bio
                Row(
                  children: [
                    Icon(
                      Icons.error_outline_rounded,
                      color: Colors.blue,
                      size: 20.sp,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'About',
                      style: GoogleFonts.zillaSlab(
                        color: Colors.blue,
                        fontSize: 20.sp,
                      ),
                    ),
                  ],
                ),

                Text(
                  'Innovative technology solutions provider specializing in cutting-edge software development, mobile applications, and digital transformation. Committed to delivering excellence and pushing the boundaries of what\'s possible in tech',
                  style: GoogleFonts.zillaSlab(
                    color: Colors.black,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.call, color: Colors.blue, size: 25.sp),
                  title: Text(
                    'Phone',
                    style: GoogleFonts.zillaSlab(
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),

                  subtitle: Text(
                    '+92 300 1234567',
                    style: GoogleFonts.zillaSlab(
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),

                  trailing: Icon(Icons.arrow_forward, color: Colors.blueAccent),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.blue,
                    size: 25.sp,
                  ),
                  title: Text(
                    'Location',
                    style: GoogleFonts.zillaSlab(
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),

                  subtitle: Text(
                    'Peshawar , Pakistan',
                    style: GoogleFonts.zillaSlab(
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),

                  trailing: Icon(Icons.arrow_forward, color: Colors.blueAccent),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.work, color: Colors.blue, size: 25.sp),
                  title: Text(
                    'Industory',
                    style: GoogleFonts.zillaSlab(
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),

                  subtitle: Text(
                    'Software Developement',
                    style: GoogleFonts.zillaSlab(
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),

                  trailing: Icon(Icons.arrow_forward, color: Colors.blueAccent),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(
                    Icons.calendar_today,
                    color: Colors.blue,
                    size: 25.sp,
                  ),
                  title: Text(
                    'Member Since',
                    style: GoogleFonts.zillaSlab(
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),

                  subtitle: Text(
                    'January 2024',
                    style: GoogleFonts.zillaSlab(
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
                  ),

                  trailing: Icon(Icons.arrow_forward, color: Colors.blueAccent),
                  onTap: (){},
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.fixed,
              content: Text(
                'Edit Profile functionality will Apply soon',
                style: TextStyle(color: Colors.white),
              ),
              duration: Duration(seconds: 3),
              backgroundColor: Colors.blue,
            ),
          );
        },
        child: Icon(Icons.edit, color: Colors.white),
      ),
    );
  }
}
