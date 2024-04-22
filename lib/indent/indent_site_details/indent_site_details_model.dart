import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'indent_site_details_widget.dart' show IndentSiteDetailsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndentSiteDetailsModel extends FlutterFlowModel<IndentSiteDetailsWidget> {
  ///  Local state fields for this page.

  int? idevicetype;

  int? isitetype;

  int? iprojecttype;

  int? itistype;

  int? ishoptype;

  int? icashdevicemov;

  int? isitevisitedby;

  int? iSiteVisitedByName;

  int? iSecondSiteVisitedByName;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for customerbank widget.
  FocusNode? customerbankFocusNode;
  TextEditingController? customerbankTextController;
  String? Function(BuildContext, String?)? customerbankTextControllerValidator;
  // State field(s) for sitetype widget.
  String? sitetypeValue;
  FormFieldController<String>? sitetypeValueController;
  // State field(s) for cashdevicetype widget.
  String? cashdevicetypeValue;
  FormFieldController<String>? cashdevicetypeValueController;
  // State field(s) for cashdevicemov widget.
  String? cashdevicemovValue;
  FormFieldController<String>? cashdevicemovValueController;
  // State field(s) for tistype widget.
  String? tistypeValue;
  FormFieldController<String>? tistypeValueController;
  // State field(s) for projecttype widget.
  String? projecttypeValue;
  FormFieldController<String>? projecttypeValueController;
  // State field(s) for businesstype widget.
  String? businesstypeValue;
  FormFieldController<String>? businesstypeValueController;
  // State field(s) for StrategyDropDwon widget.
  String? strategyDropDwonValue;
  FormFieldController<String>? strategyDropDwonValueController;
  // State field(s) for poitype widget.
  String? poitypeValue;
  FormFieldController<String>? poitypeValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for DropDown widget.
  String? dropDownValue7;
  FormFieldController<String>? dropDownValueController7;
  // State field(s) for DropDown widget.
  String? dropDownValue8;
  FormFieldController<String>? dropDownValueController8;
  // State field(s) for sitevisitedby widget.
  String? sitevisitedbyValue;
  FormFieldController<String>? sitevisitedbyValueController;
  // State field(s) for firstsitevisitedby widget.
  String? firstsitevisitedbyValue;
  FormFieldController<String>? firstsitevisitedbyValueController;
  // State field(s) for secondsitevisitedby widget.
  String? secondsitevisitedbyValue;
  FormFieldController<String>? secondsitevisitedbyValueController;
  // Stores action output result for [Backend Call - API (Update DOAdetailsfirst)] action in Button widget.
  ApiCallResponse? apiResultm1m;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    customerbankFocusNode?.dispose();
    customerbankTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();

    textFieldFocusNode4?.dispose();
    textController5?.dispose();

    textFieldFocusNode5?.dispose();
    textController6?.dispose();
  }
}
