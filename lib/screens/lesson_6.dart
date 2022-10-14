import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:practice_7/utils/images.dart';

class lessonEight extends StatelessWidget {
  lessonEight({super.key});

bool isPassVisible=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text("Registration", style: TextStyle(color: Colors.black),),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(12),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.phone),
                      ),
                      labelText: 'enter your number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: !isPassVisible,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                    icon: isPassVisible?Icon(Icons.visibility): Icon(Icons.visibility_off),  
                    onPressed: (){
                      
                    }, ),
                ),
                    ),
                    Container(
                      child: Lottie.asset(myImages.first_lottie)
                    )
                    
                    
                    ], 
          ),
              ),
        )
      ),
    );
  }
}