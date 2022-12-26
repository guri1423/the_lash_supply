part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();
}

class ProductInitial extends ProductState {
  @override
  List<Object> get props => [];
}

class ProductLoading extends ProductState {
  @override
  List<Object> get props => [];
}
class ProductSuccess extends ProductState {
  List <ProductDetails> modal;
  List<BannerImage> bannermodel;
 ProductSuccess(
     this.modal,this.bannermodel
     );
  @override
  List<Object> get props => [modal];
}
class ProductFail extends ProductState {
  @override
  List<Object> get props => [];
}
