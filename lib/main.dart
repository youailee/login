import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_1/constants/style.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: DashboardStyle.lightGreyText, // 设置光标颜色
        ),
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FocusScopeNode _focusScopeNode = FocusScopeNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
        onTap: () {
      if (!_focusScopeNode.hasPrimaryFocus) {
        _focusScopeNode.requestFocus(FocusNode());
        }
       },
        child: FocusScope(
          node: _focusScopeNode,
          child: Container(
            width: 508,
            height: 574,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only(
                topRight: Radius.circular(4),
                topLeft: Radius.circular(4),
              ),
              color: DashboardStyle.mainColor
            ),
            child: Column(
             children: [
              Container(
              height: 8,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topRight: Radius.circular(4),
                      topLeft: Radius.circular(4),
                    ),
                    color: DashboardStyle.lightGreenBorder,
                ),
              ),
              SizedBox(height: 56,),
                Center(
                  child:Container(
                  width: 412,
                  height: 478,
                  child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    'Login in',
                    style: TextStyle(
                      fontSize: 38,
                      color: DashboardStyle.whiteText,
                      height: 40 / 38,
                      ),
                    ),
                    SizedBox(height: 64,),
                    Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 18,
                      color: DashboardStyle.lightGreyText,
                      height: 1,
                      ),
                    ),
                    SizedBox(height: 6,),
                    Container(
                      height: 44,
                      child: TextFormField(
                          style: TextStyle(
                            color:DashboardStyle.whiteText,
                          ),
                          decoration: InputDecoration(
                          border: OutlineInputBorder( // 自定义边框
                          borderRadius: BorderRadius.circular(0.0), // 边框的圆角半径，设置为0.0表示方形
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: DashboardStyle.borderColor), // 设置激活状态下的边框颜色
                          ),
                          enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: DashboardStyle.blackButtonBorder), // 设置非激活状态下的边框颜色
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24,),
                    Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 18,
                      color: DashboardStyle.lightGreyText,
                      height: 1,
                     ),
                    ),
                    SizedBox(height: 6,),
                    Container(
                      height: 44,
                      child: TextFormField(
                          style: TextStyle(
                            color:DashboardStyle.whiteText,
                          ),
                          decoration: InputDecoration(
                          border: OutlineInputBorder( // 自定义边框
                            borderRadius: BorderRadius.circular(0.0), // 边框的圆角半径，设置为0.0表示方形
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: DashboardStyle.borderColor), // 设置激活状态下的边框颜色
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: DashboardStyle.blackButtonBorder), // 设置非激活状态下的边框颜色
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 22,),
                    Container(
                      height: 20,
                      child: Row(
                        children: [
                          Text(
                            'Forgot password ?',
                            style: TextStyle(
                              fontSize: 18,
                              height: 1,
                              color:DashboardStyle.lightGreyText
                            ),
                          ),
                          SizedBox(width: 5,),
                          InkWell(
                            onTap: () {

                            },
                            child: Text(
                              'Click here',
                              style: TextStyle(
                                  fontSize: 18,
                                  height: 1,
                                  color:DashboardStyle.lightGreenBorder,
                                  decoration: TextDecoration.underline
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 64,),
                    Center(
                      child: Container(
                        width: 332,
                        height: 56,
                        child: TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(DashboardStyle.lightGreenBorder)
                          ),
                          onPressed: () {
                            //处理登录操作
                          },
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              fontSize: 20,
                              height: 18 / 20,
                              color: DashboardStyle.whiteText,

                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: InkWell(
                        onTap: () {

                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 18,
                            height: 1,
                            color: DashboardStyle.lightGreyText
                          ),
                        ),
                      )
                    )
                  ],
                  ),
                )
                ) ,
             ],
          ),
          ),
      ),
      )
    ));
  }
}
