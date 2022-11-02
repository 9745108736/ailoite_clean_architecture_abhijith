import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

abstract class UseCase<Type,Params>{
  Future<Either<Failure,Type>> call();
}

class NoParams extends Equatable {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}