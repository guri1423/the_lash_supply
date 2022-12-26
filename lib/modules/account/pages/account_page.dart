

import 'package:flutter/material.dart';

import '../widgets/account_widgets.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('My Account',),
          backgroundColor: Colors.black,
        ),
        body: customBackground1(context, child: accountList(context))
    );
  }
}
