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
  // State field(s) for securityRent-RentPerMonthssss widget.
  FocusNode? securityRentRentPerMonthssssFocusNode;
  TextEditingController? securityRentRentPerMonthssssTextController;
  String? Function(BuildContext, String?)?
      securityRentRentPerMonthssssTextControllerValidator;
  // State field(s) for RentFreePeriods-Security widget.
  String? rentFreePeriodsSecurityValue;
  FormFieldController<String>? rentFreePeriodsSecurityValueController;
  // State field(s) for TotalSecurityDeposit widget.
  String? totalSecurityDepositValue;
  FormFieldController<String>? totalSecurityDepositValueController;
  // State field(s) for totalSecurityDeposit widget.
  FocusNode? totalSecurityDepositFocusNode;
  TextEditingController? totalSecurityDepositTextController;
  String? Function(BuildContext, String?)?
      totalSecurityDepositTextControllerValidator;
  // State field(s) for IntialAdvancemonth-Security widget.
  String? intialAdvancemonthSecurityValue;
  FormFieldController<String>? intialAdvancemonthSecurityValueController;
  // State field(s) for AdvanceSDAmount-Security widget.
  FocusNode? advanceSDAmountSecurityFocusNode;
  TextEditingController? advanceSDAmountSecurityTextController;
  String? Function(BuildContext, String?)?
      advanceSDAmountSecurityTextControllerValidator;
  // State field(s) for BalanceSDAmount-Security widget.
  FocusNode? balanceSDAmountSecurityFocusNode;
  TextEditingController? balanceSDAmountSecurityTextController;
  String? Function(BuildContext, String?)?
      balanceSDAmountSecurityTextControllerValidator;
  // State field(s) for RentEscalation-per-Security widget.
  String? rentEscalationPerSecurityValue;
  FormFieldController<String>? rentEscalationPerSecurityValueController;
  // State field(s) for EscalationPeriod-Security widget.
  String? escalationPeriodSecurityValue;
  FormFieldController<String>? escalationPeriodSecurityValueController;
  // State field(s) for AgreementPeriods-Security widget.
  String? agreementPeriodsSecurityValue;
  FormFieldController<String>? agreementPeriodsSecurityValueController;
  // State field(s) for E-BillIncludingRent-Security widget.
  FormFieldController<String>? eBillIncludingRentSecurityValueController;

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

    securityRentRentPerMonthssssFocusNode?.dispose();
    securityRentRentPerMonthssssTextController?.dispose();

    totalSecurityDepositFocusNode?.dispose();
    totalSecurityDepositTextController?.dispose();

    advanceSDAmountSecurityFocusNode?.dispose();
    advanceSDAmountSecurityTextController?.dispose();

    balanceSDAmountSecurityFocusNode?.dispose();
    balanceSDAmountSecurityTextController?.dispose();
  }

  /// Additional helper methods.
  String? get rentaltypeValue => rentaltypeValueController?.value;
  String? get eBillingRentAdvanceValue =>
      eBillingRentAdvanceValueController?.value;
  String? get eBillIncludingRentSecurityValue =>
      eBillIncludingRentSecurityValueController?.value;
}
