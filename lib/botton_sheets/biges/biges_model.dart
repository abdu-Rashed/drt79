import '/flutter_flow/flutter_flow_util.dart';
import 'biges_widget.dart' show BigesWidget;
import 'package:flutter/material.dart';

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
