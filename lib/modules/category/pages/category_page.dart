import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_lash_supply/core/utils/fonts.dart';
import 'package:the_lash_supply/modules/category/bloc/category_bloc/category_bloc.dart';
import 'package:the_lash_supply/modules/category/widgets/list_widget.dart';
import 'package:the_lash_supply/modules/category/widgets/text_widget.dart';

import '../../../core/utils/colors.dart';
import '../model/category_modal.dart';

class CategoryPage extends StatefulWidget {
   CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final CategoryBloc categoryBloc = CategoryBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            Icon(
              Icons.search,
              color: AppColors.primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.favorite_border,
              color: AppColors.primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.text_snippet_outlined,
              color: AppColors.primaryColor,
            )
          ],
        ),
      ),
      body: BlocProvider<CategoryBloc>(
        create: (_) => categoryBloc..add(LoadCategoryEvent()),
        child: BlocListener<CategoryBloc, CategoryState>(
          listener: (context, state) {
            if (state is CategorySuccess) {}
          },
          child: BlocBuilder<CategoryBloc, CategoryState>(
            builder: (BuildContext context, state) {
              if (state is CategoryInitial) {
                return Center(child: CircularProgressIndicator());
              }
              if (state is CategorySuccess) {
                return categoryScreen(context, modal: state.modal);
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}

Widget categoryScreen(context, {required List<CategoryModal>? modal}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: textWidget(context),
      ),
      categoryList(context, modal: modal),
    ],
  );
}
