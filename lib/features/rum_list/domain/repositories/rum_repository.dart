import 'package:dartz/dartz.dart';
import 'package:flutter_task/core/error/failures.dart';
import 'package:flutter_task/features/rum_list/domain/entities/rum_list.dart';

import '../../data/models/rum_model.dart';

abstract class RumRepository {
  Future<Either<Failure, RumModel>> getRumList();
}
