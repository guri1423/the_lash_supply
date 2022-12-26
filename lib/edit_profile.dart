import 'package:flutter/material.dart';
import 'package:the_lash_supply/home1.dart';
import 'package:the_lash_supply/modules/widgets/custom_app_bar.dart';
class EditProfile extends StatefulWidget {
  const EditProfile ({Key? key}) : super(key: key);
  @override
  State<EditProfile > createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final nameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    nameController.addListener(_printLatestValue);
    lastnameController.addListener(_printLatestValue);
    emailController.addListener(_printLatestValue);
    passwordController.addListener(_printLatestValue);
  }
  @override
  void dispose() {
    nameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  void _printLatestValue() {
    print('Second text field: ${nameController.text}');
    print('Second text field: ${lastnameController.text}');
    print('Second text field: ${emailController.text}');
    print('Second text field: ${passwordController.text}');
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff272727),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: appBar(context, 'Edit Profile'),
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0,left: 20,right: 20),
            child: Container(
              padding:  EdgeInsets.all(8.0),
              child:  TextField(
                controller: nameController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  hintText: 'Enter Name',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  labelText: 'Name',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0,left: 20,right: 20),
            child: Container(
              padding:  EdgeInsets.all(8.0),
              child:  TextField(
                controller: lastnameController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  hintText: 'Enter Last Name',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  labelText: 'Last Name',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0,left: 20,right: 20),
            child: Container(
              padding:  EdgeInsets.all(8.0),
              child:  TextField(
                controller: emailController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  hintText: 'Enter Email Name',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0,left: 20,right: 20),
            child: Container(
              padding:  EdgeInsets.all(8.0),
              child:  TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 65,vertical: 16),
            child: Container(
              width: double.infinity,//why we use this
              height: 50,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.red,
              ),
              child: MaterialButton(
                onPressed: () { Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) =>Home1()));
                },
                child: Text(
                  'SAVE CHANGES',
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
