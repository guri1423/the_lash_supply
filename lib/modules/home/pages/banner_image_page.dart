import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/product_bloc/banner_bloc.dart';
import '../model/bannerimage.dart';
  final BannerBloc bannerBloc = BannerBloc();
  @override
  Widget imagesWidget(context, {required List<BannerImage>? model}){
    return BlocProvider<BannerBloc>(
        create: (_) => bannerBloc..add(LoadBannerEvent()),

        child: BlocListener<BannerBloc,BannerState>(
          listener: (context, state) {
            if (state is BannerSuccess){
            }
          },
          child: BlocBuilder<BannerBloc, BannerState>(
            builder: (BuildContext context, state) {
              if(state is BannerInitial){
                return Center(child: CircularProgressIndicator());
              }
              if(state is BannerLoading){
                return Center(child: CircularProgressIndicator());
              }
              if(state is BannerSuccess){
                return imagesWidget(context, model: state.model,);
              }
              return SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.27,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: CarouselSlider(
                  options: CarouselOptions(height: 400.0, autoPlay: true, reverse: true),
                  items: [0, 1, 2].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            height: 180,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.network(model![i].filename),
                        );
                      },
                    );
                  }).toList(),
                ),
              );
            },),
        ),
      );
  }
/*Widget homeInitial(context, {required List<BannerImage>? model}){
  return SizedBox(
    height: MediaQuery
        .of(context)
        .size
        .height * 0.27,
    width: MediaQuery
        .of(context)
        .size
        .width,
    child: CarouselSlider(
      options: CarouselOptions(height: 400.0, autoPlay: true, reverse: true),
      items: [0, 1, 2].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              height: 180,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.network(model![i].filename),
              *//* child: Image.network(modal![i].filename),*//*
              *//*child: Image.network("http://3.114.92.202:4003/uploads/${modal?[i].filename}"),*//*
            );
          },
        );
      }).toList(),
    ),
  );
}*/
