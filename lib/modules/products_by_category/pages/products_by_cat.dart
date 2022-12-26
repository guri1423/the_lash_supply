import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_lash_supply/details_widget.dart';
import 'package:the_lash_supply/modules/home/bloc/product_bloc/product_bloc.dart';
import 'package:the_lash_supply/modules/onboarding/repository/auth_repositry.dart';
import 'package:the_lash_supply/modules/product_description/models/product_details_modal.dart';
import 'package:the_lash_supply/modules/products_by_category/widget/product_widget.dart';

import '../../category/bloc/category_bloc/category_bloc.dart';
import '../../category/model/category_modal.dart';
import '../../favourite/widgets/favourite_widgets.dart';
import '../../widgets/custom_app_bar.dart';

class ProductsByCategory extends StatefulWidget {

   ProductsByCategory({Key? key,required this.name}) : super(key: key);
   String name;

  @override
  State<ProductsByCategory> createState() => _ProductsByCategoryState();
}

class _ProductsByCategoryState extends State<ProductsByCategory> {
  final ProductBloc productBloc = ProductBloc();
  final TextEditingController _nameController=TextEditingController();
  final AuthRepository authRepository = AuthRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff272727),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: appBar(context, 'Products By Category'),
      ),
        body: FutureBuilder<List<ProductDetails>?>(
            future: authRepository.productbycategory(widget.name),
            builder: (context,snapshot){
              if(snapshot!=null && snapshot.hasData){
                List<ProductDetails>? modal = snapshot.data;
                return productbycategoryProduct(context, modal: modal);
              }
              if(snapshot.hasError){
                return Center(
                    child: Text('something went wrong'),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
        )
    );
  }
}
Widget productbycategoryProduct(context,{required List<ProductDetails>? modal}){
  return Column(
      children: [
      productsByCat(context,'View Details',modal: modal),
  ],
  );
}
/*
BlocProvider<CategoryBloc>(
create: (_) => categoryBloc..add(LoadCategoryEvent()),

child: BlocListener<CategoryBloc, CategoryState>(
listener: (context, state) {
if(state is CategorySuccess){

}
},
child: BlocBuilder<CategoryBloc,CategoryState>(
builder: (BuildContext context, state){
if(state is CategoryInitial){
return Center(child: CircularProgressIndicator());
}
if(state is CategorySuccess){
return categoryProduct(context, modal: state.modal);
}
return Container();
},
),
),
),*/
