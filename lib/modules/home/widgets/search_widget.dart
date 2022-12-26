import 'package:flutter/material.dart';
import 'package:the_lash_supply/modules/onboarding/repository/auth_repositry.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';

class SearchProduct extends StatefulWidget {
  SearchProduct({Key? key, required this.name}) : super(key: key);
  String name;

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  final AuthRepository authRepository = AuthRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<ProductDetails>?>(
      future: authRepository.searchProduct(widget.name),
      builder: (context, snapshot) {
        if (snapshot != null && snapshot.hasData) {
          List<ProductDetails>? modal = snapshot.data;
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: "Search Here",
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ],
          );
        }
        if (snapshot.hasError) {
          return Center(
            child: Text('something went wrong'),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    ));
  }
}
