import 'package:four20society/constants/apis_path/api_config_string.dart';
import 'package:four20society/feature/category/model/category_model.dart';
import 'package:four20society/utils/local_storage/local_storage.dart';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../../global_widget/custom_concenrate_product_model.dart';
import '../../../global_widget/custom_home_products_model.dart';
import '../../../global_widget/custom_todays_deal_product_cart_model.dart';

class ApiProvider {
  final Dio _dio = Dio();
  LocalStorageService localStorageService = LocalStorageService();







  Future<CategoryModel> getAllCategory() async {
    Response response;
    String? authToken;

    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
     print("token $token");
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token"
      };
      response = await _dio.post(ApiEndPoints.category);
      if (kDebugMode) {
        log('--------Response getCategory : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? CategoryModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return CategoryModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }


  //my code trying to make api calling for featured_product Api


  Future<FeaturedProducts> getAllFeaturedProduct() async {
    Response response;
    String? authToken;

    String token = await localStorageService
        .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    print("token $token");
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token"
      };
      response = await _dio.post(ApiEndPoints.featuredProduct);
      if (kDebugMode) {
        log('--------Response getFeaturesProduct : $response');
        print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? FeaturedProducts.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return FeaturedProducts.withError(
          "You are offline. Please check your internet connection.");
    }
  }

//  apiProvider for today's deal api

  Future<TodaysDealsModel> getAllTodayDealProduct() async {
    Response response;
    String? authToken;

    String token = await localStorageService
        .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    print("token $token");
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token"
      };
      response = await _dio.post(ApiEndPoints.todayDeals);
      if (kDebugMode) {
        log('--------Response getTodayProducts : $response');
         print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? TodaysDealsModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return TodaysDealsModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }


  // api provider for product-by-category api
  Future<ProductCategoryDealsModel> getAllProductByCategory() async {
    Response response;
    String? authToken;

    String token = await localStorageService
        .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    print("token $token");
    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        "Authorization": "Bearer $token"
      };
      response = await _dio.post(ApiEndPoints.productCategory);
      if (kDebugMode) {
        log('--------Response getTodayProducts : $response');
         print("hhihifgishgsfhgfhsdigdjgod");
      }
      return response.statusCode == 200
          ? ProductCategoryDealsModel.fromJson(response.data)
          : throw Exception('Something Went Wrong');
    } catch (error, stacktrace) {
      if (kDebugMode) {
        log('$error');
      }
      if (kDebugMode) {
        log("Exception occurred: $error stackTrace: $stacktrace");
      }
      return ProductCategoryDealsModel.withError(
          "You are offline. Please check your internet connection.");
    }
  }
}
