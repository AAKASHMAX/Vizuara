import '/component/side_menu/side_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'classes_widget.dart' show ClassesWidget;
import 'package:flutter/material.dart';

class ClassesModel extends FlutterFlowModel<ClassesWidget> {
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
