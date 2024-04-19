import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'commercial_advance_widget.dart' show CommercialAdvanceWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommercialAdvanceModel extends FlutterFlowModel<CommercialAdvanceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for advanceRentAmount widget.
  FocusNode? advanceRentAmountFocusNode;
  TextEditingController? advanceRentAmountTextController;
  String? Function(BuildContext, String?)?
      advanceRentAmountTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for advanceRentDD1 widget.
  String? advanceRentDD1Value;
  FormFieldController<String>? advanceRentDD1ValueController;
  // State field(s) for TotalAdvanceAmount widget.
  FocusNode? totalAdvanceAmountFocusNode;
  TextEditingController? totalAdvanceAmountTextController;
  String? Function(BuildContext, String?)?
      totalAdvanceAmountTextControllerValidator;
  // State field(s) for intialAdvance widget.
  String? intialAdvanceValue;
  FormFieldController<String>? intialAdvanceValueController;
  // State field(s) for AdvanceAmount widget.
  FocusNode? advanceAmountFocusNode;
  TextEditingController? advanceAmountTextController;
  String? Function(BuildContext, String?)? advanceAmountTextControllerValidator;
  // State field(s) for BalanceAmount widget.
  FocusNode? balanceAmountFocusNode;
  TextEditingController? balanceAmountTextController;
  String? Function(BuildContext, String?)? balanceAmountTextControllerValidator;
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
  TextEditingController? securityRentTextController;
  String? Function(BuildContext, String?)? securityRentTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for TotalSecurityDeposit widget.
  FocusNode? totalSecurityDepositFocusNode;
  TextEditingController? totalSecurityDepositTextController;
  String? Function(BuildContext, String?)?
      totalSecurityDepositTextControllerValidator;
  // State field(s) for DropDownSDI widget.
  String? dropDownSDIValue;
  FormFieldController<String>? dropDownSDIValueController;
  // State field(s) for AdvanceSDAmount widget.
  FocusNode? advanceSDAmountFocusNode;
  TextEditingController? advanceSDAmountTextController;
  String? Function(BuildContext, String?)?
      advanceSDAmountTextControllerValidator;
  // State field(s) for BalanceSDAmount widget.
  FocusNode? balanceSDAmountFocusNode;
  TextEditingController? balanceSDAmountTextController;
  String? Function(BuildContext, String?)?
      balanceSDAmountTextControllerValidator;
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    advanceRentAmountFocusNode?.dispose();
    advanceRentAmountTextController?.dispose();

    totalAdvanceAmountFocusNode?.dispose();
    totalAdvanceAmountTextController?.dispose();

    advanceAmountFocusNode?.dispose();
    advanceAmountTextController?.dispose();

    balanceAmountFocusNode?.dispose();
    balanceAmountTextController?.dispose();

    securityRentFocusNode?.dispose();
    securityRentTextController?.dispose();

    totalSecurityDepositFocusNode?.dispose();
    totalSecurityDepositTextController?.dispose();

    advanceSDAmountFocusNode?.dispose();
    advanceSDAmountTextController?.dispose();

    balanceSDAmountFocusNode?.dispose();
    balanceSDAmountTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
  String? get radioButtonValue3 => radioButtonValueController3?.value;
}
