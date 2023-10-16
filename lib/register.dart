import 'package:flutter/material.dart';
import 'package:task_4/firstscreen.dart';

class register extends StatefulWidget {
  register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 75,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('images/th.jpg'),
                  radius: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Create an account',
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      contentPadding: const EdgeInsets.all(10),
                      label: const Text('Name'),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.blue))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      contentPadding: const EdgeInsets.all(10),
                      label: const Text('Email'),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.blue))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: flag,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              flag = false;
                            });
                          },
                          icon: const Icon(Icons.visibility)),
                      contentPadding: const EdgeInsets.all(10),
                      label: const Text('Password'),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.blue))),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    const Text(
                      'if you have account ',
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const firstscreen(),
                          ));
                        },
                        child: const Text('Login')),
                  ],
                )
              ],
            ),
          ),
        )));
  }
}
