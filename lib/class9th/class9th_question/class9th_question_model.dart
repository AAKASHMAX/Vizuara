import '/component/side_menu/side_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'class9th_question_widget.dart' show Class9thQuestionWidget;
import 'package:flutter/material.dart';

class Class9thQuestionModel extends FlutterFlowModel<Class9thQuestionWidget> {
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
