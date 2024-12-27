import '/component/side_menu/side_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'class10th_quiz_widget.dart' show Class10thQuizWidget;
import 'package:flutter/material.dart';

class Class10thQuizModel extends FlutterFlowModel<Class10thQuizWidget> {
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
