import 'package:snapchat_clone/product/Models/user.dart';

import '../../core/defaultPhotos.dart';

List<User> users = [
  User(nickName: "Eren Birk", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 15, stPoint: 105),
  User(nickName: "Elon Musk", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 34, stPoint: 46),
  User(nickName: "Yusuf", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 22, stPoint: 18),
  User(nickName: "Esra", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 26, stPoint: 14),
  User(nickName: "Mehmet", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 3, stPoint: 8),
  User(nickName: "Emily", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 4, stPoint: 138),
  User(nickName: "Taha Bike", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 55, stPoint: 68),
  User(nickName: "Irmak", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 35, stPoint: 13),
  User(nickName: "Mehmet", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  User(nickName: "Şeyma", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  User(nickName: "Tarik", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  User(nickName: "Esra", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  User(nickName: "Melek", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  User(nickName: "Murat", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  User(nickName: "Ahmet", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  User(nickName: "Mehmet", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  User(nickName: "Şeyma", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  User(nickName: "Tarik", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  User(nickName: "Esra", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  User(nickName: "Melek", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  User(nickName: "Murat", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
];


class UserOperations { 

  static List<User> getAllUser(){
    return users;
  }
  
}

