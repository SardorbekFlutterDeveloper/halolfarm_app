  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignPage1 extends StatelessWidget {
  const SignPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
          label: const Text(
            "Orqaga",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Ro'yhatdan o'tish",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "To'liq ism-familiyangiz",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Tug'ilgan sanangiz"),
                  ),
                ],
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "To'liq ism-familiyangiz",
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
