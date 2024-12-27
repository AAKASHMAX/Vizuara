import '/backend/backend.dart';
import '/component/side_menu/side_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'class9th_topics_widget.dart' show Class9thTopicsWidget;
import 'package:flutter/material.dart';

class Class9thTopicsModel extends FlutterFlowModel<Class9thTopicsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideMenu component.
  late SideMenuModel sideMenuModel;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  List<Topic9thRecord>? listViewPreviousSnapshot1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  List<Topic9thRecord>? listViewPreviousSnapshot2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  List<Topic9thRecord>? listViewPreviousSnapshot3;

  @override
  void initState(BuildContext context) {
    sideMenuModel = createModel(context, () => SideMenuModel());
  }

  @override
  void dispose() {
    sideMenuModel.dispose();
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    tabBarController3?.dispose();
  }
}
