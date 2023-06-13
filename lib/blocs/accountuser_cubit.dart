import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/accountusers_repositories.dart';

import '../models/accountusers_model.dart';

class AccountUsersCubit extends Cubit<List<AccountUser>> {
  final AccountUsersRepository accountUsersRepository;

  AccountUsersCubit(this.accountUsersRepository) : super([]);

  Future<void> loadAccountUsers() async {
    emit(await accountUsersRepository.loadAccountUsers());
  }

  void addAccountUsers(AccountUser accountUser){
    emit([...state, accountUser]);
    accountUsersRepository.saveAccountUser(state);
  }
}
