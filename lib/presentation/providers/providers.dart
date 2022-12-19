import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../entities/user.dart';
import '../../repositories/user_repository.dart';

var userRepositoryProvider = Provider(
  (ref) => UserRepository(),
);

var userProvider = FutureProvider<User?>(
  (ref) => ref.watch(userRepositoryProvider).getUser(2),
);
