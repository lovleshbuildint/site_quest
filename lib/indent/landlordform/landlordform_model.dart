import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'landlordform_widget.dart' show LandlordformWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LandlordformModel extends FlutterFlowModel<LandlordformWidget> {
  ///  Local state fields for this component.

  int? istate;

  int? iDistrict;

  int? iCity;

  int? ilandlordbankname;

  String? statefordistland;

  String? trystate;

  String? district;

  String? trydistrict;

  String? trycity;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for LandoardName widget.
  FocusNode? landoardNameFocusNode;
  TextEditingController? landoardNameTextController;
  String? Function(BuildContext, String?)? landoardNameTextControllerValidator;
  // State field(s) for percent widget.
  FocusNode? percentFocusNode;
  TextEditingController? percentTextController;
  String? Function(BuildContext, String?)? percentTextControllerValidator;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for District widget.
  String? districtValue;
  FormFieldController<String>? districtValueController;
  // State field(s) for State widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for City widget.
  String? cityValue;
  FormFieldController<String>? cityValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for Pincode widget.
  FocusNode? pincodeFocusNode;
  TextEditingController? pincodeTextController;
  String? Function(BuildContext, String?)? pincodeTextControllerValidator;
  // State field(s) for Landmarks widget.
  FocusNode? landmarksFocusNode;
  TextEditingController? landmarksTextController;
  String? Function(BuildContext, String?)? landmarksTextControllerValidator;
  // State field(s) for ContactName widget.
  FocusNode? contactNameFocusNode;
  TextEditingController? contactNameTextController;
  String? Function(BuildContext, String?)? contactNameTextControllerValidator;
  // State field(s) for Alernativenumber widget.
  FocusNode? alernativenumberFocusNode;
  TextEditingController? alernativenumberTextController;
  String? Function(BuildContext, String?)?
      alernativenumberTextControllerValidator;
  // State field(s) for Emailid widget.
  FocusNode? emailidFocusNode;
  TextEditingController? emailidTextController;
  String? Function(BuildContext, String?)? emailidTextControllerValidator;
  // State field(s) for Fax widget.
  FocusNode? faxFocusNode;
  TextEditingController? faxTextController;
  String? Function(BuildContext, String?)? faxTextControllerValidator;
  // State field(s) for LandlordBankName widget.
  String? landlordBankNameValue;
  FormFieldController<String>? landlordBankNameValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for chequefield widget.
  FocusNode? chequefieldFocusNode;
  TextEditingController? chequefieldTextController;
  String? Function(BuildContext, String?)? chequefieldTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for LLchequefield widget.
  FocusNode? lLchequefieldFocusNode;
  TextEditingController? lLchequefieldTextController;
  String? Function(BuildContext, String?)? lLchequefieldTextControllerValidator;
  // State field(s) for BankAccountNumber widget.
  FocusNode? bankAccountNumberFocusNode;
  TextEditingController? bankAccountNumberTextController;
  String? Function(BuildContext, String?)?
      bankAccountNumberTextControllerValidator;
  // State field(s) for BankBranch widget.
  FocusNode? bankBranchFocusNode;
  TextEditingController? bankBranchTextController;
  String? Function(BuildContext, String?)? bankBranchTextControllerValidator;
  // State field(s) for IFSCCode widget.
  FocusNode? iFSCCodeFocusNode;
  TextEditingController? iFSCCodeTextController;
  String? Function(BuildContext, String?)? iFSCCodeTextControllerValidator;
  // State field(s) for PanNumber widget.
  FocusNode? panNumberFocusNode;
  TextEditingController? panNumberTextController;
  String? Function(BuildContext, String?)? panNumberTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for AAdharcardNo widget.
  FocusNode? aAdharcardNoFocusNode;
  TextEditingController? aAdharcardNoTextController;
  String? Function(BuildContext, String?)? aAdharcardNoTextControllerValidator;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for SiteReferralName widget.
  FocusNode? siteReferralNameFocusNode;
  TextEditingController? siteReferralNameTextController;
  String? Function(BuildContext, String?)?
      siteReferralNameTextControllerValidator;
  // State field(s) for siteReferralNo widget.
  FocusNode? siteReferralNoFocusNode;
  TextEditingController? siteReferralNoTextController;
  String? Function(BuildContext, String?)?
      siteReferralNoTextControllerValidator;
  String? _siteReferralNoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Email invalid';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    siteReferralNoTextControllerValidator =
        _siteReferralNoTextControllerValidator;
  }

  @override
  void dispose() {
    landoardNameFocusNode?.dispose();
    landoardNameTextController?.dispose();

    percentFocusNode?.dispose();
    percentTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();

    pincodeFocusNode?.dispose();
    pincodeTextController?.dispose();

    landmarksFocusNode?.dispose();
    landmarksTextController?.dispose();

    contactNameFocusNode?.dispose();
    contactNameTextController?.dispose();

    alernativenumberFocusNode?.dispose();
    alernativenumberTextController?.dispose();

    emailidFocusNode?.dispose();
    emailidTextController?.dispose();

    faxFocusNode?.dispose();
    faxTextController?.dispose();

    chequefieldFocusNode?.dispose();
    chequefieldTextController?.dispose();

    lLchequefieldFocusNode?.dispose();
    lLchequefieldTextController?.dispose();

    bankAccountNumberFocusNode?.dispose();
    bankAccountNumberTextController?.dispose();

    bankBranchFocusNode?.dispose();
    bankBranchTextController?.dispose();

    iFSCCodeFocusNode?.dispose();
    iFSCCodeTextController?.dispose();

    panNumberFocusNode?.dispose();
    panNumberTextController?.dispose();

    aAdharcardNoFocusNode?.dispose();
    aAdharcardNoTextController?.dispose();

    siteReferralNameFocusNode?.dispose();
    siteReferralNameTextController?.dispose();

    siteReferralNoFocusNode?.dispose();
    siteReferralNoTextController?.dispose();
  }
}
