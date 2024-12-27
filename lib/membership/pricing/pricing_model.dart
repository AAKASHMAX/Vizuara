import '/flutter_flow/flutter_flow_util.dart';
import 'pricing_widget.dart' show PricingWidget;
import 'package:flutter/material.dart';

class PricingModel extends FlutterFlowModel<PricingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Razorpay Payment] action in Button widget.
  String? razorpayPaymentId;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
