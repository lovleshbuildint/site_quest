import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'commercial_advance_widget.dart' show CommercialAdvanceWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommercialAdvanceModel extends FlutterFlowModel<CommercialAdvanceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for advanceRentAmount widget.
  FocusNode? advanceRentAmountFocusNode;
  TextEditingController? advanceRentAmountController;
  String? Function(BuildContext, String?)? advanceRentAmountControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for advanceRentDD1 widget.
  String? advanceRentDD1Value;
  FormFieldController<String>? advanceRentDD1ValueController;
  // State field(s) for TotalAdvanceAmount widget.
  FocusNode? totalAdvanceAmountFocusNode;
  TextEditingController? totalAdvanceAmountController;
  String? Function(BuildContext, String?)?
      totalAdvanceAmountControllerValidator;
  // State field(s) for intialAdvance widget.
  String? intialAdvanceValue;
  FormFieldController<String>? intialAdvanceValueController;
  // State field(s) for AdvanceAmount widget.
  FocusNode? advanceAmountFocusNode;
  TextEditingController? advanceAmountController;
  String? Function(BuildContext, String?)? advanceAmountControllerValidator;
  // State field(s) for BalanceAmount widget.
  FocusNode? balanceAmountFocusNode;
  TextEditingController? balanceAmountController;
  String? Function(BuildContext, String?)? balanceAmountControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // State field(s) for securityRent widget.
  FocusNode? securityRentFocusNode;
  TextEditingController? securityRentController;
  String? Function(BuildContext, String?)? securityRentControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for TotalSecurityDeposit widget.
  FocusNode? totalSecurityDepositFocusNode;
  TextEditingController? totalSecurityDepositController;
  String? Function(BuildContext, String?)?
      totalSecurityDepositControllerValidator;
  // State field(s) for DropDownSDI widget.
  String? dropDownSDIValue;
  FormFieldController<String>? dropDownSDIValueController;
  // State field(s) for AdvanceSDAmount widget.
  FocusNode? advanceSDAmountFocusNode;
  TextEditingController? advanceSDAmountController;
  String? Function(BuildContext, String?)? advanceSDAmountControllerValidator;
  // State field(s) for BalanceSDAmount widget.
  FocusNode? balanceSDAmountFocusNode;
  TextEditingController? balanceSDAmountController;
  String? Function(BuildContext, String?)? balanceSDAmountControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue7;
  FormFieldController<String>? dropDownValueController7;
  // State field(s) for DropDown widget.
  String? dropDownValue8;
  FormFieldController<String>? dropDownValueController8;
  // State field(s) for DropDown widget.
  String? dropDownValue9;
  FormFieldController<String>? dropDownValueController9;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    advanceRentAmountFocusNode?.dispose();
    advanceRentAmountController?.dispose();

    totalAdvanceAmountFocusNode?.dispose();
    totalAdvanceAmountController?.dispose();

    advanceAmountFocusNode?.dispose();
    advanceAmountController?.dispose();

    balanceAmountFocusNode?.dispose();
    balanceAmountController?.dispose();

    securityRentFocusNode?.dispose();
    securityRentController?.dispose();

    totalSecurityDepositFocusNode?.dispose();
    totalSecurityDepositController?.dispose();

    advanceSDAmountFocusNode?.dispose();
    advanceSDAmountController?.dispose();

    balanceSDAmountFocusNode?.dispose();
    balanceSDAmountController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
  String? get radioButtonValue3 => radioButtonValueController3?.value;
}
