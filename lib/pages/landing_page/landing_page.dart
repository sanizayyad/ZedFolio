import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'widget/widget.dart';
import 'package:my_resume/config/config.dart';


final itemControllerProvider = ChangeNotifierProvider<ItemModel>((ref) {
  return ItemModel();
});

class ItemModel extends ChangeNotifier{
   ItemScrollController itemScrollController = ItemScrollController();

    void scroll(int i) {
       itemScrollController.scrollTo(index: i, duration: Duration(seconds: 1));
       notifyListeners();
    }

}


class LandingPage extends ConsumerWidget {
  final ScrollController _scrollController =  ScrollController(initialScrollOffset: 25.0);
  final ItemPositionsListener _itemPositionListener = ItemPositionsListener.create();

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return AboutView();
    } else if (i == 2) {
      return SkillsView();
    } else if (i == 3) {
      return ProjectView();
    } else if (i == 4) {
      return ContactView();
    } else if (i == 5) {
      return SizedBox(
        height: 40.0,
      );
    }  else if (i == 6) {
      return Footer();
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final screenSize = MediaQuery.of(context).size;
    final itemController = watch(itemControllerProvider);

    return Scaffold(
      backgroundColor: Palette.bgColor,
      extendBodyBehindAppBar: true,
      appBar:  screenSize.width > appBarSwitch
          ? PreferredSize(
        preferredSize: Size(screenSize.width, 70.0),
        child: AppBarTabDesktop(),)
        :  AppBar(
        backgroundColor: Palette.secondaryColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: screenSize.width < appBarSwitch ? DrawerMobile() : null,
      body: Container(
        // height:screenSize.height,
        width: screenSize.width,
        child: RawScrollbar(
          controller: _scrollController,
          thumbColor: Palette.primaryColor,
          thickness: 5.0,
          child: ScrollablePositionedList.builder(
            itemScrollController: itemController.itemScrollController,
            itemPositionsListener: _itemPositionListener,
            itemCount: 8,
            itemBuilder: (context, index) {
              return sectionWidget(index);
            },
          ),
        ),
      ),
    );
  }
}
