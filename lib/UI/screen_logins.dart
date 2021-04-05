import 'package:flutter/material.dart';
import 'package:flutter_applearn_korean/common/style.dart';
import 'package:flutter_applearn_korean/style/my_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(

                  vertical: 100.0
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                      iconLogin,
                  ),
                  SizedBox(height:30.0),
                  Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    decoration: kBoxDecorationStyle,
                   margin: EdgeInsets.only(left: 36,right: 36),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      style:TextStyle(
                          color:Colors.black87
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          // prefixStyle: ,
                          contentPadding: EdgeInsets.only(top: 14),
                          prefixIcon: Icon(
                            Icons.account_circle_outlined,
                            color: Color(0xffEF4C48),
                          ),
                          hintText: 'Tên đăng nhập',
                          hintStyle: TextStyle(
                              color: Colors.black38
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 22,),
                  Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    decoration: kBoxDecorationStyle,
                    margin: EdgeInsets.only(left: 36,right: 36),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      style:TextStyle(
                          color:Colors.black87,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          // prefixStyle: ,
                          contentPadding: EdgeInsets.only(top: 14),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xffEF4C48),
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_outlined,
                            color: Color(0xffEF4C48),
                          ),
                          hintText: 'Nhập mật khẩu',
                          hintStyle: TextStyle(
                              color: Colors.black38
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 43),
                 Column(
                   children: [
                     Container(
                       padding: EdgeInsets.only(left: 36,right: 36),
                       height: 50,
                       child: ElevatedButton(
                         onPressed: (){},
                         child: Text('ĐĂNG NHẬP'),
                         style:ElevatedButton.styleFrom(
                             padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
                             primary: Color(0xffEF4C48),
                             onPrimary: Colors.white,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(60),
                             )
                         ),
                       ),
                     ),
                     SizedBox(height: 22,),
                     Text('Bạn quên mật khẩu?',
                       style: GoogleFonts.montserrat(fontSize: 14,color: Color(0xffF05D5A)),),
                     SizedBox(height: 30,),
                     GestureDetector(
                       onTap: ()=>print('Login with facebook'),
                       child: Container(
                         height: 40,
                         width: 40,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: Colors.blue,
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black26,
                               offset: Offset(0,2)
                             )
                           ],
                           image: DecorationImage(
                               image: AssetImage('assets/Faceicon.png'),
                           )
                         ),


                       ),
                     )
                   ],
                 )
                ],
              ),
            ),)
    );
  }
}
