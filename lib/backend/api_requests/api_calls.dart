import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start SQ Group Code

class SqGroup {
  static String baseUrl =
      'https://workbenchuat.hitachi-payments.com:9443/service1.svc';
  static Map<String, String> headers = {};
  static DashboardCall dashboardCall = DashboardCall();
  static StateListCall stateListCall = StateListCall();
  static GetCashDeviceApiCall getCashDeviceApiCall = GetCashDeviceApiCall();
  static GetProjectTypeCall getProjectTypeCall = GetProjectTypeCall();
  static GetSiteTypeForSiteEvaluationCall getSiteTypeForSiteEvaluationCall =
      GetSiteTypeForSiteEvaluationCall();
  static GetCashDeviceMovementCategoryForSiteEvaluationCall
      getCashDeviceMovementCategoryForSiteEvaluationCall =
      GetCashDeviceMovementCategoryForSiteEvaluationCall();
  static GetShopTypeSiteCall getShopTypeSiteCall = GetShopTypeSiteCall();
  static LoginAPICall loginAPICall = LoginAPICall();
  static IndentsListCall indentsListCall = IndentsListCall();
  static UpdateDOAdetailsfirstCall updateDOAdetailsfirstCall =
      UpdateDOAdetailsfirstCall();
  static UpdateDOADetailssecondCall updateDOADetailssecondCall =
      UpdateDOADetailssecondCall();
  static StaregtyCall staregtyCall = StaregtyCall();
  static RbiCall rbiCall = RbiCall();
  static CityCall cityCall = CityCall();
  static StatesCall statesCall = StatesCall();
  static CircleCall circleCall = CircleCall();
}

class DashboardCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard',
      apiUrl: '${SqGroup.baseUrl}/getUserReview/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class StateListCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'State List',
      apiUrl: '${SqGroup.baseUrl}/getStates/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? states(dynamic response) => getJsonField(
        response,
        r'''$.States''',
        true,
      ) as List?;
}

class GetCashDeviceApiCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get Cash DeviceApi',
      apiUrl: '${SqGroup.baseUrl}/getCashDeviceApi/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? states(dynamic response) => getJsonField(
        response,
        r'''$.States''',
        true,
      ) as List?;
}

class GetProjectTypeCall {
  Future<ApiCallResponse> call({
    int? icust,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Project Type',
      apiUrl:
          '${SqGroup.baseUrl}/GetProjectTypeForSiteEvaluation/icust=${icust}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? states(dynamic response) => getJsonField(
        response,
        r'''$.States''',
        true,
      ) as List?;
}

class GetSiteTypeForSiteEvaluationCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetSite TypeFor SiteEvaluation ',
      apiUrl: '${SqGroup.baseUrl}/GetSiteTypeForSiteEvaluation/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? states(dynamic response) => getJsonField(
        response,
        r'''$.States''',
        true,
      ) as List?;
}

class GetCashDeviceMovementCategoryForSiteEvaluationCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Cash Device Movement CategoryForSiteEvaluation',
      apiUrl:
          '${SqGroup.baseUrl}/GetCashDeviceMovementCategoryForSiteEvaluation/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? states(dynamic response) => getJsonField(
        response,
        r'''$.States''',
        true,
      ) as List?;
}

class GetShopTypeSiteCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get shop type site',
      apiUrl: '${SqGroup.baseUrl}/GetShopTypeForSiteEvaluation/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? states(dynamic response) => getJsonField(
        response,
        r'''$.States''',
        true,
      ) as List?;
}

class LoginAPICall {
  Future<ApiCallResponse> call({
    String? userName = '',
    String? password = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UserName": "${userName}",
  "Password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginAPI',
      apiUrl: '${SqGroup.baseUrl}/LoginCheck',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IndentsListCall {
  Future<ApiCallResponse> call({
    String? state = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Indents List',
      apiUrl: '${SqGroup.baseUrl}/GetIndents/Token=${token}&state=${state}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic list(dynamic response) => getJsonField(
        response,
        r'''$.indents''',
      );
}

class UpdateDOAdetailsfirstCall {
  Future<ApiCallResponse> call({
    String? indentId = '',
    String? siteId = '',
    String? targetBank = '',
    String? district = '',
    String? centre = '',
    String? comment = '',
    String? lastModStamp = '',
    String? isHold = '',
    String? istage = '',
    String? iStageText = '',
    String? locationName = '',
    String? androidKey = '',
    String? customerBank = '',
    String? strategy = '',
    String? location = '',
    String? distance = '',
    String? state = '',
    String? city = '',
    String? circle = '',
    String? pincode = '',
    String? address = '',
    String? landMark = '',
    String? rBICategory = '',
    String? sitesourcedby = '',
    String? isOnSite = '',
    String? mgrName = '',
    String? mgrNo = '',
    int? iProjType,
    int? iSiteType,
    int? iTisType,
    int? iShopType,
    int? iCashDeviceType,
    int? iSiteVisitedBy,
    int? iCashDeviceMovementCategory,
    String? atmExisting = '',
    bool? isDuplicateSite = false,
    int? iSiteVisitedByName,
    int? iSecondSiteVisitedByName,
    String? waterlog = '',
    String? atmaval = '',
    String? errCnt = '',
    String? msg = '',
    String? isWB = '',
    bool? isFromSiteref,
    String? companyName = '',
    String? employeeName = '',
    String? contactNumber = '',
    String? emailId = '',
    String? iindent = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "IndentId": "${indentId}",
  "SiteId": "${siteId}",
  "TargetBank": "${targetBank}",
  "District": "${district}",
  "Centre": "${centre}",
  "Comment": "${comment}",
  "LastModStamp": "${lastModStamp}",
  "IsHold": "${isHold}",
  "Istage": "${istage}",
  "IStageText": "${iStageText}",
  "LocationName": "${locationName}",
  "Token": "${token}",
  "AndroidKey": "${androidKey}",
  "sitedetails": {
    "CustomerBank": "${customerBank}",
    "Strategy": "${strategy}",
    "Location": "${location}",
    "Distance": "${distance}",
    "State": "${state}",
    "City": "${city}",
    "Circle": "${circle}",
    "Pincode": "${pincode}",
    "Address": "${address}",
    "LandMark": "${landMark}",
    "RBICategory": "${rBICategory}",
    "sitesourcedby": "${sitesourcedby}",
    "isOnSite": "${isOnSite}",
    "District": "${district}",
    "mgrName": "${mgrName}",
    "mgrNo": "${mgrNo}",
    "iProjType": "${iProjType}",
    "iSiteType": "${iSiteType}",
    "iTisType": "${iTisType}",
    "iShopType": "${iShopType}",
    "iCashDeviceType": "${iCashDeviceType}",
    "iSiteVisitedBy": "${iSiteVisitedBy}",
    "iCashDeviceMovementCategory": "${iCashDeviceMovementCategory}",
    "ATM_EXISTING": "${atmExisting}",
    "isDuplicateSite": "${isDuplicateSite}",
    "iSiteVisitedByName": "${iSiteVisitedByName}",
    "iSecondSiteVisitedByName": "${iSecondSiteVisitedByName}",
    "waterlog": "${waterlog}",
    "atmaval": "${atmaval}"
  },
  "errCnt": "${errCnt}",
  "Msg": "${msg}",
  "isWB": "${isWB}",
  "isFromSiteref": "${isFromSiteref}",
  "referalpersondetails": {
    "companyName": "${companyName}",
    "EmployeeName": "${employeeName}",
    "ContactNumber": "${contactNumber}",
    "EmailId": "${emailId}",
    "iindent": "${iindent}"
  }
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update DOAdetailsfirst',
      apiUrl: '${SqGroup.baseUrl}/Update_DOADetails1',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateDOADetailssecondCall {
  Future<ApiCallResponse> call({
    String? indentId = '',
    String? siteId = '',
    String? targetBank = '',
    String? district = '',
    String? centre = '',
    String? comment = '',
    String? lastModStamp = '',
    String? isHold = '',
    String? istage = '',
    String? iStageText = '',
    String? locationName = '',
    String? androidKey = '',
    String? landLordName = '',
    String? lLPercent = '',
    String? landLordNameonCheque = '',
    String? chequePercent = '',
    String? address = '',
    String? landMark = '',
    String? contact1 = '',
    String? contact2 = '',
    String? lLBankName = '',
    String? bankAcNo = '',
    String? branchName = '',
    String? emailId = '',
    String? fax = '',
    String? iFSCCode = '',
    String? pANCard = '',
    String? aadharcard = '',
    String? pincode = '',
    String? iState = '',
    String? iCity = '',
    String? refeId = '',
    String? refeName = '',
    String? errCnt = '',
    String? msg = '',
    String? isWB = '',
    bool? isFromSiteref,
    String? companyName = '',
    String? employeeName = '',
    String? contactNumber = '',
    String? iindent = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "IndentId": "${indentId}",
  "SiteId": "${siteId}",
  "TargetBank": "${targetBank}",
  "District": "${district}",
  "Centre": "${centre}",
  "Comment": "${comment}",
  "LastModStamp": "${lastModStamp}",
  "IsHold": "${isHold}",
  "Istage": "${istage}",
  "IStageText": "${iStageText}",
  "LocationName": "${locationName}",
  "Token": "${token}",
  "AndroidKey": "${androidKey}",
  "LlDetails": {
    "LandLordName": "${landLordName}",
    "LLPercent": "${lLPercent}",
    "LandLordNameonCheque": "${landLordNameonCheque}",
    "ChequePercent": "${chequePercent}",
    "Address": "${address}",
    "LandMark": "${landMark}",
    "Contact1": "${contact1}",
    "Contact2": "${contact2}",
    "LLBankName": "${lLBankName}",
    "BankAcNo": "${bankAcNo}",
    "BranchName": "${branchName}",
    "EmailId": "${emailId}",
    "Fax": "${fax}",
    "IFSCCode": "${iFSCCode}",
    "PANCard": "${pANCard}",
    "Aadharcard": "${aadharcard}",
    "Pincode": "${pincode}",
    "iState": "${iState}",
    "iCity": "${iCity}",
    "refeId": "${refeId}",
    "RefeName": "${refeName}"
  },
  "errCnt": "${errCnt}",
  "Msg": "${msg}",
  "isWB": "${isWB}",
  "isFromSiteref": "${isFromSiteref}",
  "referalpersondetails": {
    "companyName": "${companyName}",
    "EmployeeName": "${employeeName}",
    "ContactNumber": "${contactNumber}",
    "EmailId": "${emailId}",
    "iindent": "${iindent}"
  }
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateDOADetailssecond',
      apiUrl: '${SqGroup.baseUrl}/Update_DOADetails2',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class StaregtyCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'staregty',
      apiUrl: '${SqGroup.baseUrl}/getStrategies/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RbiCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'RBI',
      apiUrl: '${SqGroup.baseUrl}/getRBICategory/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CityCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'City',
      apiUrl: '${SqGroup.baseUrl}/getCities/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class StatesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'states',
      apiUrl: '${SqGroup.baseUrl}/getStates/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CircleCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'circle',
      apiUrl: '${SqGroup.baseUrl}/getCircles/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End SQ Group Code

class LoginCheckCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UserName": "${userName}",
  "Password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginCheck',
      apiUrl:
          'https://workbenchuat.hitachi-payments.com:9443/service1.svc/LoginCheck',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
