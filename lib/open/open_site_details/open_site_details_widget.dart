import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'open_site_details_model.dart';
export 'open_site_details_model.dart';

class OpenSiteDetailsWidget extends StatefulWidget {
  const OpenSiteDetailsWidget({super.key});

  @override
  State<OpenSiteDetailsWidget> createState() => _OpenSiteDetailsWidgetState();
}

class _OpenSiteDetailsWidgetState extends State<OpenSiteDetailsWidget> {
  late OpenSiteDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenSiteDetailsModel());

    _model.distanceFromIndentsTextController ??= TextEditingController();
    _model.distanceFromIndentsFocusNode ??= FocusNode();

    _model.addressTextController ??= TextEditingController();
    _model.addressFocusNode ??= FocusNode();

    _model.pincodeTextController ??= TextEditingController();
    _model.pincodeFocusNode ??= FocusNode();

    _model.aTMExistingTextController ??= TextEditingController();
    _model.aTMExistingFocusNode ??= FocusNode();

    _model.landMarksTextController ??= TextEditingController();
    _model.landMarksFocusNode ??= FocusNode();

    _model.mangerNameTextController ??= TextEditingController();
    _model.mangerNameFocusNode ??= FocusNode();

    _model.mangerNumberTextController ??= TextEditingController();
    _model.mangerNumberFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.black,
                              size: 22.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Add Site Details',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          '1/8',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Site Details',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Landlord Details',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Commercial',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Site Dimensions',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('open_site_details');
                      },
                      child: FaIcon(
                        FontAwesomeIcons.dotCircle,
                        color: Color(0xFF07D95A),
                        size: 20.0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD1D5DB),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD1D5DB),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('open_site_landlord_details');
                      },
                      child: FaIcon(
                        FontAwesomeIcons.dotCircle,
                        color: Color(0xFFD1D5DB),
                        size: 20.0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD1D5DB),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD1D5DB),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('open_site_commercial');
                      },
                      child: FaIcon(
                        FontAwesomeIcons.dotCircle,
                        color: Color(0xFFD1D5DB),
                        size: 20.0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD1D5DB),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD1D5DB),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('open_site_dimensions');
                      },
                      child: FaIcon(
                        FontAwesomeIcons.dotCircle,
                        color: Color(0xFFD1D5DB),
                        size: 20.0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD1D5DB),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 0.0),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Text(
                          'Customer Bank',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.customerBankValueController ??=
                                FormFieldController<String>(null),
                            options: (getJsonField(
                              FFAppState().getCustomerbank,
                              r'''$.CustomerBanks..Name''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()!,
                            onChanged: (val) => safeSetState(
                                () => _model.customerBankValue = val),
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please select',
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
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Site Type',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.sitetypeValueController ??=
                                FormFieldController<String>(null),
                            options: (getJsonField(
                              FFAppState().SiteType,
                              r'''$..SiteTypeName''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()!,
                            onChanged: (val) async {
                              safeSetState(() => _model.sitetypeValue = val);
                              _model.isitetypes = functions.checkIndexint(
                                  FFAppState().SiteType,
                                  _model.sitetypeValue,
                                  '-',
                                  'SiteTypeName',
                                  'iSiteType',
                                  false);
                              safeSetState(() {});
                            },
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please select...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFFE1E2E6),
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Color(0xFFE1E2E6),
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Cash Device Type',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.cashDeviceValueController ??=
                                FormFieldController<String>(null),
                            options: (getJsonField(
                              FFAppState().CashDeviceType,
                              r'''$..CashDeviceType''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()!,
                            onChanged: (val) async {
                              safeSetState(() => _model.cashDeviceValue = val);
                              _model.icashdevicetypes = functions.checkIndexint(
                                  FFAppState().CashDeviceType,
                                  _model.cashDeviceValue,
                                  '-',
                                  'CashDeviceType',
                                  'iCashDeviceType',
                                  false);
                              safeSetState(() {});
                            },
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please select...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFFE1E2E6),
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Color(0xFFE1E2E6),
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Cash Device Movement Category',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller:
                                _model.cashDeviceMovementValueController ??=
                                    FormFieldController<String>(null),
                            options: (getJsonField(
                              FFAppState().CashDeviceMovementCategory,
                              r'''$..CashDeviceMovementCategory''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()!,
                            onChanged: (val) async {
                              safeSetState(
                                  () => _model.cashDeviceMovementValue = val);
                              _model.ichasdevicemovementcategorys =
                                  functions.checkIndexint(
                                      FFAppState().CashDeviceMovementCategory,
                                      _model.cashDeviceMovementValue,
                                      '-',
                                      'CashDeviceMovementCategory',
                                      'iCashDeviceMovementCategory',
                                      false);
                              safeSetState(() {});
                            },
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please select...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFFE1E2E6),
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Color(0xFFE1E2E6),
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'TIS Type',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.tisTypeValueController ??=
                                FormFieldController<String>(null),
                            options: (getJsonField(
                              FFAppState().TISType,
                              r'''$..TISTypeName''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()!,
                            onChanged: (val) async {
                              safeSetState(() => _model.tisTypeValue = val);
                              _model.iTisTypes = functions.checkIndexint(
                                  FFAppState().TISType,
                                  _model.tisTypeValue,
                                  '-',
                                  'TISTypeName',
                                  'iTISType',
                                  false);
                              safeSetState(() {});
                            },
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please select...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFFE1E2E6),
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Color(0xFFE1E2E6),
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Project Type',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.projectTypeValueController ??=
                                FormFieldController<String>(null),
                            options: (getJsonField(
                              FFAppState().ProjectType,
                              r'''$..ProjectTypeName''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()!,
                            onChanged: (val) async {
                              safeSetState(() => _model.projectTypeValue = val);
                              _model.iprojecttypes = functions.checkIndexint(
                                  FFAppState().ProjectType,
                                  _model.projectTypeValue,
                                  '-',
                                  'ProjectTypeName',
                                  'iProjType',
                                  false);
                              safeSetState(() {});
                            },
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please select...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFFE1E2E6),
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Color(0xFFE1E2E6),
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Business Type',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.businessTypeValueController ??=
                                FormFieldController<String>(null),
                            options: (getJsonField(
                              FFAppState().BusinessType,
                              r'''$..ShopTypeName''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()!,
                            onChanged: (val) async {
                              safeSetState(
                                  () => _model.businessTypeValue = val);
                              _model.ishoptypes = functions.checkIndexint(
                                  FFAppState().BusinessType,
                                  _model.businessTypeValue,
                                  '-',
                                  'ShopTypeName',
                                  'iShopType',
                                  false);
                              safeSetState(() {});
                            },
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please select...',
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
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Strategy',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller:
                                _model.strategyDropDwonValueController ??=
                                    FormFieldController<String>(null),
                            options: (getJsonField(
                              FFAppState().Strategy,
                              r'''$.Strategies..Strategy''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()!,
                            onChanged: (val) => safeSetState(
                                () => _model.strategyDropDwonValue = val),
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please select...',
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
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        if (_model.strategyDropDwonValue == 'POI')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Text(
                              'POI List',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        if (_model.strategyDropDwonValue == 'POI')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.pOIListValueController ??=
                                  FormFieldController<String>(null),
                              options: (getJsonField(
                                FFAppState().POIList,
                                r'''$..poiTypeName''',
                                true,
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList()!,
                              onChanged: (val) =>
                                  safeSetState(() => _model.pOIListValue = val),
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 50.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Please select...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFFE1E2E6),
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Color(0xFFE1E2E6),
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Distance from th Indent (mtrs.)',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: TextFormField(
                            controller:
                                _model.distanceFromIndentsTextController,
                            focusNode: _model.distanceFromIndentsFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Distance in mtrs',
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
                                .distanceFromIndentsTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Site Address',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.addressTextController,
                            focusNode: _model.addressFocusNode,
                            autofocus: false,
                            textCapitalization: TextCapitalization.words,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter Address',
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
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.addressTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Text(
                                      'State',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: SqGroup.stateListCall.call(
                                        token: FFAppState().Token,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final stateDropdownStateListResponse =
                                            snapshot.data!;

                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .stateDropdownValueController ??=
                                              FormFieldController<String>(null),
                                          options: List<String>.from(
                                              (getJsonField(
                                            stateDropdownStateListResponse
                                                .jsonBody,
                                            r'''$.States..iState''',
                                            true,
                                          ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!),
                                          optionLabels: (getJsonField(
                                            stateDropdownStateListResponse
                                                .jsonBody,
                                            r'''$.States..State''',
                                            true,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) async {
                                            safeSetState(() => _model
                                                .stateDropdownValue = val);
                                            _model.statefordsitopen =
                                                functions.checkIndex(
                                                    stateDropdownStateListResponse
                                                        .jsonBody,
                                                    _model.stateDropdownValue,
                                                    'States',
                                                    'iState',
                                                    'State');
                                            safeSetState(() {});
                                          },
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 50.0,
                                          searchHintTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 10.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                          searchTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.black,
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Please select...',
                                          searchHintText: 'Search Bank...',
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
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        'District',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    if (_model.statefordsitopen != null &&
                                        _model.statefordsitopen != '')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future: SqGroup.districtAPisCall.call(
                                            istate: _model.stateDropdownValue,
                                            token: FFAppState().Token,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final districtDistrictAPisResponse =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .districtValueController ??=
                                                  FormFieldController<String>(
                                                _model.districtValue ??= '',
                                              ),
                                              options: List<String>.from(
                                                  (getJsonField(
                                                districtDistrictAPisResponse
                                                    .jsonBody,
                                                r'''$.District..DistrictName''',
                                                true,
                                              ) as List)
                                                      .map<String>(
                                                          (s) => s.toString())
                                                      .toList()!),
                                              optionLabels: (getJsonField(
                                                districtDistrictAPisResponse
                                                    .jsonBody,
                                                r'''$.District..DistrictName''',
                                                true,
                                              ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!,
                                              onChanged: (val) async {
                                                safeSetState(() =>
                                                    _model.districtValue = val);
                                                _model.district =
                                                    functions.checkIndex(
                                                        districtDistrictAPisResponse
                                                            .jsonBody,
                                                        _model.districtValue,
                                                        'District',
                                                        'DistrictName',
                                                        'iDistrict');
                                                safeSetState(() {});
                                              },
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 50.0,
                                              searchHintTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              searchTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Please select...',
                                              searchHintText:
                                                  'Search district...',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color: Color(0xFFE1E2E6),
                                                size: 24.0,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2.0,
                                              borderColor: Color(0xFFE1E2E6),
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: true,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'City',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    if (_model.districtValue != null &&
                                        _model.districtValue != '')
                                      FutureBuilder<ApiCallResponse>(
                                        future: SqGroup
                                            .citiesAPIforStatenDistCall
                                            .call(
                                          token: FFAppState().Token,
                                          istate: _model.stateDropdownValue,
                                          idistrict: _model.district,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final cityCitiesAPIforStatenDistResponse =
                                              snapshot.data!;

                                          return FlutterFlowDropDown<String>(
                                            controller:
                                                _model.cityValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                            options: (getJsonField(
                                              cityCitiesAPIforStatenDistResponse
                                                  .jsonBody,
                                              r'''$.Cities..City''',
                                              true,
                                            ) as List)
                                                .map<String>(
                                                    (s) => s.toString())
                                                .toList()!,
                                            onChanged: (val) async {
                                              safeSetState(
                                                  () => _model.cityValue = val);
                                              _model.trycity =
                                                  functions.istatetostatevalue(
                                                      FFAppState().City,
                                                      _model.cityValue,
                                                      'Cities',
                                                      'iCity',
                                                      'City');
                                              safeSetState(() {});
                                            },
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 50.0,
                                            searchHintTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            searchTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.black,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Please select...',
                                            searchHintText: 'Search City...',
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
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isSearchable: true,
                                            isMultiSelect: false,
                                          );
                                        },
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        'Pincode',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: TextFormField(
                                        controller:
                                            _model.pincodeTextController,
                                        focusNode: _model.pincodeFocusNode,
                                        autofocus: false,
                                        textCapitalization:
                                            TextCapitalization.words,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Enter Pincode',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor: Colors.transparent,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        maxLength: 6,
                                        validator: _model
                                            .pincodeTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Circle',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.circleValueController ??=
                                FormFieldController<String>(null),
                            options: (getJsonField(
                              FFAppState().Circle,
                              r'''$.Circles_app1..CircleName''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()!,
                            onChanged: (val) =>
                                safeSetState(() => _model.circleValue = val),
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please select...',
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
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'ATM Existing',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.aTMExistingTextController,
                            focusNode: _model.aTMExistingFocusNode,
                            autofocus: false,
                            textCapitalization: TextCapitalization.words,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter ATM Existing',
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
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.aTMExistingTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Landmark',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.landMarksTextController,
                            focusNode: _model.landMarksFocusNode,
                            autofocus: false,
                            textCapitalization: TextCapitalization.words,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter Landmark',
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
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.landMarksTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'RBI Category',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.rBICategoryValueController ??=
                                FormFieldController<String>(null),
                            options: (getJsonField(
                              FFAppState().RBICategory,
                              r'''$.RBICategories..Name''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()!,
                            onChanged: (val) => safeSetState(
                                () => _model.rBICategoryValue = val),
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please select...',
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
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Row(
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        'Site Sourced By',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                                .siteSourcedValueController ??=
                                            FormFieldController<String>(null),
                                        options: ['HPY', 'Bank', 'SSM'],
                                        onChanged: (val) => safeSetState(() =>
                                            _model.siteSourcedValue = val),
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Please select',
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
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        'Onsite/Offsite',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                                .oNOFSiteValueController ??=
                                            FormFieldController<String>(null),
                                        options: ['Onsite', 'Offsite'],
                                        onChanged: (val) async {
                                          safeSetState(
                                              () => _model.oNOFSiteValue = val);
                                          _model.oNOFsite =
                                              functions.dropdownsONSITE(
                                                  _model.oNOFSiteValue!);
                                          safeSetState(() {});
                                        },
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Please select',
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
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Manger Name',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.mangerNameTextController,
                            focusNode: _model.mangerNameFocusNode,
                            autofocus: false,
                            textCapitalization: TextCapitalization.words,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter Manger Name',
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
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.mangerNameTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Manger Number',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.mangerNumberTextController,
                            focusNode: _model.mangerNumberFocusNode,
                            autofocus: false,
                            textCapitalization: TextCapitalization.words,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter Manger Number',
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
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            maxLength: 10,
                            keyboardType: TextInputType.number,
                            validator: _model
                                .mangerNumberTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Duplicate site',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.duplicateSiteValueController ??=
                                FormFieldController<String>(null),
                            options: ['Yes', 'No'],
                            onChanged: (val) async {
                              safeSetState(
                                  () => _model.duplicateSiteValue = val);
                              _model.iduplicate = functions
                                  .dropdown(_model.duplicateSiteValue!);
                              safeSetState(() {});
                            },
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please select',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFFE1E2E6),
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Color(0xFFE1E2E6),
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Site Visited By',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.siteVisitedBYValueController ??=
                                FormFieldController<String>(null),
                            options: (getJsonField(
                              FFAppState().visitedbydeptapi,
                              r'''$..Department''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()!,
                            onChanged: (val) async {
                              safeSetState(
                                  () => _model.siteVisitedBYValue = val);
                              _model.isiteddeps = functions.checkIndexint(
                                  FFAppState().SiteVisitedBy,
                                  _model.siteVisitedBYValue,
                                  '-',
                                  'Department',
                                  'idepartment',
                                  false);
                              _model.isitevisitedbys = functions.checkIndexint(
                                  FFAppState().visitedbydeptapi,
                                  _model.siteVisitedBYValue,
                                  '-',
                                  'Department',
                                  'idepartment',
                                  false);
                              safeSetState(() {});
                            },
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Please select...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFFE1E2E6),
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Color(0xFFE1E2E6),
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'First Site Visited By',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: SqGroup.getDepartmentWiseUserAPICall.call(
                              department: FFAppState().department.toString(),
                              token: FFAppState().Token,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final firstSiteVisitedByGetDepartmentWiseUserAPIResponse =
                                  snapshot.data!;

                              return FlutterFlowDropDown<String>(
                                controller:
                                    _model.firstSiteVisitedByValueController ??=
                                        FormFieldController<String>(null),
                                options: (getJsonField(
                                  firstSiteVisitedByGetDepartmentWiseUserAPIResponse
                                      .jsonBody,
                                  r'''$..UserName''',
                                  true,
                                ) as List)
                                    .map<String>((s) => s.toString())
                                    .toList()!,
                                onChanged: (val) async {
                                  safeSetState(() =>
                                      _model.firstSiteVisitedByValue = val);
                                  _model.isitevisitedbynames =
                                      functions.checkIndexint(
                                          firstSiteVisitedByGetDepartmentWiseUserAPIResponse
                                              .jsonBody,
                                          _model.firstSiteVisitedByValue,
                                          '-',
                                          'UserName',
                                          'iUser',
                                          false);
                                  safeSetState(() {});
                                },
                                width: 300.0,
                                height: 56.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Please select...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            'Second Site Visited BY',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 30.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: SqGroup.getSecondSiteVisitersCall.call(
                              token: FFAppState().Token,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final dropDownGetSecondSiteVisitersResponse =
                                  snapshot.data!;

                              return FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController ??=
                                    FormFieldController<String>(null),
                                options: (getJsonField(
                                  FFAppState().secondsitevisiterNew,
                                  r'''$..UserName''',
                                  true,
                                ) as List)
                                    .map<String>((s) => s.toString())
                                    .toList()!,
                                onChanged: (val) async {
                                  safeSetState(
                                      () => _model.dropDownValue = val);
                                  _model.isecondsitevisitedbynames =
                                      functions.checkIndexint(
                                          dropDownGetSecondSiteVisitersResponse
                                              .jsonBody,
                                          _model.dropDownValue,
                                          '-',
                                          'UserName',
                                          'iUser',
                                          false);
                                  safeSetState(() {});
                                },
                                width: 300.0,
                                height: 56.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Please select...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF2D2D2D),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.updateDOAdetailsfirstwordsSites =
                              await SqGroup.dOADetailsstepFIRSTworddocCall.call(
                            customerBank: valueOrDefault<String>(
                              _model.customerBankValue,
                              'Abhyudaya Cooperative Bank Ltd',
                            ),
                            district: _model.districtValue,
                            strategy: valueOrDefault<String>(
                              _model.strategyDropDwonValue,
                              'Additional',
                            ),
                            circle: valueOrDefault<String>(
                              _model.circleValue,
                              'Agra',
                            ),
                            city: _model.cityValue,
                            iSiteType: valueOrDefault<int>(
                              _model.isitetypes,
                              1,
                            ),
                            iCashDeviceType: valueOrDefault<int>(
                              _model.icashdevicetypes,
                              1,
                            ),
                            iCashDeviceMovementCategory: valueOrDefault<int>(
                              _model.ichasdevicemovementcategorys,
                              1,
                            ),
                            iTisType: valueOrDefault<int>(
                              _model.iTisTypes,
                              1,
                            ),
                            iShopType: valueOrDefault<int>(
                              _model.ishoptypes,
                              1,
                            ),
                            token: FFAppState().Token,
                            locationName: null,
                            distance:
                                _model.distanceFromIndentsTextController.text,
                            address: _model.addressTextController.text,
                            state: _model.statefordsitopen,
                            pincode: _model.pincodeTextController.text,
                            landMark: _model.aTMExistingTextController.text,
                            rBICategory: _model.rBICategoryValue,
                            sitesourcedby: valueOrDefault<String>(
                              _model.siteSourcedValue,
                              'HPY',
                            ),
                            isOnSite: valueOrDefault<String>(
                              _model.oNOFsite.toString(),
                              '1',
                            ),
                            isDuplicateSite: valueOrDefault<String>(
                              _model.iduplicate.toString(),
                              '1',
                            ),
                            iSiteVisitedBy: valueOrDefault<int>(
                              _model.isitevisitedbys,
                              2,
                            ),
                            iSiteVisitedByName: valueOrDefault<int>(
                              _model.isitevisitedbynames,
                              1,
                            ),
                            iSecondSiteVisitedByName: valueOrDefault<int>(
                              _model.isecondsitevisitedbynames,
                              2966,
                            ),
                            iProjType: valueOrDefault<int>(
                              _model.iprojecttypes,
                              4,
                            ),
                            indentId: null,
                            mgrName: _model.mangerNameTextController.text,
                            mgrNo: _model.mangerNumberTextController.text,
                            siteId: null,
                            iindent: null,
                            atmExisting: _model.aTMExistingTextController.text,
                            targetBank: null,
                            isFromSiteref: false,
                            centre: null,
                            comment: null,
                            lastModStamp: null,
                            isHold: null,
                            istage: null,
                            iStageText: null,
                            androidKey: null,
                            location: null,
                            waterlog: null,
                            atmaval: null,
                            companyName: null,
                            employeeName: null,
                            contactNumber: null,
                            emailId: null,
                            isWB: '0',
                            msg: null,
                            errCnt: null,
                            districts: null,
                          );

                          if ((String var1) {
                            return var1 ==
                                    "Data for Step-1 Successfully Updated."
                                ? true
                                : false;
                          }(getJsonField(
                            (_model.updateDOAdetailsfirstwordsSites?.jsonBody ??
                                ''),
                            r'''$.Msg''',
                          ).toString())) {
                            FFAppState().SiteId = getJsonField(
                              (_model.updateDOAdetailsfirstwordsSites
                                      ?.jsonBody ??
                                  ''),
                              r'''$.SiteId''',
                            ).toString();
                            safeSetState(() {});
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text(getJsonField(
                                    (_model.updateDOAdetailsfirstwordsSites
                                            ?.jsonBody ??
                                        ''),
                                    r'''$.SiteId''',
                                  ).toString()),
                                  content: Text(getJsonField(
                                    (_model.updateDOAdetailsfirstwordsSites
                                            ?.jsonBody ??
                                        ''),
                                    r'''$.Msg''',
                                  ).toString()),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );

                            context.pushNamed(
                              'open_site_landlord_details',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Alert (UpdateDOAdetailsfirst)'),
                                  content: Text(getJsonField(
                                    (_model.updateDOAdetailsfirstwordsSites
                                            ?.jsonBody ??
                                        ''),
                                    r'''$.Msg''',
                                  ).toString()),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }

                          safeSetState(() {});
                        },
                        text: 'Save & Next',
                        options: FFButtonOptions(
                          width: 118.0,
                          height: 40.0,
                          padding: EdgeInsets.all(0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFFF0026),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
