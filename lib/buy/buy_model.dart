import '/flutter_flow/flutter_flow_util.dart';
import 'buy_widget.dart' show BuyWidget;
import 'package:flutter/material.dart';

class BuyModel extends FlutterFlowModel<BuyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
