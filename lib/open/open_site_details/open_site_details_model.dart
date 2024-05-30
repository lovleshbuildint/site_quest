import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'open_site_details_widget.dart' show OpenSiteDetailsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpenSiteDetailsModel extends FlutterFlowModel<OpenSiteDetailsWidget> {
  ///  Local state fields for this page.

  int? idevicetypes;

  int? isitetypes;

  int? iprojecttypes;

  int? ilisttypes;

  int? ishoptypes;

  int? icashdevicetypes;

  int? ichasdevicemovementcategorys;

  int? isitevisitedbys;

  int? isitevisitedbynames;

  int? isecondsitevisitedbynames;

  int? isiteddeps;

  int? iTisTypes;

  int? iduplicate;

  int? oNOFsite;

  String? statefordsitopen;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CustomerBank widget.
  String? customerBankValue;
  FormFieldController<String>? customerBankValueController;
  // State field(s) for Sitetype widget.
  String? sitetypeValue;
  FormFieldController<String>? sitetypeValueController;
  // State field(s) for CashDevice widget.
  String? cashDeviceValue;
  FormFieldController<String>? cashDeviceValueController;
  // State field(s) for CashDeviceMovement widget.
  String? cashDeviceMovementValue;
  FormFieldController<String>? cashDeviceMovementValueController;
  // State field(s) for TisType widget.
  String? tisTypeValue;
  FormFieldController<String>? tisTypeValueController;
  // State field(s) for ProjectType widget.
  String? projectTypeValue;
  FormFieldController<String>? projectTypeValueController;
  // State field(s) for BusinessType widget.
  String? businessTypeValue;
  FormFieldController<String>? businessTypeValueController;
  // State field(s) for StrategyDropDwon widget.
  String? strategyDropDwonValue;
  FormFieldController<String>? strategyDropDwonValueController;
  // State field(s) for POIList widget.
  String? pOIListValue;
  FormFieldController<String>? pOIListValueController;
  // State field(s) for locationName widget.
  FocusNode? locationNameFocusNode;
  TextEditingController? locationNameTextController;
  String? Function(BuildContext, String?)? locationNameTextControllerValidator;
  // State field(s) for DistanceFromIndents widget.
  FocusNode? distanceFromIndentsFocusNode;
  TextEditingController? distanceFromIndentsTextController;
  String? Function(BuildContext, String?)?
      distanceFromIndentsTextControllerValidator;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for stateDropdown widget.
  String? stateDropdownValue;
  FormFieldController<String>? stateDropdownValueController;
  // State field(s) for City widget.
  String? cityValue;
  FormFieldController<String>? cityValueController;
  // State field(s) for District widget.
  String? districtValue;
  FormFieldController<String>? districtValueController;
  // State field(s) for Pincode widget.
  FocusNode? pincodeFocusNode;
  TextEditingController? pincodeTextController;
  String? Function(BuildContext, String?)? pincodeTextControllerValidator;
  // State field(s) for Circle widget.
  String? circleValue;
  FormFieldController<String>? circleValueController;
  // State field(s) for ATMExisting widget.
  FocusNode? aTMExistingFocusNode;
  TextEditingController? aTMExistingTextController;
  String? Function(BuildContext, String?)? aTMExistingTextControllerValidator;
  // State field(s) for LandMarks widget.
  FocusNode? landMarksFocusNode;
  TextEditingController? landMarksTextController;
  String? Function(BuildContext, String?)? landMarksTextControllerValidator;
  // State field(s) for RBICategory widget.
  String? rBICategoryValue;
  FormFieldController<String>? rBICategoryValueController;
  // State field(s) for SiteSourced widget.
  String? siteSourcedValue;
  FormFieldController<String>? siteSourcedValueController;
  // State field(s) for ONOFSite widget.
  String? oNOFSiteValue;
  FormFieldController<String>? oNOFSiteValueController;
  // State field(s) for MangerName widget.
  FocusNode? mangerNameFocusNode;
  TextEditingController? mangerNameTextController;
  String? Function(BuildContext, String?)? mangerNameTextControllerValidator;
  // State field(s) for MangerNumber widget.
  FocusNode? mangerNumberFocusNode;
  TextEditingController? mangerNumberTextController;
  String? Function(BuildContext, String?)? mangerNumberTextControllerValidator;
  // State field(s) for DuplicateSite widget.
  String? duplicateSiteValue;
  FormFieldController<String>? duplicateSiteValueController;
  // State field(s) for SiteVisitedBY widget.
  String? siteVisitedBYValue;
  FormFieldController<String>? siteVisitedBYValueController;
  // State field(s) for FirstSiteVisitedBy widget.
  String? firstSiteVisitedByValue;
  FormFieldController<String>? firstSiteVisitedByValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (DOADetailsstepFIRSTworddoc)] action in Button widget.
  ApiCallResponse? updateDOAdetailsfirstwordsSites;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    locationNameFocusNode?.dispose();
    locationNameTextController?.dispose();

    distanceFromIndentsFocusNode?.dispose();
    distanceFromIndentsTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    pincodeFocusNode?.dispose();
    pincodeTextController?.dispose();

    aTMExistingFocusNode?.dispose();
    aTMExistingTextController?.dispose();

    landMarksFocusNode?.dispose();
    landMarksTextController?.dispose();

    mangerNameFocusNode?.dispose();
    mangerNameTextController?.dispose();

    mangerNumberFocusNode?.dispose();
    mangerNumberTextController?.dispose();
  }
}
