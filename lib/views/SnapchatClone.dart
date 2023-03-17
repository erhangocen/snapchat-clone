import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:snapchat_clone/product/ProjectConsts/SectionEnums.dart';
import 'package:snapchat_clone/product/Services/service.dart';
import 'package:snapchat_clone/product/Widgets/AddFriendButton.dart';
import 'package:snapchat_clone/product/Widgets/BottomNavBar.dart';
import 'package:snapchat_clone/product/Widgets/ChatSheetData.dart';
import 'package:snapchat_clone/product/Widgets/CustomSheet.dart';
import 'package:snapchat_clone/product/Widgets/SettingsButton.dart';
import 'package:snapchat_clone/product/Widgets/StoriesSheetData.dart';
import 'package:snapchat_clone/views/CameraView.dart';
import 'package:snapchat_clone/views/DiscoverView.dart';
import 'package:snapchat_clone/views/LocationView.dart';
import 'package:snapchat_clone/views/StoriesView.dart';

import '../product/Models/user.dart';
import '../product/ProjectConsts/BottomAppBarItems.dart';
import '../product/Services/nav_bar_props.dart';
import '../product/Widgets/PpButton.dart';
import '../product/Widgets/SearchButton.dart';
import '../product/Widgets/TabBarTextButton.dart';
import 'ChatListView.dart';

class SnapChatClone extends ConsumerStatefulWidget {
  const SnapChatClone({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SnapChatCloneState();
}

class _SnapChatCloneState extends ConsumerState<SnapChatClone> with TickerProviderStateMixin, CustomSeheet {
  int index = 2;
  late User currentUser;
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: BottomAppBarItems.tabs.length, vsync: this);

    Future.delayed(Duration.zero).then((value) => ref.read(navBarPropsProvider).mainTabController = tabController);

    currentUser = UserOperations.getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    final tabController = ref.watch(navBarPropsProvider).mainTabController ?? this.tabController;

    tabController.addListener(
      () {
        setState(() {
          index = tabController.index;
        });
      },
    );

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: chatViewAppBar(currentUser),
        body: TabBarView(
          controller: tabController,
          children: const [
            LocationView(),
            ChatListView(),
            CameraView(),
            StoriesView(),
            DiscoverView(),
          ],
        ),
        bottomNavigationBar: BottomNavBar(index: index, tabController: tabController),
      ),
    );
  }

  AppBar chatViewAppBar(User user) {
    var sectionName = Sections.values.elementAt(index);

    return AppBar(
        title: Text(sectionName.name),
        leadingWidth: 150,
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            TabBarTextButton(
                textbutton: PpButton(
              user: user,
            )),
            const TabBarTextButton(textbutton: SearchButton()),
          ],
        ),
        actions: [
          sectionName==Sections.Location?
          Row(
            children: const [
              SettingsButton()
            ],
          ):const SizedBox(),
          sectionName==Sections.Chat?
          Row(
            children: [
              const AddFriendButton(),
              TabBarTextButton(
                textbutton: TextButton(
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showCustomSheet(context, const ChatSheetData());
                  },
                ),
              )
            ],
          ):const SizedBox(),
          sectionName==Sections.Camera?
          Row(
            children: [
              const AddFriendButton(),
              TabBarTextButton(
                textbutton: TextButton(
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ):const SizedBox(),
          sectionName==Sections.Stories?
          Row(
            children: [
              const AddFriendButton(),
              TabBarTextButton(
                textbutton: TextButton(
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showCustomSheet(context, const StoriesSheetData());
                  },
                ),
              )
            ],
          ):const SizedBox(),
          sectionName==Sections.Discover?
          Row(
            children: const [
              AddFriendButton()
            ],
          ):const SizedBox(),
        ]);
  }
}


