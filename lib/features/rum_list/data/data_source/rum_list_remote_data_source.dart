import 'dart:convert';

import '../../../../core/error/exception.dart';
import '../models/rum_model.dart';
import 'package:dio/dio.dart';

abstract class RumListDataSource {
  Future<RumModel> getRumList();
}

class RumListDataSourceImpl implements RumListDataSource {
  var dio = Dio();

  RumListDataSourceImpl({required this.dio});

  @override
  Future<RumModel> getRumList() async {
    final response = await dio.get(
      'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=rum',
    );
    if (response.statusCode == 200) {
      return RumModel.fromJson(json.decode(response.data));
    } else {
      throw ServerException('Server issue');
    }
    throw UnimplementedError();
  }
}
