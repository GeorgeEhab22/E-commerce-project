part of 'getProducts_cubit.dart';

@immutable
sealed class GetProductsState {}

final class GetProductsInitial extends GetProductsState {}

final class GetProductsLoading extends GetProductsState {}

final class GetProductsFailure extends GetProductsState {
  final String error;

  GetProductsFailure({required this.error});
}

final class GetProductsSuccess extends GetProductsState {
<<<<<<< HEAD
  final List<ProductModel> productsList;

  GetProductsSuccess({required this.productsList});
}
=======
  final List<Products> productsList;

  GetProductsSuccess({required this.productsList});
}
>>>>>>> e763aa1457bfd7182f6d678d543f79ef13ce4d16
