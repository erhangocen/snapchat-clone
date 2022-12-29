import 'package:snapchat_clone/product/Models/user.dart';

class Friend extends User{
  Friend({required super.nickName, required super.imagePath, required super.lastSeenMinute, required this.stPoint});

  final int stPoint;
}