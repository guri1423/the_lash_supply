
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_lash_supply/core/utils/colors.dart';
import 'package:the_lash_supply/modules/onboarding/bloc/register/register_bloc.dart';
import 'package:the_lash_supply/modules/onboarding/models/register_modal/register_modal.dart';
import 'package:the_lash_supply/modules/widgets/custom_app_button.dart';

import '../../../home1.dart';
import '../../bottom_nav_bar/pages/bottom_navigation.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

final RegisterBloc registerBloc = RegisterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<RegisterBloc>(
        create: (_) => registerBloc,
        child: BlocListener<RegisterBloc, RegisterState>(
          listener: (context, state) {
            if(state is RegisterSuccess){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const BottomNavigation()), (route) => false);
            }
          },
          child: BlocBuilder<RegisterBloc, RegisterState>(
            builder: (context, state) {
              if(state is RegisterInitial){
                return firstArea(context);
              }
              if(state is RegisterLoading){
                return Center(child: CircularProgressIndicator());
              }

              if(state is RegisterFail){
                return Center(child: Text('Error: ${state.errorMessage}' ));
              }

              return Container();
            }
            ),
          ),
          ),
        );


  }
}


Widget firstArea(context){
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _firstNameController=TextEditingController();
  final TextEditingController _passController=TextEditingController();
  final TextEditingController _lastNameController=TextEditingController();
  final TextEditingController _phoneController=TextEditingController();

  return Form(
    key: _formKey,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/register2.png')
                  ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/register3.png')
                  ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, left: 10),
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                iconSize: 25,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (Context) => Home1()));
                },
              ),
            ),
            Container(height: 63,
              width: 261,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/register1.png')
                  )
              ),),

            SizedBox(height: 40,),

            Container(
                width: MediaQuery.of(context).size.width*0.80,
                height: MediaQuery.of(context).size.height*0.60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    textField(context,'First Name',_firstNameController ),
                    textField(context,'Last Name',_lastNameController ),
                    textField(context,'Email',_emailController ),
                    textField(context,'Password' ,_passController),
                    textField(context,'Phone No' ,_phoneController),
                    appButton(context, AppColors.primaryColor,
                        'REGISTER', AppColors.textColor,
                        action: () {
                      if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                      BlocProvider.of<RegisterBloc>(context).add(ButtonPressed(RegisterModal(
                        email: _emailController.text,
                        password: _passController.text,
                        phone: _phoneController.text,
                        name: _firstNameController.text,
                        lastName: _lastNameController.text

                      )
                      )
                      );
                    }
                    )
                  ],
                )
            ),

            SizedBox(height: 40,),

            RichText(
              text: TextSpan(
                text: 'Need help? ',
                style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w700,fontFamily: "Roboto"),
                children: <TextSpan>[
                  TextSpan(text: 'Contact us', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,fontFamily: "Roboto",
                    color: AppColors.primaryColor,),
                  ),
                ],
              ),
            ),



          ],
        ),
      ],
    ),
  );
}
