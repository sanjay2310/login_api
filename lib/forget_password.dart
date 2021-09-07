import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login/login_screen.dart';

class Forget extends StatelessWidget {
   static const String id = "forget_password";



  @override
  Widget build(BuildContext context) {
      return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(25),
           child: SingleChildScrollView(
              child: Column(
                children: [
                   Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back,
                              color: Theme.of(context).primaryColor, size: 30),
                          onPressed: (){
                            Navigator.pushNamed(context,Login.id);
                          },
                        ),
                      ],
                    ),
                  
              
                  SizedBox(height: 20),
                       Row(mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text(
                            'Forget Password',
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                         ],
                       ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                          ),
                          ),
                        prefixIcon: Icon(Icons.mail, size: 30),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w800)),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                    decoration: InputDecoration(
                       border: OutlineInputBorder(borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                          ),
                          ),
                        prefixIcon: Icon(Icons.lock, size: 30),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w800)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context,Login.id);
                      },
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 55, width: double.infinity,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text('Login'),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
