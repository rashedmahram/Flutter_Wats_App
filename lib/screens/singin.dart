import 'package:flutter/material.dart';
import 'package:wats_app/const.dart';

class SinginScreen extends StatefulWidget {
  const SinginScreen({Key? key}) : super(key: key);

  @override
  State<SinginScreen> createState() => _SinginScreenState();
}

class _SinginScreenState extends State<SinginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: iBlack,
        title: const Text('واستطيتكو',style: TextStyle(fontFamily: 'Cairo'),),
        centerTitle: false,
      ),
      body: Container(
        decoration: BoxDecoration(color: iBlack),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'سحل الدخول الان بواسطه البريد الالكتروني وكلمه المرور الخاصه بك',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      children: const <Widget>[
                        Icon(Icons.email, color: Colors.white,size: 15.0,),
                        Text(
                          'البديد الالكتروني :',
                          style: TextStyle(color: Colors.white),
                        ),
                        
                      ],
                    ),
                    TextField(
                      cursorColor: Colors.white,
                      controller: nameController,
                      decoration: const InputDecoration(
                        hintText: 'Enter your Email',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                        //labelText: 'User Name',
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      children: const<Widget>[
                        Icon(
                          Icons.lock_rounded,
                          color: Colors.white,
                          size: 15.0,
                        ),
                        Text(
                          'كلمه المرور',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    TextField(
                      cursorColor: Colors.white,
                      controller: passwordController,
                      decoration: const InputDecoration(
                        hintText: 'Enter your Password',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                        //labelText: 'User Name',
                      ),
                    ),
                  ]),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(
                    'Forgot Password',
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {
                      },
                    )),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Does not have account?'),
                    TextButton(
                      child: const Text(
                        'تسجيل الدخول',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                 
                ),
              ],
            )),
      ),
    );
  }
}
