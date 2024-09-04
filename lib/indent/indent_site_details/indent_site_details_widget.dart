import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'indent_site_details_model.dart';
export 'indent_site_details_model.dart';

class IndentSiteDetailsWidget extends StatefulWidget {
  const IndentSiteDetailsWidget({super.key});

  @override
  State<IndentSiteDetailsWidget> createState() =>
      _IndentSiteDetailsWidgetState();
}

class _IndentSiteDetailsWidgetState extends State<IndentSiteDetailsWidget> {
  late IndentSiteDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndentSiteDetailsModel());

    _model.customerbankTextController ??= TextEditingController(
        text: getJsonField(
      FFAppState().indentSelectedSite,
      r'''$.CustomerBank''',
    ).toString().toString());
    _model.customerbankFocusNode ??= FocusNode();

    _model.distancefrominindentTextController ??= TextEditingController();
    _model.distancefrominindentFocusNode ??= FocusNode();

    _model.siteAddressTextController ??= TextEditingController(
        text: getJsonField(
      FFAppState().indentSelectedSite,
      r'''$.Address''',
    ).toString().toString());
    _model.siteAddressFocusNode ??= FocusNode();

    _model.pincodeTextController ??= TextEditingController(
        text: getJsonField(
      FFAppState().indentSelectedSite,
      r'''$.Pincode''',
    ).toString().toString());
    _model.pincodeFocusNode ??= FocusNode();

    _model.aTMExisitingTextController ??= TextEditingController();
    _model.aTMExisitingFocusNode ??= FocusNode();

    _model.landMarksTextController ??= TextEditingController();
    _model.landMarksFocusNode ??= FocusNode();

    _model.mrgNameTextController ??= TextEditingController();
    _model.mrgNameFocusNode ??= FocusNode();

    _model.mrgNoTextController ??= TextEditingController();
    _model.mrgNoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
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
                                    context.goNamed(
                                      'indent_review_details',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        constraints: BoxConstraints(
                          minHeight: 126.0,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Color(0x58404042),
                            width: 1.0,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 60.0,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: Color(0xFFD8D8D8),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      'https://picsum.photos/seed/591/900',
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 12.0, 25.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AutoSizeText(
                                                'Customer',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                              ),
                                              AutoSizeText(
                                                getJsonField(
                                                  FFAppState()
                                                      .indentSelectedSite,
                                                  r'''$.CustomerBank''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AutoSizeText(
                                                  'Indent Number',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                ),
                                                AutoSizeText(
                                                  getJsonField(
                                                    FFAppState()
                                                        .indentSelectedSite,
                                                    r'''$.IndentId''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                          0.0, 15.0, 0.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AutoSizeText(
                                                  'Strategy',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                ),
                                                AutoSizeText(
                                                  getJsonField(
                                                    FFAppState()
                                                        .indentSelectedSite,
                                                    r'''$.Strategy''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  AutoSizeText(
                                                    'City',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                  AutoSizeText(
                                                    getJsonField(
                                                      FFAppState()
                                                          .indentSelectedSite,
                                                      r'''$.City''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Site Details',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
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
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
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
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
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
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('indent_site_details');
                              },
                              child: Container(
                                height: 2.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                              ),
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.dotCircle,
                            color: Color(0xFF07D95A),
                            size: 20.0,
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
                          FaIcon(
                            FontAwesomeIcons.dotCircle,
                            color: Color(0xFFD1D5DB),
                            size: 20.0,
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
                              context.pushNamed('indent_site_commercial');
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
                              context.pushNamed('indent_site_dimensions');
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
                  ],
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
                              controller: _model.customerbankTextController,
                              focusNode: _model.customerbankFocusNode,
                              autofocus: false,
                              textCapitalization: TextCapitalization.words,
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
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
                                fillColor: Color(0xFFF2F2F2),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model
                                  .customerbankTextControllerValidator
                                  .asValidator(context),
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
                                setState(() => _model.sitetypeValue = val);
                                _model.isitetype = functions.checkIndexint(
                                    FFAppState().SiteType,
                                    _model.sitetypeValue,
                                    '-',
                                    'SiteTypeName',
                                    'iSiteType',
                                    false);
                                setState(() {});
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
                              controller:
                                  _model.cashdevicetypeValueController ??=
                                      FormFieldController<String>(null),
                              options: (getJsonField(
                                FFAppState().CashDeviceType,
                                r'''$..CashDeviceType''',
                                true,
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList()!,
                              onChanged: (val) async {
                                setState(
                                    () => _model.cashdevicetypeValue = val);
                                _model.idevicetype = functions.checkIndexint(
                                    FFAppState().CashDeviceType,
                                    _model.cashdevicetypeValue,
                                    '-',
                                    'CashDeviceType',
                                    'iCashDeviceType',
                                    false);
                                setState(() {});
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
                              hintText: 'Please  Select',
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
                                  _model.cashdevicemovValueController ??=
                                      FormFieldController<String>(null),
                              options: (getJsonField(
                                FFAppState().CashDeviceMovementCategory,
                                r'''$..CashDeviceMovementCategory''',
                                true,
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList()!,
                              onChanged: (val) async {
                                setState(() => _model.cashdevicemovValue = val);
                                _model.icashdevicemov = functions.checkIndexint(
                                    FFAppState().CashDeviceMovementCategory,
                                    _model.cashdevicemovValue,
                                    '-',
                                    'CashDeviceMovementCategory',
                                    'iCashDeviceMovementCategory',
                                    false);
                                setState(() {});
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
                              controller: _model.tistypeValueController ??=
                                  FormFieldController<String>(null),
                              options: (getJsonField(
                                FFAppState().TISType,
                                r'''$..TISTypeName''',
                                true,
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList()!,
                              onChanged: (val) async {
                                setState(() => _model.tistypeValue = val);
                                _model.itistype = functions.checkIndexint(
                                    FFAppState().TISType,
                                    _model.tistypeValue,
                                    '-',
                                    'TISTypeName',
                                    'iTISType',
                                    false);
                                setState(() {});
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
                              controller: _model.projecttypeValueController ??=
                                  FormFieldController<String>(null),
                              options: (getJsonField(
                                FFAppState().ProjectType,
                                r'''$..ProjectTypeName''',
                                true,
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList()!,
                              onChanged: (val) async {
                                setState(() => _model.projecttypeValue = val);
                                _model.iprojecttype = functions.checkIndexint(
                                    FFAppState().ProjectType,
                                    _model.projecttypeValue,
                                    '-',
                                    'ProjectTypeName',
                                    'iProjType',
                                    false);
                                setState(() {});
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
                              controller: _model.businesstypeValueController ??=
                                  FormFieldController<String>(null),
                              options: (getJsonField(
                                FFAppState().BusinessType,
                                r'''$..ShopTypeName''',
                                true,
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList()!,
                              onChanged: (val) async {
                                setState(() => _model.businesstypeValue = val);
                                _model.ishoptype = functions.checkIndexint(
                                    FFAppState().BusinessType,
                                    _model.businesstypeValue,
                                    '-',
                                    'ShopTypeName',
                                    'iShopType',
                                    false);
                                setState(() {});
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
                              onChanged: (val) async {
                                setState(
                                    () => _model.strategyDropDwonValue = val);
                                _model.istrategy = functions.checkIndexint(
                                    FFAppState().Strategy,
                                    _model.istrategy?.toString(),
                                    'Strategies',
                                    'Strategy',
                                    'iStrategy',
                                    false);
                                setState(() {});
                              },
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 50.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              searchTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Please select',
                              searchHintText: 'Search for an item...',
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
                              isSearchable: true,
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
                                controller: _model.poitypeValueController ??=
                                    FormFieldController<String>(null),
                                options: (getJsonField(
                                  FFAppState().POIList,
                                  r'''$..poiTypeName''',
                                  true,
                                ) as List)
                                    .map<String>((s) => s.toString())
                                    .toList()!,
                                onChanged: (val) =>
                                    setState(() => _model.poitypeValue = val),
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
                                  _model.distancefrominindentTextController,
                              focusNode: _model.distancefrominindentFocusNode,
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
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              validator: _model
                                  .distancefrominindentTextControllerValidator
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
                              controller: _model.siteAddressTextController,
                              focusNode: _model.siteAddressFocusNode,
                              autofocus: false,
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00E0E3E7),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x004B39EF),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00FF5963),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00FF5963),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: Color(0xFFF2F2F2),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              validator: _model
                                  .siteAddressTextControllerValidator
                                  .asValidator(context),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                      if (_model.statefordist != null &&
                                          _model.statefordist != '')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: FutureBuilder<ApiCallResponse>(
                                            future:
                                                SqGroup.districtAPisCall.call(
                                              istate: _model.stateValue,
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

                                              return FlutterFlowDropDown<
                                                  String>(
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
                                                  setState(() => _model
                                                      .districtValue = val);
                                                  _model.district =
                                                      functions.checkIndex(
                                                          districtDistrictAPisResponse
                                                              .jsonBody,
                                                          _model.districtValue,
                                                          'District',
                                                          'DistrictName',
                                                          'iDistrict');
                                                  setState(() {});
                                                },
                                                width:
                                                    MediaQuery.sizeOf(context)
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
                                                hintText: 'Please select',
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
                                                        0.0, 4.0, 16.0, 4.0),
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
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              return Image.asset(
                                                '',
                                              );
                                            }
                                            final stateStateListResponse =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .stateValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: List<String>.from(
                                                  (getJsonField(
                                                stateStateListResponse.jsonBody,
                                                r'''$.States..iState''',
                                                true,
                                              ) as List)
                                                      .map<String>(
                                                          (s) => s.toString())
                                                      .toList()!),
                                              optionLabels: (getJsonField(
                                                stateStateListResponse.jsonBody,
                                                r'''$.States..State''',
                                                true,
                                              ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList()!,
                                              onChanged: (val) async {
                                                setState(() =>
                                                    _model.stateValue = val);
                                                _model.statefordist =
                                                    functions.checkIndex(
                                                        stateStateListResponse
                                                            .jsonBody,
                                                        _model.stateValue,
                                                        'States',
                                                        'iState',
                                                        'State');
                                                setState(() {});
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
                                                        fontSize: 12.0,
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
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Please select',
                                              searchHintText: 'Search',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color: Color(0xFFE1E2E6),
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
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
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Text(
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
                                      ),
                                      if (_model.districtValue != null &&
                                          _model.districtValue != '')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: FutureBuilder<ApiCallResponse>(
                                            future: SqGroup
                                                .citiesAPIforStatenDistCall
                                                .call(
                                              istate: _model.stateValue,
                                              idistrict: _model.district,
                                              token: FFAppState().Token,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Image.asset(
                                                  '',
                                                );
                                              }
                                              final cityCitiesAPIforStatenDistResponse =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .cityValueController ??=
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
                                                  setState(() =>
                                                      _model.cityValue = val);
                                                  _model.trycity = functions
                                                      .istatetostatevalue(
                                                          FFAppState().City,
                                                          _model.cityValue,
                                                          'Cities',
                                                          'iCity',
                                                          'City');
                                                  setState(() {});
                                                },
                                                width:
                                                    MediaQuery.sizeOf(context)
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
                                                hintText: 'Please select',
                                                searchHintText:
                                                    'Search City...',
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
                                                        0.0, 4.0, 16.0, 4.0),
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
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          readOnly: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00E0E3E7),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x004B39EF),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00FF5963),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00FF5963),
                                                width: 1.0,
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
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
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
                                  setState(() => _model.circleValue = val),
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
                              controller: _model.aTMExisitingTextController,
                              focusNode: _model.aTMExisitingFocusNode,
                              autofocus: false,
                              textCapitalization: TextCapitalization.words,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Enter Existing',
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
                              validator: _model
                                  .aTMExisitingTextControllerValidator
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
                                  FormFieldController<String>(
                                _model.rBICategoryValue ??= 'Urban',
                              ),
                              options: (getJsonField(
                                FFAppState().RBICategory,
                                r'''$.RBICategories..Name''',
                                true,
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList()!,
                              onChanged: (val) async {
                                setState(() => _model.rBICategoryValue = val);
                                _model.iRBICategory = functions.checkIndexint(
                                    FFAppState().RBICategory,
                                    _model.iRBICategory?.toString(),
                                    'RBICategories',
                                    'Name',
                                    'iCategory',
                                    false);
                                setState(() {});
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
                              hintText: 'Please Select..',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        child: FutureBuilder<ApiCallResponse>(
                                          future: SqGroup.listSitesCall.call(
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
                                            final siteSourcedListSitesResponse =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .siteSourcedValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: ['HPY', 'Bank', 'SSM'],
                                              onChanged: (val) => setState(() =>
                                                  _model.siteSourcedValue =
                                                      val),
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Please select',
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
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                  .onofsiteValueController ??=
                                              FormFieldController<String>(null),
                                          options: ['Onsite', 'Offsite'],
                                          onChanged: (val) async {
                                            setState(() =>
                                                _model.onofsiteValue = val);
                                            _model.onofSite = functions
                                                .dropdownsONSITE(
                                                    _model.onofsiteValue!)
                                                .toString();
                                            setState(() {});
                                          },
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
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
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
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
                              controller: _model.mrgNameTextController,
                              focusNode: _model.mrgNameFocusNode,
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
                              validator: _model.mrgNameTextControllerValidator
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
                              controller: _model.mrgNoTextController,
                              focusNode: _model.mrgNoFocusNode,
                              autofocus: false,
                              textCapitalization: TextCapitalization.words,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Enter Manger Numbrer',
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
                              validator: _model.mrgNoTextControllerValidator
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
                              controller:
                                  _model.duplicatesiteValueController ??=
                                      FormFieldController<String>(null),
                              options: ['Yes', 'No'],
                              onChanged: (val) async {
                                setState(() => _model.duplicatesiteValue = val);
                                _model.iduplicatesite = functions
                                    .dropdown(_model.duplicatesiteValue!);
                                _model.duplicatestring = functions
                                    .dropdown(_model.duplicatesiteValue!)
                                    .toString();
                                setState(() {});
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
                              controller:
                                  _model.sitevisitedbyValueController ??=
                                      FormFieldController<String>(null),
                              options: (getJsonField(
                                FFAppState().visitedbydeptapi,
                                r'''$..Department''',
                                true,
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList()!,
                              onChanged: (val) async {
                                setState(() => _model.sitevisitedbyValue = val);
                                _model.isiteddep = functions.checkIndexint(
                                    FFAppState().SiteVisitedBy,
                                    _model.sitevisitedbyValue,
                                    '-',
                                    'Department',
                                    'idepartment',
                                    false);
                                _model.isitevisitedby = functions.checkIndexint(
                                    FFAppState().visitedbydeptapi,
                                    _model.sitevisitedbyValue,
                                    '-',
                                    'Department',
                                    'idepartment',
                                    false);
                                setState(() {});
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
                                token: FFAppState().Token,
                                department: FFAppState().department.toString(),
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
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final firstsitevisitedbyGetDepartmentWiseUserAPIResponse =
                                    snapshot.data!;

                                return FlutterFlowDropDown<String>(
                                  controller: _model
                                          .firstsitevisitedbyValueController ??=
                                      FormFieldController<String>(null),
                                  options: (getJsonField(
                                    firstsitevisitedbyGetDepartmentWiseUserAPIResponse
                                        .jsonBody,
                                    r'''$..UserName''',
                                    true,
                                  ) as List)
                                      .map<String>((s) => s.toString())
                                      .toList()!,
                                  onChanged: (val) async {
                                    setState(() =>
                                        _model.firstsitevisitedbyValue = val);
                                    _model.iSiteVisitedByName =
                                        functions.checkIndexint(
                                            firstsitevisitedbyGetDepartmentWiseUserAPIResponse
                                                .jsonBody,
                                            _model.firstsitevisitedbyValue,
                                            '-',
                                            'UserName',
                                            'iUser',
                                            false);
                                    setState(() {});
                                  },
                                  width: 300.0,
                                  height: 56.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Please select',
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
                                  return Image.asset(
                                    '',
                                  );
                                }
                                final secondsitevisitedbyGetSecondSiteVisitersResponse =
                                    snapshot.data!;

                                return FlutterFlowDropDown<String>(
                                  controller: _model
                                          .secondsitevisitedbyValueController ??=
                                      FormFieldController<String>(null),
                                  options: (getJsonField(
                                    FFAppState().secondsitevisiterNew,
                                    r'''$..UserName''',
                                    true,
                                  ) as List)
                                      .map<String>((s) => s.toString())
                                      .toList()!,
                                  onChanged: (val) async {
                                    setState(() =>
                                        _model.secondsitevisitedbyValue = val);
                                    _model.iSecondSiteVisitedByName =
                                        functions.checkIndexint(
                                            secondsitevisitedbyGetSecondSiteVisitersResponse
                                                .jsonBody,
                                            _model.secondsitevisitedbyValue,
                                            '-',
                                            'UserName',
                                            'iUser',
                                            false);
                                    setState(() {});
                                  },
                                  width: 300.0,
                                  height: 56.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Please select',
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
                            var _shouldSetState = false;
                            if (_model.ideparmrnt == 1) {
                              if ((_model.customerbankTextController.text != null &&
                                      _model.customerbankTextController.text !=
                                          '') &&
                                  (_model.strategyDropDwonValue != null &&
                                      _model.strategyDropDwonValue != '') &&
                                  (_model.siteAddressTextController.text != null &&
                                      _model.siteAddressTextController.text !=
                                          '') &&
                                  (_model.distancefrominindentTextController.text !=
                                          null &&
                                      _model.distancefrominindentTextController.text !=
                                          '') &&
                                  (_model.stateValue != null &&
                                      _model.stateValue != '') &&
                                  (_model.cityValue != null &&
                                      _model.cityValue != '') &&
                                  (_model.circleValue != null &&
                                      _model.circleValue != '') &&
                                  (_model.pincodeTextController.text != null &&
                                      _model.pincodeTextController.text !=
                                          '') &&
                                  (_model.siteAddressTextController.text != null &&
                                      _model.siteAddressTextController.text !=
                                          '') &&
                                  (_model.rBICategoryValue != null &&
                                      _model.rBICategoryValue != '') &&
                                  (_model.siteSourcedValue != null &&
                                      _model.siteSourcedValue != '') &&
                                  (_model.onofsiteValue != null &&
                                      _model.onofsiteValue != '') &&
                                  (_model.districtValue != null &&
                                      _model.districtValue != '') &&
                                  (_model.projecttypeValue != null &&
                                      _model.projecttypeValue != '') &&
                                  (_model.sitevisitedbyValue != null &&
                                      _model.sitevisitedbyValue != '') &&
                                  (_model.tistypeValue != null &&
                                      _model.tistypeValue != '') &&
                                  (_model.projecttypeValue != null &&
                                      _model.projecttypeValue != '') &&
                                  (_model.duplicatesiteValue != null &&
                                      _model.duplicatesiteValue != '')) {
                                _model.updateDOAdetailsfirstdept = await SqGroup
                                    .dOADetailsstepFIRSTworddocCall
                                    .call(
                                  customerBank:
                                      _model.customerbankTextController.text,
                                  district: _model.districtValue,
                                  strategy: valueOrDefault<String>(
                                    _model.strategyDropDwonValue,
                                    '14',
                                  ),
                                  circle: valueOrDefault<String>(
                                    _model.circleValue,
                                    '30',
                                  ),
                                  city: _model.cityValue,
                                  iSiteType: valueOrDefault<int>(
                                    _model.isitetype,
                                    1,
                                  ),
                                  iCashDeviceType: valueOrDefault<int>(
                                    _model.idevicetype,
                                    1,
                                  ),
                                  iCashDeviceMovementCategory:
                                      valueOrDefault<int>(
                                    _model.icashdevicemov,
                                    1,
                                  ),
                                  iTisType: valueOrDefault<int>(
                                    _model.itistype,
                                    1,
                                  ),
                                  iShopType: valueOrDefault<int>(
                                    _model.ishoptype,
                                    1,
                                  ),
                                  token: FFAppState().Token,
                                  locationName: null,
                                  distance: _model
                                      .distancefrominindentTextController.text,
                                  address:
                                      _model.siteAddressTextController.text,
                                  state: _model.statefordist,
                                  pincode: _model.pincodeTextController.text,
                                  atmExisting:
                                      _model.aTMExisitingTextController.text,
                                  landMark:
                                      _model.aTMExisitingTextController.text,
                                  rBICategory: valueOrDefault<String>(
                                    _model.rBICategoryValue,
                                    '1',
                                  ),
                                  sitesourcedby: _model.siteSourcedValue,
                                  isOnSite: valueOrDefault<String>(
                                    _model.onofSite,
                                    '1',
                                  ),
                                  isDuplicateSite: valueOrDefault<String>(
                                    _model.iduplicatesite.toString(),
                                    '1',
                                  ),
                                  iSiteVisitedBy: valueOrDefault<int>(
                                    _model.isitevisitedby,
                                    2,
                                  ),
                                  iSiteVisitedByName: valueOrDefault<int>(
                                    _model.iSiteVisitedByName,
                                    2966,
                                  ),
                                  iSecondSiteVisitedByName: valueOrDefault<int>(
                                    _model.iSecondSiteVisitedByName,
                                    2966,
                                  ),
                                  iProjType: valueOrDefault<int>(
                                    _model.iprojecttype,
                                    4,
                                  ),
                                  indentId: getJsonField(
                                    FFAppState().indentSelectedSite,
                                    r'''$.IndentId''',
                                  ).toString(),
                                  targetBank: null,
                                  siteId: null,
                                  iindent: null,
                                  mgrName: _model.mrgNameTextController.text,
                                  mgrNo: _model.mrgNoTextController.text,
                                  location:
                                      _model.siteAddressTextController.text,
                                  isFromSiteref: false,
                                  centre: null,
                                  comment: null,
                                  lastModStamp: null,
                                  isHold: null,
                                  istage: null,
                                  iStageText: null,
                                  androidKey: null,
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

                                _shouldSetState = true;
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_model.sitetypeValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content:
                                            Text('Please select Site Type'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.cashdevicetypeValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please select Cash Device Type'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.cashdevicemovValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please Select Cash Device Movement Category '),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.tistypeValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please select Tis Type'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.projecttypeValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content:
                                            Text('Please Select ProjectType'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.businesstypeValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Business Type'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.strategyDropDwonValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Select Strategy'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.districtValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Select District'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.stateValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Select State'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.cityValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Select City'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.circleValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Select Circle'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.rBICategoryValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert '),
                                        content:
                                            Text('Please Select RBI Category'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.siteSourcedValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content:
                                            Text('Please Select Site Sourced'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.onofsiteValue == null) {
                                  return;
                                }
                                if (_model.duplicatesiteValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content:
                                            Text('Please Select Duplicate'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.sitevisitedbyValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please Select Site Visited By'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.firstsitevisitedbyValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please Select First Site Visited By'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if ((String var1) {
                                  return var1 ==
                                          "Data for Step-1 Successfully Updated."
                                      ? true
                                      : false;
                                }(getJsonField(
                                  (_model.updateDOAdetailsfirstdept?.jsonBody ??
                                      ''),
                                  r'''$.Msg''',
                                ).toString())) {
                                  FFAppState().SiteId = getJsonField(
                                    (_model.updateDOAdetailsfirstdept
                                            ?.jsonBody ??
                                        ''),
                                    r'''$.SiteId''',
                                  ).toString();
                                  setState(() {});
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text(getJsonField(
                                          (_model.updateDOAdetailsfirstdept
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.SiteId''',
                                        ).toString()),
                                        content: Text(getJsonField(
                                          (_model.updateDOAdetailsfirstdept
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.Msg''',
                                        ).toString()),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );

                                  context.pushNamed(
                                      'indent_site_landlord_details');
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text(
                                            'Alert (UpdateDOAdetailsfirst)'),
                                        content: Text((_model
                                                    .updateDOAdetailsfirstdept
                                                    ?.jsonBody ??
                                                '')
                                            .toString()),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Alert'),
                                      content: Text('Please fill Details'),
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
                                if (_shouldSetState) setState(() {});
                                return;
                              }
                            } else {
                              if ((_model.sitetypeValue != null &&
                                      _model.sitetypeValue != '') &&
                                  (_model.tistypeValue != null &&
                                      _model.tistypeValue != '') &&
                                  (_model.projecttypeValue != null &&
                                      _model.projecttypeValue != '') &&
                                  (_model.cashdevicetypeValue != null &&
                                      _model.cashdevicetypeValue != '') &&
                                  (_model.sitevisitedbyValue != null &&
                                      _model.sitevisitedbyValue != '') &&
                                  (_model.cashdevicemovValue != null &&
                                      _model.cashdevicemovValue != '') &&
                                  (_model.firstsitevisitedbyValue != null &&
                                      _model.firstsitevisitedbyValue != '')) {
                                _model.updateDOAdetailsfirst = await SqGroup
                                    .dOADetailsstepFIRSTworddocCall
                                    .call(
                                  customerBank:
                                      _model.customerbankTextController.text,
                                  district: _model.districtValue,
                                  strategy: valueOrDefault<String>(
                                    _model.strategyDropDwonValue,
                                    '14',
                                  ),
                                  circle: valueOrDefault<String>(
                                    _model.circleValue,
                                    '30',
                                  ),
                                  city: _model.cityValue,
                                  iSiteType: valueOrDefault<int>(
                                    _model.isitetype,
                                    1,
                                  ),
                                  iCashDeviceType: valueOrDefault<int>(
                                    _model.idevicetype,
                                    1,
                                  ),
                                  iCashDeviceMovementCategory:
                                      valueOrDefault<int>(
                                    _model.icashdevicemov,
                                    1,
                                  ),
                                  iTisType: valueOrDefault<int>(
                                    _model.itistype,
                                    1,
                                  ),
                                  iShopType: valueOrDefault<int>(
                                    _model.ishoptype,
                                    1,
                                  ),
                                  token: FFAppState().Token,
                                  locationName: null,
                                  distance: _model
                                      .distancefrominindentTextController.text,
                                  address:
                                      _model.siteAddressTextController.text,
                                  state: _model.statefordist,
                                  pincode: _model.pincodeTextController.text,
                                  atmExisting:
                                      _model.aTMExisitingTextController.text,
                                  landMark:
                                      _model.aTMExisitingTextController.text,
                                  rBICategory: valueOrDefault<String>(
                                    _model.rBICategoryValue,
                                    '1',
                                  ),
                                  sitesourcedby: valueOrDefault<String>(
                                    _model.siteSourcedValue,
                                    'HPY',
                                  ),
                                  isOnSite: valueOrDefault<String>(
                                    _model.onofSite,
                                    '1',
                                  ),
                                  isDuplicateSite: valueOrDefault<String>(
                                    _model.iduplicatesite.toString(),
                                    '1',
                                  ),
                                  iSiteVisitedBy: valueOrDefault<int>(
                                    _model.isitevisitedby,
                                    2,
                                  ),
                                  iSiteVisitedByName: valueOrDefault<int>(
                                    _model.iSiteVisitedByName,
                                    2966,
                                  ),
                                  iSecondSiteVisitedByName: valueOrDefault<int>(
                                    _model.iSecondSiteVisitedByName,
                                    2966,
                                  ),
                                  iProjType: valueOrDefault<int>(
                                    _model.iprojecttype,
                                    4,
                                  ),
                                  indentId: getJsonField(
                                    FFAppState().indentSelectedSite,
                                    r'''$.IndentId''',
                                  ).toString(),
                                  targetBank: null,
                                  siteId: null,
                                  iindent: null,
                                  mgrName: _model.mrgNameTextController.text,
                                  mgrNo: _model.mrgNoTextController.text,
                                  location:
                                      _model.siteAddressTextController.text,
                                  isFromSiteref: false,
                                  centre: null,
                                  comment: null,
                                  lastModStamp: null,
                                  isHold: null,
                                  istage: null,
                                  iStageText: null,
                                  androidKey: null,
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

                                _shouldSetState = true;
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_model.sitetypeValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content:
                                            Text('Please select Site Type'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.cashdevicetypeValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please select Cash Device Type'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.cashdevicemovValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please Select Cash Device Movement Category '),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.tistypeValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please select Tis Type'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.projecttypeValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content:
                                            Text('Please Select ProjectType'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.businesstypeValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Business Type'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.strategyDropDwonValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Select Strategy'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.districtValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Select District'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.stateValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Select State'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.cityValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Select City'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.circleValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text('Please Select Circle'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.rBICategoryValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert '),
                                        content:
                                            Text('Please Select RBI Category'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.siteSourcedValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content:
                                            Text('Please Select Site Sourced'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.onofsiteValue == null) {
                                  return;
                                }
                                if (_model.duplicatesiteValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content:
                                            Text('Please Select Duplicate'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.sitevisitedbyValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please Select Site Visited By'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if (_model.firstsitevisitedbyValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alert'),
                                        content: Text(
                                            'Please Select First Site Visited By'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
                                if ((String var1) {
                                  return var1 ==
                                          "Data for Step-1 Successfully Updated."
                                      ? true
                                      : false;
                                }(getJsonField(
                                  (_model.updateDOAdetailsfirst?.jsonBody ??
                                      ''),
                                  r'''$.Msg''',
                                ).toString())) {
                                  FFAppState().SiteId = getJsonField(
                                    (_model.updateDOAdetailsfirst?.jsonBody ??
                                        ''),
                                    r'''$.SiteId''',
                                  ).toString();
                                  setState(() {});
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text(getJsonField(
                                          (_model.updateDOAdetailsfirst
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.SiteId''',
                                        ).toString()),
                                        content: Text(getJsonField(
                                          (_model.updateDOAdetailsfirst
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.Msg''',
                                        ).toString()),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );

                                  context.pushNamed(
                                      'indent_site_landlord_details');
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text(
                                            'Alert (UpdateDOAdetailsfirst)'),
                                        content: Text((_model
                                                    .updateDOAdetailsfirst
                                                    ?.jsonBody ??
                                                '')
                                            .toString()),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Alert'),
                                      content: Text('Please fill Field'),
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
                            }

                            if (_shouldSetState) setState(() {});
                          },
                          text: 'Save & Next',
                          options: FFButtonOptions(
                            width: 118.0,
                            height: 40.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFFF0026),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
      ),
    );
  }
}
