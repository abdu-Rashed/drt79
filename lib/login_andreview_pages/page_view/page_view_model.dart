import '/flutter_flow/flutter_flow_util.dart';
import 'page_view_widget.dart' show PageViewWidget;
import 'package:flutter/material.dart';

class PageViewModel extends FlutterFlowModel<PageViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
