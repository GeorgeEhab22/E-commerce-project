import 'package:e_commerce/api/apiConstants.dart';
<<<<<<< HEAD
import 'package:e_commerce/models/products_model.dart';
=======
import 'package:e_commerce/api/products.dart';
>>>>>>> e763aa1457bfd7182f6d678d543f79ef13ce4d16
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import '../api/Services.dart';

part 'getProducts_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit() : super(GetProductsInitial());

  getProducts() async {
    emit(GetProductsLoading());
    try {
<<<<<<< HEAD
      List<ProductModel> products = await Services()
          .getData(path: ApiConstants.baseUrl + ApiConstants.endPoint);
=======
      List<Products> products = await Services().getData(
          path: ApiConstants.baseUrl+ApiConstants.endPoint );
>>>>>>> e763aa1457bfd7182f6d678d543f79ef13ce4d16

      emit(GetProductsSuccess(productsList: products));
    } catch (e) {
      emit(GetProductsFailure(error: e.toString()));
    }
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> e763aa1457bfd7182f6d678d543f79ef13ce4d16
