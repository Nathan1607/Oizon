import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import '../models/accountusers_model.dart';

class AccountUsersRepository {
  Future<void> saveAccountUser(List<AccountUser> accountsUser) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> listJson = [];

    for (final AccountUser accountUser in accountsUser) {
      listJson.add(jsonEncode(accountUser.toJson()));
    }
    prefs.setStringList('accounts', listJson);
  }

  Future<List<AccountUser>> loadAccountUsers() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> listJson = prefs.getStringList('accounts') ?? [];
    final List<AccountUser> accountsUser = [];

    for (String json in listJson) {
      final Map<String, dynamic> accountUserMap = jsonDecode(json);
      final AccountUser accountUser = AccountUser.fromJson(accountUserMap);
      accountsUser.add(accountUser);
    }
    return accountsUser;
  }
}
