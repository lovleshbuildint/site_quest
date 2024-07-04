import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start SQ Group Code

class SqGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
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
  static CircleCall circleCall = CircleCall();
  static MasterCall masterCall = MasterCall();
  static TisCall tisCall = TisCall();
  static RBICitiesCall rBICitiesCall = RBICitiesCall();
  static StymgetCashDeviceApiCall stymgetCashDeviceApiCall =
      StymgetCashDeviceApiCall();
  static GetsitevisiteddbydeptAPICall getsitevisiteddbydeptAPICall =
      GetsitevisiteddbydeptAPICall();
  static GetDepartmentWiseUserAPICall getDepartmentWiseUserAPICall =
      GetDepartmentWiseUserAPICall();
  static GetSecondSiteVisitersCall getSecondSiteVisitersCall =
      GetSecondSiteVisitersCall();
  static GetUserReviewByDateCall getUserReviewByDateCall =
      GetUserReviewByDateCall();
  static ConfirmDOADetailsubmissionCall confirmDOADetailsubmissionCall =
      ConfirmDOADetailsubmissionCall();
  static UpdatenearestATMCall updatenearestATMCall = UpdatenearestATMCall();
  static UpdateDOADetailsfiveCall updateDOADetailsfiveCall =
      UpdateDOADetailsfiveCall();
  static UpdateDOADetailsfourCall updateDOADetailsfourCall =
      UpdateDOADetailsfourCall();
  static UpdateDOADetailsthreeCall updateDOADetailsthreeCall =
      UpdateDOADetailsthreeCall();
  static GetCustomerBankCall getCustomerBankCall = GetCustomerBankCall();
  static GetIndentBankCall getIndentBankCall = GetIndentBankCall();
  static DOADetailssteponeCall dOADetailssteponeCall = DOADetailssteponeCall();
  static DOADetailssteptwoCall dOADetailssteptwoCall = DOADetailssteptwoCall();
  static DOADetailsstepthreeCall dOADetailsstepthreeCall =
      DOADetailsstepthreeCall();
  static DOADetailsstepfourCall dOADetailsstepfourCall =
      DOADetailsstepfourCall();
  static DOADetailsstepfiveCall dOADetailsstepfiveCall =
      DOADetailsstepfiveCall();
  static DOADetailsstepsevenCall dOADetailsstepsevenCall =
      DOADetailsstepsevenCall();
  static UploadImageCall uploadImageCall = UploadImageCall();
  static GetDOADetailsImageCall getDOADetailsImageCall =
      GetDOADetailsImageCall();
  static LogOutCall logOutCall = LogOutCall();
  static ForgotPwdCall forgotPwdCall = ForgotPwdCall();
  static GetPOITypeForSiteEvaluationCall getPOITypeForSiteEvaluationCall =
      GetPOITypeForSiteEvaluationCall();
  static ListSitesCall listSitesCall = ListSitesCall();
  static DistrictAPisCall districtAPisCall = DistrictAPisCall();
  static StatenewCall statenewCall = StatenewCall();
  static RBInewCall rBInewCall = RBInewCall();
  static DOADetailsstepFIRSTworddocCall dOADetailsstepFIRSTworddocCall =
      DOADetailsstepFIRSTworddocCall();
  static DOADetailsstepSECONDworddocCall dOADetailsstepSECONDworddocCall =
      DOADetailsstepSECONDworddocCall();
  static DOADetailsstepTHIRDworddocCall dOADetailsstepTHIRDworddocCall =
      DOADetailsstepTHIRDworddocCall();
  static SecondSiteVisitersNEWCall secondSiteVisitersNEWCall =
      SecondSiteVisitersNEWCall();
  static GetCRAAgencCall getCRAAgencCall = GetCRAAgencCall();
  static GetIndentsByStatesnewCall getIndentsByStatesnewCall =
      GetIndentsByStatesnewCall();
  static CitiesAPIforStatenDistCall citiesAPIforStatenDistCall =
      CitiesAPIforStatenDistCall();
}

class DashboardCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard',
      apiUrl: '${baseUrl}/getUserReview/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StateListCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'State List',
      apiUrl: '${baseUrl}/getStates/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get Cash DeviceApi',
      apiUrl: '${baseUrl}/getCashDeviceApi/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Project Type',
      apiUrl: '${baseUrl}/GetProjectTypeForSiteEvaluation/icust=${icust}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetSite TypeFor SiteEvaluation ',
      apiUrl: '${baseUrl}/GetSiteTypeForSiteEvaluation/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Cash Device Movement CategoryForSiteEvaluation',
      apiUrl:
          '${baseUrl}/GetCashDeviceMovementCategoryForSiteEvaluation/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get shop type site',
      apiUrl: '${baseUrl}/GetShopTypeForSiteEvaluation/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "UserName": "${userName}",
  "Password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginAPI',
      apiUrl: '${baseUrl}/LoginCheck',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class IndentsListCall {
  Future<ApiCallResponse> call({
    String? state = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Indents List',
      apiUrl: '${baseUrl}/GetIndents/Token=${token}&state=${state}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
    int? iIndent,
    int? iDOAStrategy,
    String? locationName = '',
    String? distFromIndent = '',
    int? iState,
    int? iDistrict,
    int? iCity,
    int? pinCode,
    String? address1 = '',
    String? address2 = 'Null',
    String? landMark = '',
    int? iRBICategory,
    String? siteSourcedBy = '',
    String? isOnSite = '',
    int? iCircle,
    String? mgrName = '',
    String? mgrNo = '',
    int? iProjType,
    int? iSiteType,
    int? iTisType,
    int? iShopType,
    int? iCashDeviceType,
    int? iCashDeviceMovementCategory,
    String? atmExisting = '',
    String? isDuplicateSite = '',
    int? iSiteVisitedBy,
    int? iSiteVisitedByName,
    String? waterlog = '',
    String? atmaval = '',
    int? iSecondSiteVisitedByName,
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "IndentId": "${iIndent}",
  "DOAStrategyId": "${iDOAStrategy}",
  "LocationName": "${locationName}",
  "DistFromIndent": "${distFromIndent}",
  "StateId": "${iState}",
  "DistrictId": "${iDistrict}",
  "CityId": "${iCity}",
  "PinCode": "${pinCode}",
  "Address1": "${address1}",
  "Address2": "${address2}",
  "LandMark": "${landMark}",
  "RBICategoryId": "${iRBICategory}",
  "SiteSourcedBy": "${siteSourcedBy}",
  "IsOnSite": "${isOnSite}",
  "CircleId": "${iCircle}",
  "Token": "${token}",
  "ManagerName": "${mgrName}",
  "ManagerNumber": "${mgrNo}",
  "ProjectTypeId": "${iProjType}",
  "SiteTypeId": "${iSiteType}",
  "TisTypeId": "${iTisType}",
  "ShopTypeId": "${iShopType}",
  "CashDeviceTypeId": "${iCashDeviceType}",
  "CashDeviceMovementCategoryId": "${iCashDeviceMovementCategory}",
  "ATM_EXISTING": "${atmExisting}",
  "isDuplicateSite":"${isDuplicateSite}",
"iSiteVisitedBy":${iSiteVisitedBy},
"iSiteVisitedByName":${iSiteVisitedByName},
"waterlog":"${waterlog}",
"atmaval":"${atmaval}",
"iSecondSiteVisitedByName":${iSecondSiteVisitedByName},
"Token":"${token}"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update DOAdetailsfirst',
      apiUrl: '${baseUrl}/Update_DOADetails1',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateDOADetailssecondCall {
  Future<ApiCallResponse> call({
    String? iIndent = '',
    String? landLordName = '',
    String? landLordPercentage = '',
    String? address1 = '',
    String? address2 = 'Null',
    String? landMark = '',
    int? contact1,
    int? contact2,
    int? iIndentBank,
    String? accountNo = '',
    String? branchName = '',
    String? chequeInFavour = '',
    String? chequePercent = '',
    String? emailId = '',
    String? fax = '',
    String? iFSCCode = '',
    String? pANCard = '',
    String? aadharcard = '',
    String? pincode = '',
    int? iState,
    int? iCity,
    int? refeId,
    String? refeName = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "iIndent": "${iIndent}",
  "Token": "${token}",
  "LandLordName": "${landLordName}",
  "LandLordPercentage": "${landLordPercentage}",
  "Address1": "${address1}",
  "Address2": "${address2}",
  "LandMark": "${landMark}",
  "Contact1": "${contact1}",
  "Contact2": "${contact2}",
  "iIndentBank": "${iIndentBank}",
  "AccountNo": "${accountNo}",
  "BranchName": "${branchName}",
  "ChequeInFavour": "${chequeInFavour}",
  "ChequePercent": "${chequePercent}",
  "EmailId": "${emailId}",
  "Fax": "${fax}",
  "IFSCCode": "${iFSCCode}",
  "PANCard": "${pANCard}",
  "Aadharcard": "${aadharcard}",
  "Pincode": "${pincode}",
  "iState": "${iState}",
  "iCity": "${iCity}",
  "refeId": "${refeId}",
  "refeName": "${refeName}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateDOADetailssecond',
      apiUrl: '${baseUrl}/Update_DOADetails2',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StaregtyCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'staregty',
      apiUrl: '${baseUrl}/getStrategies/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RbiCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'RBI',
      apiUrl: '${baseUrl}/getRBICategory/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CityCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'City',
      apiUrl: '${baseUrl}/getCities/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CircleCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'circle',
      apiUrl: '${baseUrl}/getCircles/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MasterCall {
  Future<ApiCallResponse> call({
    String? state = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'master',
      apiUrl: '${baseUrl}/getMasters/Token=${token}&State=${state}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'State': state,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TisCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'tis',
      apiUrl: '${baseUrl}/GetTISTypeForSiteEvaluation/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RBICitiesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'RBICities',
      apiUrl: '${baseUrl}/SearchFilters/user={user}&clsstate={clsstate}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StymgetCashDeviceApiCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'stymgetCashDeviceApi',
      apiUrl: '${baseUrl}/getCashDeviceApi/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetsitevisiteddbydeptAPICall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getsitevisiteddbydeptAPI',
      apiUrl: '${baseUrl}/getsitevisiteddbydeptAPI/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDepartmentWiseUserAPICall {
  Future<ApiCallResponse> call({
    String? department = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getDepartmentWiseUserAPI',
      apiUrl:
          '${baseUrl}/getDepartmentWiseUserAPI/Token=${token}&department=${department}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'department': department,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSecondSiteVisitersCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getSecondSiteVisiters',
      apiUrl: '${baseUrl}/getSecondSiteVisiters/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserReviewByDateCall {
  Future<ApiCallResponse> call({
    String? endDT = '',
    String? startDT = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getUserReviewByDate',
      apiUrl: '${baseUrl}/getUserReviewByDate',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'StartDT': startDT,
        'EndDT ': endDT,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmDOADetailsubmissionCall {
  Future<ApiCallResponse> call({
    String? iindent = '',
    String? stageComent = '',
    String? errCnt = '',
    String? msg = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "iindent": "${iindent}",
  "stageComent": "${stageComent}",
  "errCnt": "${errCnt}",
  "msg": "${msg}",
  "Token": "${token}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ConfirmDOADetailsubmission',
      apiUrl: '${baseUrl}/Confirm_DOADetail_submission',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatenearestATMCall {
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
    String? isPrizm = '0',
    String? iDevice = '',
    String? atmid = '',
    String? bankName = '',
    String? isBranch = '',
    String? distance = '',
    String? direction = '',
    String? avgtxns = '',
    String? avgTotaltransDA = '',
    String? avgOnusTransDA = '',
    String? avgOffusTransDA = '',
    String? pinCode = '',
    String? errCnt = '',
    String? msg = '',
    String? isWB = '',
    String? companyName = '',
    String? employeeName = '',
    String? contactNumber = '',
    String? emailId = '',
    String? iindent = '',
    bool? isFromSiteref,
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

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
  "atms": {
    "isPrizm": "${isPrizm}",
    "iDevice": "${iDevice}",
    "ATMID": "${atmid}",
    "BankName": "${bankName}",
    "IsBranch": "${isBranch}",
    "Distance": "${distance}",
    "Direction": "${direction}",
    "avgtxns": "${avgtxns}",
    "AndroidKey": "${androidKey}",
    "AvgTotaltrans_DA": "${avgTotaltransDA}",
    "AvgOnusTrans_DA": "${avgOnusTransDA}",
    "AvgOffusTrans_DA": "${avgOffusTransDA}",
    "PinCode": "${pinCode}"
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
      callName: 'UpdatenearestATM',
      apiUrl: '${baseUrl}/Update_nearestATM',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateDOADetailsfiveCall {
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
    String? cRACoverage = '',
    String? cRAAgency = '',
    String? branchSOLID = '',
    String? nearestBranch = '',
    String? distanceFromNearestBranch = '',
    String? remarks1 = '',
    String? remarks2 = '',
    String? remarks3 = '',
    String? remarks4 = '',
    String? remarks5 = '',
    String? iCIT = '',
    String? latitude = '',
    String? longitude = '',
    String? videoURL = '',
    String? errCnt = '',
    String? msg = '',
    String? isWB = '',
    String? companyName = '',
    String? employeeName = '',
    String? contactNumber = '',
    String? emailId = '',
    String? iindent = '',
    bool? isFromSiteref,
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

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
  "CRARemarks": {
    "CRACoverage": "${cRACoverage}",
    "CRAAgency": "${cRAAgency}",
    "BranchSOLID": "${branchSOLID}",
    "NearestBranch": "${nearestBranch}",
    "DistanceFromNearestBranch": "${distanceFromNearestBranch}",
    "Remarks1": "${remarks1}",
    "Remarks2": "${remarks2}",
    "Remarks3": "${remarks3}",
    "Remarks4": "${remarks4}",
    "Remarks5": "${remarks5}",
    "iCIT": "${iCIT}",
    "Latitude": "${latitude}",
    "Longitude": "${longitude}",
    "VideoURL": "${videoURL}"
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
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateDOADetailsfive',
      apiUrl: '${baseUrl}/Update_DOADetails5',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateDOADetailsfourCall {
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
    String? shopType = '',
    String? totalShopArea = '',
    String? shopAreaOffered = '',
    String? carpetArea = '',
    String? depth = '',
    String? width = '',
    String? height = '',
    String? totalFrontage = '',
    String? frontageOffered = '',
    String? signWidth = '',
    String? signHeight = '',
    String? lShape = '',
    String? vsat = '',
    String? acodu = '',
    String? powerAvailability = '',
    String? hours = '',
    String? isTotempole = '',
    String? projectNote = '',
    String? isRampAval = '',
    String? errCnt = '',
    String? msg = '',
    String? isWB = '',
    String? companyName = '',
    String? employeeName = '',
    String? contactNumber = '',
    String? emailId = '',
    String? iindent = '',
    String? isFromSiteref = 'false',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

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
  "DimDetails": {
    "ShopType": "${shopType}",
    "TotalShopArea": "${totalShopArea}",
    "ShopAreaOffered": "${shopAreaOffered}",
    "CarpetArea": "${carpetArea}",
    "Depth": "${depth}",
    "Width": "${width}",
    "Height": "${height}",
    "TotalFrontage": "${totalFrontage}",
    "FrontageOffered": "${frontageOffered}",
    "SignWidth": "${signWidth}",
    "SignHeight": "${signHeight}",
    "LShape": "${lShape}",
    "VSAT": "${vsat}",
    "ACODU": "${acodu}",
    "PowerAvailability": "${powerAvailability}",
    "Hours": "${hours}",
    "IsTotempole": "${isTotempole}",
    "Project_Note": "${projectNote}",
    "Is_Ramp_aval": "${isRampAval}"
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
      callName: 'UpdateDOADetailsfour',
      apiUrl: '${baseUrl}/Update_DOADetails4',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateDOADetailsthreeCall {
  Future<ApiCallResponse> call({
    int? iindent,
    int? rent,
    int? rentFreePeriod,
    int? securityDeposit,
    int? advanceDeposit,
    int? fullDeposit,
    int? oneMonthDeposit,
    int? balanceDeposit,
    int? totalDeposit,
    int? rentEscalation,
    int? escalationPeriod,
    int? agreementPeriod,
    bool? isAdvance,
    int? totalAdvSec,
    int? months,
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
    String? rentalType = '',
    String? errCnt = '',
    String? msg = '',
    String? isWB = '',
    String? isFromSiteref = '',
    String? companyName = '',
    String? employeeName = '',
    String? contactNumber = '',
    String? emailId = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

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
  "commercials": {
    "RentalType": "${rentalType}",
    "Rent": "${rent}",
    "RentFreePeriod": "${rentFreePeriod}",
    "SecurityDeposit": "${securityDeposit}",
    "AdvanceDeposit": "${advanceDeposit}",
    "FullDeposit": "${fullDeposit}",
    "OneMonthDeposit": "${oneMonthDeposit}",
    "BalanceDeposit": "${balanceDeposit}",
    "TotalDeposit": "${totalDeposit}",
    "RentEscalation": "${rentEscalation}",
    "EscalationPeriod": "${escalationPeriod}",
    "AgreementPeriod": "${agreementPeriod}",
    "isAdvance": "${isAdvance}",
    "TotalAdvSec": "${totalAdvSec}",
    "Months": "${months}"
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
      callName: 'UpdateDOADetailsthree',
      apiUrl: '${baseUrl}/\tUpdate_DOADetails3',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCustomerBankCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getCustomerBank',
      apiUrl: '${baseUrl}/getCustomerBank/Token={token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetIndentBankCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getIndentBank',
      apiUrl: '${baseUrl}/getIndentBank/Token={token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DOADetailssteponeCall {
  Future<ApiCallResponse> call({
    String? iIndent = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DOADetailsstepone',
      apiUrl: '${baseUrl}/DOADetails_step1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DOADetailssteptwoCall {
  Future<ApiCallResponse> call({
    String? iIndent = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DOADetailssteptwo',
      apiUrl: '${baseUrl}/DOADetails_step2',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DOADetailsstepthreeCall {
  Future<ApiCallResponse> call({
    String? iIndent = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DOADetailsstepthree',
      apiUrl: '${baseUrl}/DOADetails_step3',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DOADetailsstepfourCall {
  Future<ApiCallResponse> call({
    String? iIndent = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DOADetailsstepfour',
      apiUrl: '${baseUrl}/DOADetails_step4',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DOADetailsstepfiveCall {
  Future<ApiCallResponse> call({
    String? iIndent = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DOADetailsstepfive',
      apiUrl: '${baseUrl}/DOADetails_step5',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DOADetailsstepsevenCall {
  Future<ApiCallResponse> call({
    String? iIndent = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DOADetailsstepseven',
      apiUrl: '${baseUrl}/DOADetails_step7',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadImageCall {
  Future<ApiCallResponse> call({
    String? siteId = '',
    String? name = '',
    String? content = '',
    String? description = '',
    double? gPSLatitude,
    double? gPSLongitude,
    double? coarseLatitude,
    double? coarseLongitude,
    double? isUploadComplete,
    bool? isFromSiteRef,
    String? androidKey = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
"SiteId":"${siteId}",
"Token":"${token}",
"Name":"${name}",
"Content":"${content}",
"Description":"${description}",
"GPSLatitude":"${gPSLatitude}",
"GPSLongitude":"${gPSLongitude}",
"CoarseLatitude":"${coarseLatitude}",
"CoarseLongitude":"${coarseLongitude}",
"AndroidKey":"${androidKey}",
"IsUploadComplete":"${isUploadComplete}",
"IsFromSiteRef":"${isFromSiteRef}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UploadImage',
      apiUrl: '${baseUrl}/UploadImage',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDOADetailsImageCall {
  Future<ApiCallResponse> call({
    int? iIndent,
    int? iCustomer,
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getDOADetailsImage',
      apiUrl: '${baseUrl}/getDOADetailsImage',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogOutCall {
  Future<ApiCallResponse> call({
    String? lattitude = '',
    String? longitude = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
"Token":"${token}",
"Lattitude":"${lattitude}",
"Longitude":"${longitude}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LogOut',
      apiUrl: '${baseUrl}/LogOut',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ForgotPwdCall {
  Future<ApiCallResponse> call({
    String? userName = '',
    String? email = '',
    String? lattitude = '',
    String? longitude = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
"UserName":"${userName}",
"Email":"${email}",
"Lattitude":"${lattitude}",
"Longitude":"${longitude}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ForgotPwd',
      apiUrl: '${baseUrl}/ForgotPwd',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPOITypeForSiteEvaluationCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetPOITypeForSiteEvaluation',
      apiUrl: '${baseUrl}/GetPOITypeForSiteEvaluation/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListSitesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ListSites',
      apiUrl: '${baseUrl}/ListSites/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DistrictAPisCall {
  Future<ApiCallResponse> call({
    String? istate = '0',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DistrictAPis',
      apiUrl: '${baseUrl}/DistrictAPI/Token=${token}&istate=${istate}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'istate': istate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StatenewCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'STATENEW',
      apiUrl: '${baseUrl}/getStates/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RBInewCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'RBInew',
      apiUrl: '${baseUrl}/getRBICategory/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DOADetailsstepFIRSTworddocCall {
  Future<ApiCallResponse> call({
    String? indentId = '',
    String? siteId = '',
    String? targetBank = '',
    String? districts = '',
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
    String? isDuplicateSite = '',
    int? iSiteVisitedByName,
    int? iSecondSiteVisitedByName,
    String? waterlog = '',
    String? atmaval = '',
    String? companyName = '',
    String? employeeName = '',
    String? contactNumber = '',
    String? emailId = '',
    String? iindent = '',
    String? isWB = '',
    String? msg = '',
    bool? isFromSiteref,
    String? errCnt = '',
    String? district = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "IndentId": "${indentId}",
  "SiteId": "${siteId}",
  "TargetBank": "${targetBank}",
  "Districts": "${districts}",
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
    "District":"${district}",
    "City": "${city}",
    "Circle": "${circle}",
    "Pincode": "${pincode}",
    "Address": "${address}",
    "LandMark": "${landMark}",
    "RBICategory": "${rBICategory}",
    "sitesourcedby": "${sitesourcedby}",
    "isOnSite": "${isOnSite}",
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
      callName: 'DOADetailsstepFIRSTworddoc',
      apiUrl: '${baseUrl}/Update_DOADetails1',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DOADetailsstepSECONDworddocCall {
  Future<ApiCallResponse> call({
    String? indentId = '',
    String? siteId = '',
    String? targetBank = '',
    String? districts = '',
    String? centres = '',
    String? comments = '',
    String? lastModStamp = '',
    String? isHold = '',
    String? istage = '',
    String? iStageText = '',
    String? locationName = '',
    String? androidKey = '',
    String? landLordNames = '',
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
    String? isWB = '',
    String? companyName = '',
    String? employeeName = '',
    String? contactNumber = '',
    String? iindent = '',
    String? errCnt = '',
    String? msg = '',
    bool? isFromSiteref,
    String? emailIds = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "IndentId": "${indentId}",
  "SiteId": "${siteId}",
  "TargetBank": "${targetBank}",
  "Districts": "${districts}",
  "Centres": "${centres}",
  "Comments": "${comments}",
  "LastModStamp": "${lastModStamp}",
  "IsHold": "${isHold}",
  "Istage": "${istage}",
  "IStageText": "${iStageText}",
  "LocationNames": "${locationName}",
  "Token": "${token}",
  "AndroidKey": "${androidKey}",
  "LlDetails": {
    "LandLordName": "${landLordNames}",
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
    "EmailIds": "${emailIds}",
    "iindent": "${iindent}"
  }
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'DOADetailsstepSECONDworddoc',
      apiUrl: '${baseUrl}/Update_DOADetails2',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DOADetailsstepTHIRDworddocCall {
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
    String? rentalType = '',
    String? rent = '',
    String? rentFreePeriod = '',
    String? securityDeposit = '',
    String? advanceDeposit = '',
    String? fullDeposit = '',
    String? oneMonthDeposit = '',
    String? balanceDeposit = '',
    String? totalDeposit = '',
    String? rentEscalation = '',
    String? escalationPeriod = '',
    String? agreementPeriod = '',
    String? isAdvance = '',
    String? totalAdvSec = '',
    String? months = '',
    String? isWB = '0',
    String? companyName = '',
    String? employeeName = '',
    String? contactNumber = '',
    String? emailId = '',
    String? iindent = '',
    String? isExl = '',
    String? monthlybpcltranslitefee = '',
    String? commType = '',
    String? commDeposite = '',
    String? errCnt = '',
    String? msg = '',
    String? isFromSiteref = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

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
  "commercials": {
    "RentalType": "${rentalType}",
    "Rent": "${rent}",
    "RentFreePeriod": "${rentFreePeriod}",
    "SecurityDeposit": "${securityDeposit}",
    "AdvanceDeposit": "${advanceDeposit}",
    "FullDeposit": "${fullDeposit}",
    "OneMonthDeposit": "${oneMonthDeposit}",
    "BalanceDeposit": "${balanceDeposit}",
    "TotalDeposit": "${totalDeposit}",
    "RentEscalation": "${rentEscalation}",
    "EscalationPeriod": "${escalationPeriod}",
    "AgreementPeriod": "${agreementPeriod}",
    "isAdvance": "${isAdvance}",
    "TotalAdvSec": "${totalAdvSec}",
    "Months": "${months}",
    "isExl": "${isExl}",
    "monthlybpcltranslitefee": "${monthlybpcltranslitefee}",
    "commType": "${commType}",
    "CommDeposite": "${commDeposite}"
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
      callName: 'DOADetailsstepTHIRDworddoc',
      apiUrl: '${baseUrl}/Update_DOADetails3',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SecondSiteVisitersNEWCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'SecondSiteVisitersNEW',
      apiUrl: '${baseUrl}/getSecondSiteVisiters/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCRAAgencCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetCRAAgenc',
      apiUrl: '${baseUrl}/GetCRAAgency/Token=${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetIndentsByStatesnewCall {
  Future<ApiCallResponse> call({
    String? istate = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetIndentsByStatesnew',
      apiUrl: '${baseUrl}/GetIndentsByStates/state=${istate}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CitiesAPIforStatenDistCall {
  Future<ApiCallResponse> call({
    String? istate = '',
    String? idistrict = '',
    String? token = '',
  }) async {
    final baseUrl = SqGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'CitiesAPIforStatenDist',
      apiUrl:
          '${baseUrl}/CitiesAPI/Token=${token}&istate=${istate}&idistrict=${idistrict}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetIndentsByStatesCall {
  static Future<ApiCallResponse> call({
    List<String>? stateList,
  }) async {
    final state = _serializeList(stateList);

    return ApiManager.instance.makeApiCall(
      callName: 'GetIndentsByStates',
      apiUrl:
          'https://workbenchuat.hitachi-payments.com:9443/service1.svc/GetIndentsByStates/state=${state}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DownloadImageCall {
  static Future<ApiCallResponse> call({
    String? imgname = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DownloadImage',
      apiUrl:
          'https://workbenchuat.hitachi-payments.com:9443/service1.svc/DownloadImage/Token=${token}&imgname=${imgname}',
      callType: ApiCallType.GET,
      headers: {
        'Token': '${token}',
        'imgname': '${imgname}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSubmittedSitesCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? iIndent = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetSubmittedSites',
      apiUrl:
          'https://workbenchuat.hitachi-payments.com:9443/service1.svc/GetSubmittedSites/Token=${token}&iIndent=${iIndent}',
      callType: ApiCallType.GET,
      headers: {
        'iIndent': '${iIndent}',
        'Token': '${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRBICitiesCall {
  static Future<ApiCallResponse> call({
    String? pageNo = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetRBICities',
      apiUrl:
          'https://workbenchuat.hitachi-payments.com:9443/service1.svc/getUserReview/Token=${token}&PageNo=${pageNo}',
      callType: ApiCallType.GET,
      headers: {
        'Token': '${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
