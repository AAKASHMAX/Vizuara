import '/component/side_menu/side_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'class9th_quiz_widget.dart' show Class9thQuizWidget;
import 'package:flutter/material.dart';

class Class9thQuizModel extends FlutterFlowModel<Class9thQuizWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideMenu component.
  late SideMenuModel sideMenuModel;

  @override
  void initState(BuildContext context) {
    sideMenuModel = createModel(context, () => SideMenuModel());
  }

  @override
  void dispose() {
    sideMenuModel.dispose();
  }
}
