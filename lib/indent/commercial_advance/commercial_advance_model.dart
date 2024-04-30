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

  // State field(s) for rentaltype widget.
  FormFieldController<String>? rentaltypeValueController;
  // State field(s) for advanceRentAmountRENT widget.
  FocusNode? advanceRentAmountRENTFocusNode;
  TextEditingController? advanceRentAmountRENTTextController;
  String? Function(BuildContext, String?)?
      advanceRentAmountRENTTextControllerValidator;
  // State field(s) for RentFreePeriod widget.
  String? rentFreePeriodValue;
  FormFieldController<String>? rentFreePeriodValueController;
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
  // State field(s) for RentEscaltion widget.
  String? rentEscaltionValue;
  FormFieldController<String>? rentEscaltionValueController;
  // State field(s) for EscalationPeriod widget.
  String? escalationPeriodValue1;
  FormFieldController<String>? escalationPeriodValueController1;
  // State field(s) for AgreementPeriods widget.
  String? agreementPeriodsValue1;
  FormFieldController<String>? agreementPeriodsValueController1;
  // State field(s) for E-billingRent widget.
  FormFieldController<String>? eBillingRentValueController;
  // State field(s) for securityRent-RentPerMonth widget.
  FocusNode? securityRentRentPerMonthFocusNode;
  TextEditingController? securityRentRentPerMonthTextController;
  String? Function(BuildContext, String?)?
      securityRentRentPerMonthTextControllerValidator;
  // State field(s) for RentFreePeriods widget.
  String? rentFreePeriodsValue;
  FormFieldController<String>? rentFreePeriodsValueController;
  // State field(s) for SecurityDeposit widget.
  String? securityDepositValue;
  FormFieldController<String>? securityDepositValueController;
  // State field(s) for TotalSecurityDeposit widget.
  FocusNode? totalSecurityDepositFocusNode;
  TextEditingController? totalSecurityDepositTextController;
  String? Function(BuildContext, String?)?
      totalSecurityDepositTextControllerValidator;
  // State field(s) for SDI-IntialAdvance widget.
  String? sDIIntialAdvanceValue;
  FormFieldController<String>? sDIIntialAdvanceValueController;
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
  // State field(s) for RentEscalation-per widget.
  String? rentEscalationPerValue;
  FormFieldController<String>? rentEscalationPerValueController;
  // State field(s) for EscalationPeriod widget.
  String? escalationPeriodValue2;
  FormFieldController<String>? escalationPeriodValueController2;
  // State field(s) for AgreementPeriods widget.
  String? agreementPeriodsValue2;
  FormFieldController<String>? agreementPeriodsValueController2;
  // State field(s) for E-BillIncludingRent widget.
  FormFieldController<String>? eBillIncludingRentValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    advanceRentAmountRENTFocusNode?.dispose();
    advanceRentAmountRENTTextController?.dispose();

    totalAdvanceAmountFocusNode?.dispose();
    totalAdvanceAmountTextController?.dispose();

    advanceAmountFocusNode?.dispose();
    advanceAmountTextController?.dispose();

    balanceAmountFocusNode?.dispose();
    balanceAmountTextController?.dispose();

    securityRentRentPerMonthFocusNode?.dispose();
    securityRentRentPerMonthTextController?.dispose();

    totalSecurityDepositFocusNode?.dispose();
    totalSecurityDepositTextController?.dispose();

    advanceSDAmountFocusNode?.dispose();
    advanceSDAmountTextController?.dispose();

    balanceSDAmountFocusNode?.dispose();
    balanceSDAmountTextController?.dispose();
  }

  /// Additional helper methods.
  String? get rentaltypeValue => rentaltypeValueController?.value;
  String? get eBillingRentValue => eBillingRentValueController?.value;
  String? get eBillIncludingRentValue =>
      eBillIncludingRentValueController?.value;
}
