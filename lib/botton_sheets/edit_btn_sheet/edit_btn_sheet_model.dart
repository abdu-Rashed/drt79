import '/flutter_flow/flutter_flow_util.dart';
import 'edit_btn_sheet_widget.dart' show EditBtnSheetWidget;
import 'package:flutter/material.dart';

class EditBtnSheetModel extends FlutterFlowModel<EditBtnSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
