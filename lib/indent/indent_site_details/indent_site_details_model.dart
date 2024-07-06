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

  int? isiteddep;

  int? ideparmrnt;

  int? istrategy;

  int? istate;

  int? idistrict;

  int? iCity;

  int? iRBICategory;

  int? iCircle;

  int? iduplicatesite;

  String? duplicatestring;

  String? onofSite;

  String? statefordist;

  String? district;

  String? trycity;

  String? postResponse;

  String? trystate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for customerbank widget.
  FocusNode? customerbankFocusNode;
  TextEditingController? customerbankTextController;
  String? Function(BuildContext, String?)? customerbankTextControllerValidator;
  String? _customerbankTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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
  // State field(s) for Distancefrominindent widget.
  FocusNode? distancefrominindentFocusNode;
  TextEditingController? distancefrominindentTextController;
  String? Function(BuildContext, String?)?
      distancefrominindentTextControllerValidator;
  String? _distancefrominindentTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for SiteAddress widget.
  FocusNode? siteAddressFocusNode;
  TextEditingController? siteAddressTextController;
  String? Function(BuildContext, String?)? siteAddressTextControllerValidator;
  String? _siteAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for District widget.
  String? districtValue;
  FormFieldController<String>? districtValueController;
  // State field(s) for State widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for City widget.
  String? cityValue;
  FormFieldController<String>? cityValueController;
  // State field(s) for Pincode widget.
  FocusNode? pincodeFocusNode;
  TextEditingController? pincodeTextController;
  String? Function(BuildContext, String?)? pincodeTextControllerValidator;
  String? _pincodeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for circle widget.
  String? circleValue;
  FormFieldController<String>? circleValueController;
  // State field(s) for ATMExisiting widget.
  FocusNode? aTMExisitingFocusNode;
  TextEditingController? aTMExisitingTextController;
  String? Function(BuildContext, String?)? aTMExisitingTextControllerValidator;
  String? _aTMExisitingTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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
  // State field(s) for onofsite widget.
  String? onofsiteValue;
  FormFieldController<String>? onofsiteValueController;
  // State field(s) for MrgName widget.
  FocusNode? mrgNameFocusNode;
  TextEditingController? mrgNameTextController;
  String? Function(BuildContext, String?)? mrgNameTextControllerValidator;
  // State field(s) for MrgNo widget.
  FocusNode? mrgNoFocusNode;
  TextEditingController? mrgNoTextController;
  String? Function(BuildContext, String?)? mrgNoTextControllerValidator;
  // State field(s) for Duplicatesite widget.
  String? duplicatesiteValue;
  FormFieldController<String>? duplicatesiteValueController;
  // State field(s) for sitevisitedby widget.
  String? sitevisitedbyValue;
  FormFieldController<String>? sitevisitedbyValueController;
  // State field(s) for firstsitevisitedby widget.
  String? firstsitevisitedbyValue;
  FormFieldController<String>? firstsitevisitedbyValueController;
  // State field(s) for secondsitevisitedby widget.
  String? secondsitevisitedbyValue;
  FormFieldController<String>? secondsitevisitedbyValueController;
  // Stores action output result for [Backend Call - API (DOADetailsstepFIRSTworddoc)] action in Button widget.
  ApiCallResponse? updateDOAdetailsfirstdept;
  // Stores action output result for [Backend Call - API (DOADetailsstepFIRSTworddoc)] action in Button widget.
  ApiCallResponse? updateDOAdetailsfirst;

  @override
  void initState(BuildContext context) {
    customerbankTextControllerValidator = _customerbankTextControllerValidator;
    distancefrominindentTextControllerValidator =
        _distancefrominindentTextControllerValidator;
    siteAddressTextControllerValidator = _siteAddressTextControllerValidator;
    pincodeTextControllerValidator = _pincodeTextControllerValidator;
    aTMExisitingTextControllerValidator = _aTMExisitingTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customerbankFocusNode?.dispose();
    customerbankTextController?.dispose();

    distancefrominindentFocusNode?.dispose();
    distancefrominindentTextController?.dispose();

    siteAddressFocusNode?.dispose();
    siteAddressTextController?.dispose();

    pincodeFocusNode?.dispose();
    pincodeTextController?.dispose();

    aTMExisitingFocusNode?.dispose();
    aTMExisitingTextController?.dispose();

    landMarksFocusNode?.dispose();
    landMarksTextController?.dispose();

    mrgNameFocusNode?.dispose();
    mrgNameTextController?.dispose();

    mrgNoFocusNode?.dispose();
    mrgNoTextController?.dispose();
  }
}
