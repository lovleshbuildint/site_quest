import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'commercial_advance_model.dart';
export 'commercial_advance_model.dart';

class CommercialAdvanceWidget extends StatefulWidget {
  const CommercialAdvanceWidget({super.key});

  @override
  State<CommercialAdvanceWidget> createState() =>
      _CommercialAdvanceWidgetState();
}

class _CommercialAdvanceWidgetState extends State<CommercialAdvanceWidget> {
  late CommercialAdvanceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommercialAdvanceModel());

    _model.advanceRentAmountRENTTextController ??=
        TextEditingController(text: '0');
    _model.advanceRentAmountRENTFocusNode ??= FocusNode();

    _model.totalAdvanceAmountRentOrSecurityMonthsPaidTextController ??=
        TextEditingController();
    _model.totalAdvanceAmountRentOrSecurityMonthsPaidFocusNode ??= FocusNode();

    _model.advanceAmountAdvanceTextController ??= TextEditingController();
    _model.advanceAmountAdvanceFocusNode ??= FocusNode();

    _model.balanceAmountAdvanceTextController ??= TextEditingController();
    _model.balanceAmountAdvanceFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 0.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Rental Type',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            FlutterFlowRadioButton(
              options: ['Advance Rent', 'Security Deposit'].toList(),
              onChanged: (val) => setState(() {}),
              controller: _model.rentaltypeValueController ??=
                  FormFieldController<String>('Advance Rent'),
              optionHeight: 32.0,
              textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
              selectedTextStyle:
                  FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
              buttonPosition: RadioButtonPosition.left,
              direction: Axis.horizontal,
              radioButtonColor: Color(0xFFFF0026),
              inactiveRadioButtonColor:
                  FlutterFlowTheme.of(context).secondaryText,
              toggleable: false,
              horizontalAlignment: WrapAlignment.spaceBetween,
              verticalAlignment: WrapCrossAlignment.start,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rent (per month)',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller:
                                _model.advanceRentAmountRENTTextController,
                            focusNode: _model.advanceRentAmountRENTFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.advanceRentAmountRENTTextController',
                              Duration(milliseconds: 0),
                              () async {
                                setState(() {
                                  _model
                                      .totalAdvanceAmountRentOrSecurityMonthsPaidTextController
                                      ?.text = ((int.tryParse((_model
                                                  .advanceRentMonthRentOrSecurityMonthsValue!)) ??
                                              0) *
                                          (int.tryParse(_model
                                                  .advanceRentAmountRENTTextController
                                                  .text) ??
                                              0))
                                      .toString();
                                  _model.totalAdvanceAmountRentOrSecurityMonthsPaidTextController
                                          ?.selection =
                                      TextSelection.collapsed(
                                          offset: _model
                                              .totalAdvanceAmountRentOrSecurityMonthsPaidTextController!
                                              .text
                                              .length);
                                });
                              },
                            ),
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter Rent',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE1E2E6),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF0026),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            validator: _model
                                .advanceRentAmountRENTTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      'Rent Free Period (in Days)',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller:
                          _model.rentFreePeriodAdvanceValueController ??=
                              FormFieldController<String>(
                        _model.rentFreePeriodAdvanceValue ??= '30',
                      ),
                      options: [
                        '15',
                        '30',
                        '45',
                        '60',
                        '75',
                        '90',
                        '120',
                        '150',
                        '365'
                      ],
                      onChanged: (val) => setState(
                          () => _model.rentFreePeriodAdvanceValue = val),
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFFE1E2E6),
                        size: 24.0,
                      ),
                      fillColor: Colors.white,
                      elevation: 2.0,
                      borderColor: Color(0xFFE1E2E6),
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      (String var1) {
                        return var1 == 'Advance Rent'
                            ? 'Advance Rental (Months)'
                            : 'Security Deposit (Months)';
                      }(_model.rentaltypeValue!),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model
                              .advanceRentMonthRentOrSecurityMonthsValueController ??=
                          FormFieldController<String>(
                        _model.advanceRentMonthRentOrSecurityMonthsValue ??=
                            '3',
                      ),
                      options: [
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8',
                        '9',
                        '10',
                        '11',
                        '12'
                      ],
                      onChanged: (val) async {
                        setState(() => _model
                            .advanceRentMonthRentOrSecurityMonthsValue = val);
                        setState(() {
                          _model
                              .totalAdvanceAmountRentOrSecurityMonthsPaidTextController
                              ?.text = ((int.tryParse((_model
                                          .advanceRentMonthRentOrSecurityMonthsValue!)) ??
                                      0) *
                                  (int.tryParse(_model
                                          .advanceRentAmountRENTTextController
                                          .text) ??
                                      0))
                              .toString();
                          _model.totalAdvanceAmountRentOrSecurityMonthsPaidTextController
                                  ?.selection =
                              TextSelection.collapsed(
                                  offset: _model
                                      .totalAdvanceAmountRentOrSecurityMonthsPaidTextController!
                                      .text
                                      .length);
                        });
                      },
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFFE1E2E6),
                        size: 24.0,
                      ),
                      fillColor: Colors.white,
                      elevation: 2.0,
                      borderColor: Color(0xFFE1E2E6),
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      (String var1) {
                        return var1 == 'Advance Rent'
                            ? 'Total Advance Amount'
                            : 'Total Security Deposit';
                      }(_model.rentaltypeValue!),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model
                          .totalAdvanceAmountRentOrSecurityMonthsPaidTextController,
                      focusNode: _model
                          .totalAdvanceAmountRentOrSecurityMonthsPaidFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.totalAdvanceAmountRentOrSecurityMonthsPaidTextController',
                        Duration(milliseconds: 1),
                        () => setState(() {}),
                      ),
                      autofocus: false,
                      textCapitalization: TextCapitalization.words,
                      readOnly: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00FFFFFF),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFF0026),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF2F2F2),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      validator: _model
                          .totalAdvanceAmountRentOrSecurityMonthsPaidTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      'Initial Advance (Months)',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.intialAdvanceValueController ??=
                          FormFieldController<String>(
                        _model.intialAdvanceValue ??= '3',
                      ),
                      options: [
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8',
                        '9',
                        '10',
                        '11',
                        '12'
                      ],
                      onChanged: (val) async {
                        setState(() => _model.intialAdvanceValue = val);
                        setState(() {
                          _model.advanceAmountAdvanceTextController
                              ?.text = ((int.tryParse(
                                          (_model.intialAdvanceValue!)) ??
                                      0) *
                                  (int.tryParse(_model
                                          .advanceRentAmountRENTTextController
                                          .text) ??
                                      0))
                              .toString();
                          _model.advanceAmountAdvanceTextController?.selection =
                              TextSelection.collapsed(
                                  offset: _model
                                      .advanceAmountAdvanceTextController!
                                      .text
                                      .length);
                        });
                        setState(() {
                          _model.balanceAmountAdvanceTextController
                              ?.text = ((int.tryParse(_model
                                          .totalAdvanceAmountRentOrSecurityMonthsPaidTextController
                                          .text) ??
                                      0) -
                                  (int.tryParse(_model
                                          .advanceAmountAdvanceTextController
                                          .text) ??
                                      0))
                              .toString();
                          _model.balanceAmountAdvanceTextController?.selection =
                              TextSelection.collapsed(
                                  offset: _model
                                      .balanceAmountAdvanceTextController!
                                      .text
                                      .length);
                        });
                      },
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFFE1E2E6),
                        size: 24.0,
                      ),
                      fillColor: Colors.white,
                      elevation: 2.0,
                      borderColor: Color(0xFFE1E2E6),
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Advance Amount',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: TextFormField(
                                    controller: _model
                                        .advanceAmountAdvanceTextController,
                                    focusNode:
                                        _model.advanceAmountAdvanceFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.advanceAmountAdvanceTextController',
                                      Duration(milliseconds: 1),
                                      () => setState(() {}),
                                    ),
                                    autofocus: false,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    readOnly: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00FFFFFF),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0026),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFF2F2F2),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    validator: _model
                                        .advanceAmountAdvanceTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Balance Amount',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: TextFormField(
                                    controller: _model
                                        .balanceAmountAdvanceTextController,
                                    focusNode:
                                        _model.balanceAmountAdvanceFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.balanceAmountAdvanceTextController',
                                      Duration(milliseconds: 1),
                                      () => setState(() {}),
                                    ),
                                    autofocus: false,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    readOnly: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00FFFFFF),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF0026),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFF2F2F2),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    validator: _model
                                        .balanceAmountAdvanceTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      'Rent escalation (percent)',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.rentEscaltionAdvanceValueController ??=
                          FormFieldController<String>(
                        _model.rentEscaltionAdvanceValue ??= '20',
                      ),
                      options: ['0', '5', '10', '15', '20', '25'],
                      onChanged: (val) => setState(
                          () => _model.rentEscaltionAdvanceValue = val),
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFFE1E2E6),
                        size: 24.0,
                      ),
                      fillColor: Colors.white,
                      elevation: 2.0,
                      borderColor: Color(0xFFE1E2E6),
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      'Escalation Period (Years)',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller:
                          _model.escalationPeriodAdvanceValueController ??=
                              FormFieldController<String>(
                        _model.escalationPeriodAdvanceValue ??= '5',
                      ),
                      options: [
                        '0',
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8',
                        '9'
                      ],
                      onChanged: (val) => setState(
                          () => _model.escalationPeriodAdvanceValue = val),
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFFE1E2E6),
                        size: 24.0,
                      ),
                      fillColor: Colors.white,
                      elevation: 2.0,
                      borderColor: Color(0xFFE1E2E6),
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      'Agreement Period (Years)',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller:
                          _model.agreementPeriodsAdvanceValueController ??=
                              FormFieldController<String>(
                        _model.agreementPeriodsAdvanceValue ??= '5',
                      ),
                      options: [
                        '0',
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8',
                        '9'
                      ],
                      onChanged: (val) => setState(
                          () => _model.agreementPeriodsAdvanceValue = val),
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFFE1E2E6),
                        size: 24.0,
                      ),
                      fillColor: Colors.white,
                      elevation: 2.0,
                      borderColor: Color(0xFFE1E2E6),
                      borderWidth: 2.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      'Is E-Bill including Rent?',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 35.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FlutterFlowRadioButton(
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) async {
                              setState(() {});
                              _model.ebilling = functions
                                  .dropdown(_model.eBillingRentAdvanceValue!);
                              setState(() {});
                            },
                            controller:
                                _model.eBillingRentAdvanceValueController ??=
                                    FormFieldController<String>('Yes'),
                            optionHeight: 16.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            selectedTextStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor: Color(0xFFFF0026),
                            inactiveRadioButtonColor: Colors.black,
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.spaceAround,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
