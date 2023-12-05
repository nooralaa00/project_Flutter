import 'package:flutter/material.dart';
import 'package:project/CustomTextField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text(
              'Sign UP',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true),
        body: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'asset/images/background.jpeg',
                )),
          ),
          child: ListView(
            children: [
              const Text('Create account',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              const SizedBox(height: 5),
              const CustomTextField(title: 'Email', icon: Icons.email),
              const SizedBox(height: 15),
              const CustomTextField(title: 'Password', icon: Icons.key),
              const SizedBox(height: 15),
              const CustomTextField(title: 'Confirm Password', icon: Icons.key),
              const SizedBox(height: 25),
              MaterialButton(
                  height: 50,
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: const Text('Sign UP')),
              const SizedBox(height: 15),
              const Center(
                child: Text('- or Sign With -',
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: const Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: const Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: const Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
