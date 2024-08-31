import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'biges_widget.dart' show BigesWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BigesModel extends FlutterFlowModel<BigesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for buildingImages widget.
  PageController? buildingImagesController;

  int get buildingImagesCurrentIndex => buildingImagesController != null &&
          buildingImagesController!.hasClients &&
          buildingImagesController!.page != null
      ? buildingImagesController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
