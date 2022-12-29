import 'package:snapchat_clone/product/Models/friend.dart';
import 'package:snapchat_clone/product/Models/user.dart';

import '../../core/defaultPhotos.dart';

List<Friend> friends = [
  Friend(nickName: "Eren Birk", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 15, stPoint: 105),
  Friend(nickName: "Elon Musk", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 34, stPoint: 46),
  Friend(nickName: "Yusuf", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 22, stPoint: 18),
  Friend(nickName: "Esra", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 26, stPoint: 14),
  Friend(nickName: "Mehmet", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 3, stPoint: 8),
  Friend(nickName: "Emily", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 4, stPoint: 138),
  Friend(nickName: "Taha Bike", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 55, stPoint: 68),
  Friend(nickName: "Irmak", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 35, stPoint: 13),
  Friend(nickName: "Mehmet", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  Friend(nickName: "Şeyma", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  Friend(nickName: "Tarik", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  Friend(nickName: "Esra", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  Friend(nickName: "Melek", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  Friend(nickName: "Murat", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  Friend(nickName: "Ahmet", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  Friend(nickName: "Mehmet", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  Friend(nickName: "Şeyma", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  Friend(nickName: "Tarik", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  Friend(nickName: "Esra", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  Friend(nickName: "Melek", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
  Friend(nickName: "Murat", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 5, stPoint: 36),
];

User currentUser = User(nickName: "erhan", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 6);


class UserOperations { 

  static List<Friend> getAllFriends(){
    return friends;
  }

  static User getCurrentUser(){
    return currentUser;
  }
  
}

