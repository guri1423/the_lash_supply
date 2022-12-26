part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();
}

class CategoryInitial extends CategoryState {
  @override
  List<Object> get props => [];
}

class CategorySuccess extends CategoryState {
  List <CategoryModal> modal;
  CategorySuccess(
      this.modal
      );
  @override
  List<Object> get props => [modal];
}

class CategoryFail extends CategoryState {
  @override
  List<Object> get props => [];
}
