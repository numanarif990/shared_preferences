import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString("name", "numan ch");
                sp.setInt("age", 20);
                sp.setBool("isLogin", false);
                   print(sp.getString("name"));
                   print(sp.getBool("isLogin"));
                   print(sp.getInt("age"));

                   sp.remove("name");
                print(sp.getString("name"));

              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.orange,
                child: const Center(
                  child: Text("button"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
/*
Future<void> numanCh() async{
    await Future.delayed(Duration(seconds: 3));
    print("delayed");
}*/
}
