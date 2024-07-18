import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'commercial_advance_widget.dart' show CommercialAdvanceWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommercialAdvanceModel extends FlutterFlowModel<CommercialAdvanceWidget> {
  ///  Local state fields for this component.

  int? ebilling;

  int? ebillingrent;

  int? rentaltype;

  String totalSecurityDeposit = '0';

  ///  State fields for stateful widgets in this component.

  // State field(s) for rentaltype widget.
  FormFieldController<String>? rentaltypeValueController;
  // State field(s) for advanceRentAmountRENT widget.
  FocusNode? advanceRentAmountRENTFocusNode;
  TextEditingController? advanceRentAmountRENTTextController;
  String? Function(BuildContext, String?)?
      advanceRentAmountRENTTextControllerValidator;
  // State field(s) for RentFreePeriod-Advance widget.
  String? rentFreePeriodAdvanceValue;
  FormFieldController<String>? rentFreePeriodAdvanceValueController;
  // State field(s) for advanceRentMonth---RentOrSecurityMonths widget.
  String? advanceRentMonthRentOrSecurityMonthsValue;
  FormFieldController<String>?
      advanceRentMonthRentOrSecurityMonthsValueController;
  // State field(s) for TotalAdvanceAmount--RentOrSecurityMonthsPaid widget.
  FocusNode? totalAdvanceAmountRentOrSecurityMonthsPaidFocusNode;
  TextEditingController?
      totalAdvanceAmountRentOrSecurityMonthsPaidTextController;
  String? Function(BuildContext, String?)?
      totalAdvanceAmountRentOrSecurityMonthsPaidTextControllerValidator;
  // State field(s) for intialAdvance widget.
  String? intialAdvanceValue;
  FormFieldController<String>? intialAdvanceValueController;
  // State field(s) for AdvanceAmount-Advance widget.
  FocusNode? advanceAmountAdvanceFocusNode;
  TextEditingController? advanceAmountAdvanceTextController;
  String? Function(BuildContext, String?)?
      advanceAmountAdvanceTextControllerValidator;
  // State field(s) for BalanceAmount-Advance widget.
  FocusNode? balanceAmountAdvanceFocusNode;
  TextEditingController? balanceAmountAdvanceTextController;
  String? Function(BuildContext, String?)?
      balanceAmountAdvanceTextControllerValidator;
  // State field(s) for RentEscaltion-Advance widget.
  String? rentEscaltionAdvanceValue;
  FormFieldController<String>? rentEscaltionAdvanceValueController;
  // State field(s) for EscalationPeriod-Advance widget.
  String? escalationPeriodAdvanceValue;
  FormFieldController<String>? escalationPeriodAdvanceValueController;
  // State field(s) for AgreementPeriods-Advance widget.
  String? agreementPeriodsAdvanceValue;
  FormFieldController<String>? agreementPeriodsAdvanceValueController;
  // State field(s) for E-billingRent-Advance widget.
  FormFieldController<String>? eBillingRentAdvanceValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    advanceRentAmountRENTFocusNode?.dispose();
    advanceRentAmountRENTTextController?.dispose();

    totalAdvanceAmountRentOrSecurityMonthsPaidFocusNode?.dispose();
    totalAdvanceAmountRentOrSecurityMonthsPaidTextController?.dispose();

    advanceAmountAdvanceFocusNode?.dispose();
    advanceAmountAdvanceTextController?.dispose();

    balanceAmountAdvanceFocusNode?.dispose();
    balanceAmountAdvanceTextController?.dispose();
  }

  /// Additional helper methods.
  String? get rentaltypeValue => rentaltypeValueController?.value;
  String? get eBillingRentAdvanceValue =>
      eBillingRentAdvanceValueController?.value;
}
