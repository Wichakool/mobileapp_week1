import 'package:flutter/material.dart';
import 'package:mobileapp_week1/constant.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password;
  final formKey = GlobalKey<FormState>();
  final Ppassword = TextEditingController();
  final Cpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Form(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtSurname(),
                txtEmail(),
                txtPassword(),
                txtConfirmPassword(),
                btnSubmit(),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextFormField(
        style: TextStyle(
          fontSize: 24,
          color: regtColor,
        ),
        decoration: InputDecoration(
          labelText: 'Name :',
          icon: Icon(Icons.account_circle_outlined),
          hintText: 'Input your name',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'please enter your name';
          } else if (value.length < 8) {
            return 'Input name more than 8 Charector';
          }
        },
        onSaved: (value) {
          name = value!.trim();
        },
      ),
    );
  }

  Widget txtSurname() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextFormField(
        style: TextStyle(
          fontSize: 24,
          color: regtColor,
        ),
        decoration: InputDecoration(
          labelText: 'Surname :',
          icon: Icon(Icons.account_circle_rounded),
          hintText: 'Input your Surname',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your surname';
          }
        },
        onSaved: (value) {
          surname = value!.trim();
        },
      ),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontSize: 24,
          color: regtColor,
        ),
        decoration: InputDecoration(
          labelText: 'Email :',
          icon: Icon(Icons.email_outlined),
          hintText: 'Input your Email',
        ),
        validator: (value) {
          if (!(value!.contains('@'))) {
            return 'Please enter "@" in your email format';
          } else if (!(value.contains("."))) {
            return 'Please enter "." in your email format';
          }
        },
        onSaved: (value) {
          email = value!.trim();
        },
      ),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(
          fontSize: 24,
          color: regtColor,
        ),
        decoration: InputDecoration(
          labelText: 'Password :',
          icon: Icon(Icons.lock_outlined),
          hintText: 'Input your Password',
        ),controller: Ppassword,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your Password';
          }
        },
        onSaved: (value) {
          password = value!.trim();
        },
      ),
    );
  }

  Widget txtConfirmPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(
          fontSize: 24,
          color: regtColor,
        ),
        decoration: InputDecoration(
          labelText: 'Password :',
          icon: Icon(Icons.lock_outlined),
          hintText: 'Input your Password',
        ),controller: Cpassword,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your Confirm Password';
          }else if(value != Ppassword.text){
            return 'Password not match';
          }
        },
        onSaved: (value) {
          password = value!.trim();
        },
      ),
    );
  }

  Widget btnSubmit() => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: regtColor,
        ),
        onPressed: () {
          print("Hello!");
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            formKey.currentState!.reset();
          }
          print("Name : $name Surname : $surname  Email : $email");
          print("Register Complete!");
        },
        child: Text('Submit'),
      );
}
