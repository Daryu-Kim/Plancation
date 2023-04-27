import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login.style.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 42, vertical: 28),
          child: Column(
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 128,
                        height: 128,
                        child: Theme.of(context).brightness == Brightness.light
                            ? SvgPicture.asset('assets/svgs/logo-light.svg')
                            : SvgPicture.asset('assets/svgs/logo-dark.svg')),
                    SizedBox(height: 16),
                    SizedBox(
                      height: 52,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            // filled: true,
                            // fillColor: Colors.red,
                            isDense: true,
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    strokeAlign:
                                        BorderSide.strokeAlignOutside)),
                            labelText: '이메일',
                            labelStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 52,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            // filled: true,
                            // fillColor: Colors.red,
                            isDense: true,
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    strokeAlign:
                                        BorderSide.strokeAlignOutside)),
                            labelText: '비밀번호',
                            labelStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextButton(onPressed: () {}, child: Text('비밀번호를 잊어버리셨나요?')),
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: FilledButton(
                        onPressed: () {},
                        child: const Text(
                          '로그인',
                          style: btnTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(child: SizedBox(
                        height: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.outline
                          ),
                        ),
                      )),
                      SizedBox(width: 8,),
                      Text('다른 방법으로 로그인', style: anotherTextStyle(context),),
                      SizedBox(width: 8,),
                      Flexible(child: SizedBox(
                        height: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.outline
                          ),
                        ),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 52,
                    child: OutlinedButton(
                        style: btnOutlineStyle(context),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SvgPicture.asset('assets/')
                            SizedBox(
                              width: 28,
                              height: 28,
                              child: SvgPicture.asset(
                                  'assets/svgs/google_icon.svg'),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Google로 로그인',
                              style: socialBtnTextStyle(context),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('계정이 없으세요?'),
                      SizedBox(width: 8,),
                      TextButton(onPressed: (){}, child: Text('회원가입 하러가기', style: joinBtnTextStyle,))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
