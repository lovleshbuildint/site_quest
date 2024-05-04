import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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

    _model.advanceRentAmountRENTTextController ??= TextEditingController();
    _model.advanceRentAmountRENTFocusNode ??= FocusNode();

    _model.totalAdvanceAmountTextController ??= TextEditingController();
    _model.totalAdvanceAmountFocusNode ??= FocusNode();

    _model.advanceAmountTextController ??= TextEditingController();
    _model.advanceAmountFocusNode ??= FocusNode();

    _model.balanceAmountTextController ??= TextEditingController();
    _model.balanceAmountFocusNode ??= FocusNode();

    _model.securityRentRentPerMonthTextController ??= TextEditingController();
    _model.securityRentRentPerMonthFocusNode ??= FocusNode();

    _model.totalSecurityDepositTextController ??= TextEditingController();
    _model.totalSecurityDepositFocusNode ??= FocusNode();

    _model.advanceSDAmountTextController ??= TextEditingController();
    _model.advanceSDAmountFocusNode ??= FocusNode();

    _model.balanceSDAmountTextController ??= TextEditingController();
    _model.balanceSDAmountFocusNode ??= FocusNode();

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
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
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
            selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
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
          if (_model.rentaltypeValue == 'Advance Rent')
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
                        Container(
                          width: 90.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2F2F2),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://picsum.photos/seed/591/900',
                              width: 20.0,
                              height: 20.0,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: TextFormField(
                              controller:
                                  _model.advanceRentAmountRENTTextController,
                              focusNode: _model.advanceRentAmountRENTFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.advanceRentAmountRENTTextController',
                                Duration(milliseconds: 2000),
                                () async {
                                  setState(() {
                                    _model.totalAdvanceAmountTextController
                                        ?.text = ((int.tryParse((_model
                                                    .advanceRentDD1Value!)) ??
                                                0) *
                                            (int.tryParse(_model
                                                    .advanceRentAmountRENTTextController
                                                    .text) ??
                                                0))
                                        .toString();
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
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              validator: _model
                                  .advanceRentAmountRENTTextControllerValidator
                                  .asValidator(context),
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
                      controller: _model.rentFreePeriodValueController ??=
                          FormFieldController<String>(
                        _model.rentFreePeriodValue ??= '30',
                      ),
                      options: ['30', '45', '60'],
                      onChanged: (val) =>
                          setState(() => _model.rentFreePeriodValue = val),
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
                      'Advance Rental (Months)',
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
                      controller: _model.advanceRentDD1ValueController ??=
                          FormFieldController<String>(
                        _model.advanceRentDD1Value ??= '3',
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
                        setState(() => _model.advanceRentDD1Value = val);
                        setState(() {
                          _model.totalAdvanceAmountTextController
                              ?.text = ((int.tryParse(
                                          (_model.advanceRentDD1Value!)) ??
                                      0) *
                                  (int.tryParse(_model
                                          .advanceRentAmountRENTTextController
                                          .text) ??
                                      0))
                              .toString();
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
                      'Total Advance Amount',
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
                      controller: _model.totalAdvanceAmountTextController,
                      focusNode: _model.totalAdvanceAmountFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.totalAdvanceAmountTextController',
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
                          .totalAdvanceAmountTextControllerValidator
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
                          _model.advanceAmountTextController
                              ?.text = ((int.tryParse(
                                          (_model.intialAdvanceValue!)) ??
                                      0) *
                                  (int.tryParse(_model
                                          .advanceRentAmountRENTTextController
                                          .text) ??
                                      0))
                              .toString();
                        });
                        setState(() {
                          _model.balanceAmountTextController
                              ?.text = ((int.tryParse(_model
                                          .totalAdvanceAmountTextController
                                          .text) ??
                                      0) -
                                  (int.tryParse(_model
                                          .advanceAmountTextController.text) ??
                                      0))
                              .toString();
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
                                    controller:
                                        _model.advanceAmountTextController,
                                    focusNode: _model.advanceAmountFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.advanceAmountTextController',
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
                                        .advanceAmountTextControllerValidator
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
                                    controller:
                                        _model.balanceAmountTextController,
                                    focusNode: _model.balanceAmountFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.balanceAmountTextController',
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
                                        .balanceAmountTextControllerValidator
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
                      controller: _model.rentEscaltionValueController ??=
                          FormFieldController<String>(
                        _model.rentEscaltionValue ??= '20',
                      ),
                      options: ['0', '5', '10', '15', '20', '25'],
                      onChanged: (val) =>
                          setState(() => _model.rentEscaltionValue = val),
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
                      controller: _model.escalationPeriodValueController1 ??=
                          FormFieldController<String>(
                        _model.escalationPeriodValue1 ??= '5',
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
                      onChanged: (val) =>
                          setState(() => _model.escalationPeriodValue1 = val),
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
                      controller: _model.agreementPeriodsValueController1 ??=
                          FormFieldController<String>(
                        _model.agreementPeriodsValue1 ??= '5',
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
                      onChanged: (val) =>
                          setState(() => _model.agreementPeriodsValue1 = val),
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
                            onChanged: (val) => setState(() {}),
                            controller: _model.eBillingRentValueController ??=
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
          if (_model.rentaltypeValue == 'Security Deposit')
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
                        Container(
                          width: 90.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2F2F2),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Asset_1india.png',
                              width: 20.0,
                              height: 20.0,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: TextFormField(
                              controller:
                                  _model.securityRentRentPerMonthTextController,
                              focusNode:
                                  _model.securityRentRentPerMonthFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.securityRentRentPerMonthTextController',
                                Duration(milliseconds: 2000),
                                () async {
                                  setState(() {
                                    _model.totalSecurityDepositTextController
                                        ?.text = ((int.tryParse((_model
                                                    .securityDepositValue!)) ??
                                                0) *
                                            (int.tryParse(_model
                                                    .securityRentRentPerMonthTextController
                                                    .text) ??
                                                0))
                                        .toString();
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
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              validator: _model
                                  .securityRentRentPerMonthTextControllerValidator
                                  .asValidator(context),
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
                      controller: _model.rentFreePeriodsValueController ??=
                          FormFieldController<String>(
                        _model.rentFreePeriodsValue ??= '30',
                      ),
                      options: ['30', '45', '60'],
                      onChanged: (val) =>
                          setState(() => _model.rentFreePeriodsValue = val),
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
                      'Security Deposit (Months)',
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
                      controller: _model.securityDepositValueController ??=
                          FormFieldController<String>(
                        _model.securityDepositValue ??= '4',
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
                      onChanged: (val) =>
                          setState(() => _model.securityDepositValue = val),
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
                      'Total Security Deposit',
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
                      controller: _model.totalSecurityDepositTextController,
                      focusNode: _model.totalSecurityDepositFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.totalSecurityDepositTextController',
                        Duration(milliseconds: 2000),
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
                          .totalSecurityDepositTextControllerValidator
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
                      controller: _model.sDIIntialAdvanceValueController ??=
                          FormFieldController<String>(
                        _model.sDIIntialAdvanceValue ??= '3',
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
                        setState(() => _model.sDIIntialAdvanceValue = val);
                        setState(() {
                          _model.advanceSDAmountTextController
                              ?.text = ((int.tryParse(
                                          (_model.sDIIntialAdvanceValue!)) ??
                                      0) *
                                  (int.tryParse(_model
                                          .securityRentRentPerMonthTextController
                                          .text) ??
                                      0))
                              .toString();
                        });
                        setState(() {
                          _model.balanceSDAmountTextController
                              ?.text = ((int.tryParse(_model
                                          .totalSecurityDepositTextController
                                          .text) ??
                                      0) -
                                  (int.tryParse(_model
                                          .advanceSDAmountTextController
                                          .text) ??
                                      0))
                              .toString();
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
                      hintText: '5',
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
                                    controller:
                                        _model.advanceSDAmountTextController,
                                    focusNode: _model.advanceSDAmountFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.advanceSDAmountTextController',
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
                                        .advanceSDAmountTextControllerValidator
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
                                    controller:
                                        _model.balanceSDAmountTextController,
                                    focusNode: _model.balanceSDAmountFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.balanceSDAmountTextController',
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
                                        .balanceSDAmountTextControllerValidator
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
                      controller: _model.rentEscalationPerValueController ??=
                          FormFieldController<String>(
                        _model.rentEscalationPerValue ??= '20',
                      ),
                      options: ['0', '5', '10', '15', '20', '25'],
                      onChanged: (val) =>
                          setState(() => _model.rentEscalationPerValue = val),
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
                      controller: _model.escalationPeriodValueController2 ??=
                          FormFieldController<String>(
                        _model.escalationPeriodValue2 ??= '5',
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
                      onChanged: (val) =>
                          setState(() => _model.escalationPeriodValue2 = val),
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
                      controller: _model.agreementPeriodsValueController2 ??=
                          FormFieldController<String>(
                        _model.agreementPeriodsValue2 ??= '5',
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
                      onChanged: (val) =>
                          setState(() => _model.agreementPeriodsValue2 = val),
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
                            onChanged: (val) => setState(() {}),
                            controller:
                                _model.eBillIncludingRentValueController ??=
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
    );
  }
}
