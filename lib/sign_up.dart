import 'package:flutter/material.dart';

import 'dash_board.dart';
import 'login.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password, name;
  final TextEditingController _passwordController = TextEditingController();

  bool _showPassword = false;
  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6474FB),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        title: const Text(
          'Sign In',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Color(0xff6474FB)),
          child: Container(
            // margin: EdgeInsets.only(top: 80),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            padding: const EdgeInsets.only(top: 20),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Name',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        TextFormField(
                          validator: (input) {
                            if (input != null) {
                              return 'Provide an name';
                            }
                            return null;
                          },
                          onSaved: (input) => name = input!,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Colors.deepPurple,
                              ),
                            ),
                            labelText: 'Email Address',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'UserName',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        TextFormField(
                          validator: (input) {
                            if (input != null) {
                              return 'Provide an name';
                            }
                          },
                          onSaved: (input) => name = input!,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Colors.deepPurple,
                              ),
                            ),
                            labelText: 'Email Address',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Username',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        TextFormField(
                          validator: (input) {
                            if (input == null ||
                                input.characters.contains('@') == false) {
                              return 'Provide an email';
                            }
                            return null;
                          },
                          onSaved: (input) => _email = input!,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Colors.deepPurple,
                              ),
                            ),
                            labelText: 'Email Address',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        TextFormField(
                          validator: (input) {
                            if (input!.length < 6) {
                              return 'Longer password please';
                            }
                          },
                          controller: _passwordController,
                          onSaved: (input) => _password = input!,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _togglevisibility();
                                });
                              },
                              child: Icon(
                                _showPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(
                                color: Colors.deepPurple,
                              ),
                            ),

                            //  focusedBorder: InputBorder.none,
                            labelText: 'password',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          obscureText: !_showPassword,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            onPressed: () {
                              _submit;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DashBoardPage()));
                            },
                            child: const Text('Login'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 100,
                            ),
                            const Text("Already have an account"),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()));
                                },
                                child: const Text('Sign in'))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Login logic here
      print(_email);
      print(_password);
    }
  }
}


