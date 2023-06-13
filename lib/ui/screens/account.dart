import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/accountuser_cubit.dart';
import '../../models/accountusers_model.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AccountUsersCubit, List<AccountUser>>(
      builder: ((BuildContext context, List<AccountUser> accountusers) {
        return ListView.separated(
            itemCount: accountusers.length,
            itemBuilder: ((BuildContext context, int index) {
              final AccountUser accountUser = accountusers[index];
              return ListTile(
                leading: const Icon(Icons.account_box_outlined),
                title: Text(accountUser.name),
                subtitle: Text(accountUser.prenom),
              );
            }
            ), separatorBuilder: (BuildContext context, int index) { 
              return const Divider(height: 0);
             },);
      }),
    ));
  }
}
