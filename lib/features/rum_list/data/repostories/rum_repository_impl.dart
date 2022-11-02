import 'package:dartz/dartz.dart';

import 'package:flutter_task/core/error/failures.dart';

import 'package:flutter_task/features/rum_list/domain/entities/rum_list.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/rum_repository.dart';
import '../data_source/rum_list_remote_data_source.dart';
import '../models/rum_model.dart';

class RumRepositoryImpl extends RumRepository {
  final NetworkInfo networkInfo;
  RumListDataSource remoteDataSource;

  RumRepositoryImpl(
      {required this.networkInfo, required this.remoteDataSource});

  @override
  Future<Either<Failure, RumModel>> getRumList() async {
    // TODO: implement getRumList
    if (await networkInfo.isConnected) {
      try {
        final remoteTrivia = await remoteDataSource.getRumList();
        return Right(remoteTrivia);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final remoteTrivia = await remoteDataSource.getRumList();
        return Right(remoteTrivia);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
}
