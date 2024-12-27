import '/component/side_menu/side_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'class10th_notes_widget.dart' show Class10thNotesWidget;
import 'package:flutter/material.dart';

class Class10thNotesModel extends FlutterFlowModel<Class10thNotesWidget> {
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
