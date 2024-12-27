import '/component/side_menu/side_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'memebership_widget.dart' show MemebershipWidget;
import 'package:flutter/material.dart';

class MemebershipModel extends FlutterFlowModel<MemebershipWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // Stores action output result for [Razorpay Payment] action in Button widget.
  String? razorpayPaymentId;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // Model for SideMenu component.
  late SideMenuModel sideMenuModel;
  // Stores action output result for [Razorpay Payment] action in Button widget.
  String? razorpayPaymentId2;

  @override
  void initState(BuildContext context) {
    sideMenuModel = createModel(context, () => SideMenuModel());
  }

  @override
  void dispose() {
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    sideMenuModel.dispose();
  }
}
