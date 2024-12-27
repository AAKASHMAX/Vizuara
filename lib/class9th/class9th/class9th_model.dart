import '/component/side_menu/side_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'class9th_widget.dart' show Class9thWidget;
import 'package:flutter/material.dart';

class Class9thModel extends FlutterFlowModel<Class9thWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // Model for SideMenu component.
  late SideMenuModel sideMenuModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  @override
  void initState(BuildContext context) {
    sideMenuModel = createModel(context, () => SideMenuModel());
  }

  @override
  void dispose() {
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    sideMenuModel.dispose();
    tabBarController3?.dispose();
  }
}
