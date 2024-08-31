import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'visitor_home_pagebin_widget.dart' show VisitorHomePagebinWidget;
import 'package:flutter/material.dart';

class VisitorHomePagebinModel
    extends FlutterFlowModel<VisitorHomePagebinWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for SaleOrRent widget.
  FormFieldController<List<String>>? saleOrRentValueController;
  String? get saleOrRentValue => saleOrRentValueController?.value?.firstOrNull;
  set saleOrRentValue(String? val) =>
      saleOrRentValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
