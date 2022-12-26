import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_lash_supply/modules/home/bloc/product_bloc/product_bloc.dart';
import 'package:the_lash_supply/modules/home/widgets/image_widget.dart';
import 'package:the_lash_supply/modules/home/widgets/product_widget.dart';
import 'package:the_lash_supply/modules/home/widgets/search_widget.dart';
import 'package:the_lash_supply/modules/onboarding/repository/auth_repositry.dart';
import '../../../core/utils/colors.dart';
import '../../product_description/models/product_details_modal.dart';
import '../bloc/product_bloc/banner_bloc.dart';
import '../model/bannerimage.dart';
import 'banner_image_page.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProductBloc productBloc = ProductBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: Color(0xff272727),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Container(
                height: 29,
                width: 111,
                child: Image.asset('assets/images/lash_supply1.png')),
            Spacer(),
            Icon(Icons.linear_scale_outlined,
              color: AppColors.primaryColor,),
            SizedBox(width: 10,),
            Icon(Icons.favorite_border,
              color: AppColors.primaryColor,),
            SizedBox(width: 10,),
            Icon(Icons.text_snippet_outlined,
              color: AppColors.primaryColor,)
          ],
        ),
      ),
      body: BlocProvider<ProductBloc>(
        create: (_) => productBloc..add(LoadProductEvent()),

        child: BlocListener<ProductBloc,ProductState>(
          listener: (context, state) {
            if (state is ProductSuccess){
            }
          },
          child: BlocBuilder<ProductBloc, ProductState>(
            builder: (BuildContext context, state) {
              if(state is ProductInitial){
                return Center(child: CircularProgressIndicator());
              }
              if(state is ProductLoading){
                return Center(child: CircularProgressIndicator());
              }
              if(state is ProductSuccess){
                return homeInitial(context, modal: state.modal,bannerModel: state.bannermodel);
              }
              return Container();
            },),
        ),
      ),
    );
  }
}
Widget homeInitial(context, {required List<ProductDetails>? modal, required List<BannerImage>?bannerModel}){
  return Column(
    children: [
      /*searchWidget(context)*/
      /*SearchProduct(name: modal![0].name!),*/
      SizedBox(height: 7),
      imageWidget(context, model: bannerModel),
      SizedBox(height: 5),
      productWidget(context, modal: modal),
    ],
  );
}


