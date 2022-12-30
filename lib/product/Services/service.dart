import 'package:snapchat_clone/product/Models/friend.dart';
import 'package:snapchat_clone/product/Models/user.dart';

import '../../core/defaultPhotos.dart';

List<Friend> friends = [
  Friend(nickName: "Elon Musk", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 15, stPoint: 105),
  Friend(nickName: "Andrew Tate", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 34, stPoint: 46),
  Friend(nickName: "Steve Jobs", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 22, stPoint: 18),
  Friend(nickName: "Bill Gates", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 26, stPoint: 14),
  Friend(nickName: "Mark Zuckerberg", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 3, stPoint: 8),
  Friend(nickName: "Nikola Tesla", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 4, stPoint: 138),
  Friend(nickName: "Vladimir Putin", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 55, stPoint: 68),
  Friend(nickName: "İlber Ortaylı", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 35, stPoint: 13),
  Friend(nickName: "Elon Musk", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 15, stPoint: 105),
  Friend(nickName: "Andrew Tate", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 34, stPoint: 46),
  Friend(nickName: "Steve Jobs", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 22, stPoint: 18),
  Friend(nickName: "Bill Gates", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 26, stPoint: 14),
  Friend(nickName: "Mark Zuckerberg", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 3, stPoint: 8),
  Friend(nickName: "Nikola Tesla", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 4, stPoint: 138),
  Friend(nickName: "Vladimir Putin", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 55, stPoint: 68),
  Friend(nickName: "İlber Ortaylı", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 35, stPoint: 13),
  
];

User currentUser = User(nickName: "Erhan", imagePath: DefaultPhotoPaths.defaultPp, lastSeenMinute: 6);


class UserOperations { 

  static List<Friend> getAllFriends(){
    return friends;
  }

  static User getCurrentUser(){
    return currentUser;
  }
  
}

