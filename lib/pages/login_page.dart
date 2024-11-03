import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Spacer(),
                Text(
                  'Hello, welcome back!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Login to continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.green,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Username',
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.green,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(height: 1),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text('Forgot password?'),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black87,
                    ),
                    onPressed: () {},
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/main');
                      //without routes
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return HomePage();
                      //     },
                      //   ),
                      // );
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  'Or sign in with',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/goog.jpg',
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(width: 5),
                        Text('Login with Google'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/fb.png',
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(width: 5),
                        Text('Login with Facebook'),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Don't have account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
