import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_post_widget.dart' show AddPostWidget;
import 'package:flutter/material.dart';

class AddPostModel extends FlutterFlowModel<AddPostWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for AdressField widget.
  FocusNode? adressFieldFocusNode;
  TextEditingController? adressFieldTextController;
  String? Function(BuildContext, String?)? adressFieldTextControllerValidator;
  // State field(s) for priceField widget.
  FocusNode? priceFieldFocusNode;
  TextEditingController? priceFieldTextController;
  String? Function(BuildContext, String?)? priceFieldTextControllerValidator;
  // State field(s) for phonenumberField widget.
  FocusNode? phonenumberFieldFocusNode;
  TextEditingController? phonenumberFieldTextController;
  String? Function(BuildContext, String?)?
      phonenumberFieldTextControllerValidator;
  // State field(s) for DescriptionField widget.
  FocusNode? descriptionFieldFocusNode;
  TextEditingController? descriptionFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionFieldTextControllerValidator;
  // State field(s) for AreaField widget.
  FocusNode? areaFieldFocusNode;
  TextEditingController? areaFieldTextController;
  String? Function(BuildContext, String?)? areaFieldTextControllerValidator;
  // State field(s) for DownPyment widget.
  FocusNode? downPymentFocusNode;
  TextEditingController? downPymentTextController;
  String? Function(BuildContext, String?)? downPymentTextControllerValidator;
  // State field(s) for SaleOrRent widget.
  FormFieldController<List<String>>? saleOrRentValueController;
  String? get saleOrRentValue => saleOrRentValueController?.value?.firstOrNull;
  set saleOrRentValue(String? val) =>
      saleOrRentValueController?.value = val != null ? [val] : [];
  // State field(s) for LeasePeriod widget.
  FocusNode? leasePeriodFocusNode;
  TextEditingController? leasePeriodTextController;
  String? Function(BuildContext, String?)? leasePeriodTextControllerValidator;
  // State field(s) for PaymentType widget.
  FocusNode? paymentTypeFocusNode;
  TextEditingController? paymentTypeTextController;
  String? Function(BuildContext, String?)? paymentTypeTextControllerValidator;
  // State field(s) for Typech widget.
  FormFieldController<List<String>>? typechValueController;
  String? get typechValue => typechValueController?.value?.firstOrNull;
  set typechValue(String? val) =>
      typechValueController?.value = val != null ? [val] : [];
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    adressFieldFocusNode?.dispose();
    adressFieldTextController?.dispose();

    priceFieldFocusNode?.dispose();
    priceFieldTextController?.dispose();

    phonenumberFieldFocusNode?.dispose();
    phonenumberFieldTextController?.dispose();

    descriptionFieldFocusNode?.dispose();
    descriptionFieldTextController?.dispose();

    areaFieldFocusNode?.dispose();
    areaFieldTextController?.dispose();

    downPymentFocusNode?.dispose();
    downPymentTextController?.dispose();

    leasePeriodFocusNode?.dispose();
    leasePeriodTextController?.dispose();

    paymentTypeFocusNode?.dispose();
    paymentTypeTextController?.dispose();
  }
}
