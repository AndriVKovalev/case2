import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const BorderStyleField = OutlineInputBorder(
        borderRadius:  BorderRadius.all(Radius.circular( 36)),
        borderSide: BorderSide(
            color: const Color(0xFFECEFF1), width: 1
        )
    );
    const linkTextStyle = TextStyle(fontSize: 16, color: Color(0xFF0079D0),
        fontFamily: 'Roboto');
    const InpuTexteStyle = TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.4),
        fontFamily: 'Roboto');

    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 81,),
              SizedBox(width: 130, height: 80,child: Image.asset('images/dartlogo.png'),),
              SizedBox(height: 19,),
              Text("Введите логин в виде 10 цифр",
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6),
                    fontFamily: 'Roboto'),
              ),
              Text("номера телефона",
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6),
                    fontFamily: 'Roboto'),
              ),
              SizedBox(height: 19,),
              SizedBox(width: 244 , height: 34,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    filled: true,
                    fillColor: Color(0xFFECEFF1),
                    enabledBorder: BorderStyleField ,
                    focusedBorder: BorderStyleField ,
                    hintText: '+7',
                    hintStyle: InpuTexteStyle,
                  ),
                ),
              ),
              SizedBox(height: 19,),
              SizedBox(width: 244, height: 34,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    filled: true,
                    fillColor: Color(0xFFECEFF1),
                    enabledBorder: BorderStyleField ,
                    focusedBorder: BorderStyleField ,
                    hintText: '****',
                    hintStyle: InpuTexteStyle,
                  ),
                ),
              ),
              SizedBox(height: 28,),
              SizedBox(width: 154, height: 42, child:
              ElevatedButton(onPressed: () {}, child: Text(' Войти'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0079D0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)
                  ),
                ),
              )
              ),
              SizedBox(height: 62,),
              InkWell(child: Text('Регистрация', style: linkTextStyle,),
                onTap: () {},),
              SizedBox(height: 20,),
              InkWell(child: Text('Забыли пароль?', style: linkTextStyle,),
                onTap: () {},),
            ],),
          ),
        ),

      ),

    );
  }
}
