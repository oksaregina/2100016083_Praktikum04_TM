// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _retypePasswordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _retypePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/diamond.png', 
        width: 30,
      ),
    title: const Text(
          'SHRINE',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.purple[50], // Warna latar belakang AppBar
        foregroundColor: Colors.black, // Warna teks dan ikon
      ),
    

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 80.0),
              Column(
                children: <Widget>[
                  Image.asset('assets/diamond.png'),
                  const SizedBox(height: 16.0),
                  const Text('Registrasi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),),

                  const Text('lorem lpsum dolar sit amet, consectetur adipiscing elit '),
                ],
              ),
              const SizedBox(height: 12.0),

               const Text(
              'Masukan Nama User',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black, 
              ),
            ),
            const SizedBox(height: 16.0),

              TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Username',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                  ),
                ),
                controller: _usernameController,
              ),
              const SizedBox(height: 12.0),

              const Text(
              'Masukan Password',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black, 
              ),
            ),
            const SizedBox(height: 16.0),

              TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                  ),
                ),
                obscureText: true,
                controller: _passwordController,
              ),
              const SizedBox(height: 12.0),

              const Text(
              'Masukan Kembali Password',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black, 
              ),
            ),
            const SizedBox(height: 16.0),

              TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                  ),
                ),
                obscureText: true,
                controller: _retypePasswordController,
              ),
              const SizedBox(height: 24.0),

              OverflowBar(
              alignment: MainAxisAlignment.end,
              
              children: <Widget>[
                
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Align buttons to the right
              children: [
            TextButton(
            child: const Text(
              'Hapus',
              style: TextStyle(
              color: Colors.purple, // Mengubah warna teks pada TextButton
              ),
            ),
            onPressed: () {
              _usernameController.clear();
              _passwordController.clear();
              },
            ),
            ElevatedButton(
              child: const Text(
              'Daftar',
                style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
               Navigator.pop(context); // Navigasi ke halaman sebelumnya
            },
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Warna latar belakang tombol
            minimumSize: const Size(100, 50), // Ukuran minimum tombol
              ),
            ),
          ],
        ),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Vertically center all children
                children: [
                  const SizedBox(height: 200.0), // Centered Spacer
                  GestureDetector(
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 12.0), // Padding at the bottom
                      child:

                      Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(
                    'Sudah punya akun?',
                    style: TextStyle(
                    color: Colors.black, // Adjust color as needed
                    ),
                  ),
                  SizedBox(width: 8), // Add some space between the texts
                  Text(
                  'Sign in',
                  style: TextStyle(
                  color: Colors.blue, // Changed text color to blue
                  decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
                        ),
                      ),
                    ],
                  ),
                )
              ]
            ),
          ],
        ),
       ),
      ),
    );
  }
}


