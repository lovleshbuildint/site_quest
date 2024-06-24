import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _chartx = (await secureStorage.getStringList('ff_chartx'))
              ?.map(int.parse)
              .toList() ??
          _chartx;
    });
    await _safeInitAsync(() async {
      _chartxx = (await secureStorage.getStringList('ff_chartxx'))
              ?.map(int.parse)
              .toList() ??
          _chartxx;
    });
    await _safeInitAsync(() async {
      _chartybar1 = (await secureStorage.getStringList('ff_chartybar1'))
              ?.map(int.parse)
              .toList() ??
          _chartybar1;
    });
    await _safeInitAsync(() async {
      _chartxbar1 =
          await secureStorage.getStringList('ff_chartxbar1') ?? _chartxbar1;
    });
    await _safeInitAsync(() async {
      _chartybar2 = (await secureStorage.getStringList('ff_chartybar2'))
              ?.map(int.parse)
              .toList() ??
          _chartybar2;
    });
    await _safeInitAsync(() async {
      _Token = await secureStorage.getString('ff_Token') ?? _Token;
    });
    await _safeInitAsync(() async {
      _UserName = await secureStorage.getString('ff_UserName') ?? _UserName;
    });
    await _safeInitAsync(() async {
      _State = await secureStorage.getString('ff_State') ?? _State;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_indentSelectedSite') != null) {
        try {
          _indentSelectedSite = jsonDecode(
              await secureStorage.getString('ff_indentSelectedSite') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _istate = await secureStorage.getStringList('ff_istate') ?? _istate;
    });
    await _safeInitAsync(() async {
      _istatenewtry =
          await secureStorage.getString('ff_istatenewtry') ?? _istatenewtry;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<int> _chartx = [109, 125, 98, 115];
  List<int> get chartx => _chartx;
  set chartx(List<int> value) {
    _chartx = value;
    secureStorage.setStringList(
        'ff_chartx', value.map((x) => x.toString()).toList());
  }

  void deleteChartx() {
    secureStorage.delete(key: 'ff_chartx');
  }

  void addToChartx(int value) {
    chartx.add(value);
    secureStorage.setStringList(
        'ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  void removeFromChartx(int value) {
    chartx.remove(value);
    secureStorage.setStringList(
        'ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromChartx(int index) {
    chartx.removeAt(index);
    secureStorage.setStringList(
        'ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  void updateChartxAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    chartx[index] = updateFn(_chartx[index]);
    secureStorage.setStringList(
        'ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  void insertAtIndexInChartx(int index, int value) {
    chartx.insert(index, value);
    secureStorage.setStringList(
        'ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  List<int> _chartxx = [0, 1, 2, 3];
  List<int> get chartxx => _chartxx;
  set chartxx(List<int> value) {
    _chartxx = value;
    secureStorage.setStringList(
        'ff_chartxx', value.map((x) => x.toString()).toList());
  }

  void deleteChartxx() {
    secureStorage.delete(key: 'ff_chartxx');
  }

  void addToChartxx(int value) {
    chartxx.add(value);
    secureStorage.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  void removeFromChartxx(int value) {
    chartxx.remove(value);
    secureStorage.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromChartxx(int index) {
    chartxx.removeAt(index);
    secureStorage.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  void updateChartxxAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    chartxx[index] = updateFn(_chartxx[index]);
    secureStorage.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  void insertAtIndexInChartxx(int index, int value) {
    chartxx.insert(index, value);
    secureStorage.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  List<int> _chartybar1 = [55, 48, 20, 53];
  List<int> get chartybar1 => _chartybar1;
  set chartybar1(List<int> value) {
    _chartybar1 = value;
    secureStorage.setStringList(
        'ff_chartybar1', value.map((x) => x.toString()).toList());
  }

  void deleteChartybar1() {
    secureStorage.delete(key: 'ff_chartybar1');
  }

  void addToChartybar1(int value) {
    chartybar1.add(value);
    secureStorage.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  void removeFromChartybar1(int value) {
    chartybar1.remove(value);
    secureStorage.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromChartybar1(int index) {
    chartybar1.removeAt(index);
    secureStorage.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  void updateChartybar1AtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    chartybar1[index] = updateFn(_chartybar1[index]);
    secureStorage.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  void insertAtIndexInChartybar1(int index, int value) {
    chartybar1.insert(index, value);
    secureStorage.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  List<String> _chartxbar1 = ['07Mar', '08Mar', '09Mar', '10Mar'];
  List<String> get chartxbar1 => _chartxbar1;
  set chartxbar1(List<String> value) {
    _chartxbar1 = value;
    secureStorage.setStringList('ff_chartxbar1', value);
  }

  void deleteChartxbar1() {
    secureStorage.delete(key: 'ff_chartxbar1');
  }

  void addToChartxbar1(String value) {
    chartxbar1.add(value);
    secureStorage.setStringList('ff_chartxbar1', _chartxbar1);
  }

  void removeFromChartxbar1(String value) {
    chartxbar1.remove(value);
    secureStorage.setStringList('ff_chartxbar1', _chartxbar1);
  }

  void removeAtIndexFromChartxbar1(int index) {
    chartxbar1.removeAt(index);
    secureStorage.setStringList('ff_chartxbar1', _chartxbar1);
  }

  void updateChartxbar1AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    chartxbar1[index] = updateFn(_chartxbar1[index]);
    secureStorage.setStringList('ff_chartxbar1', _chartxbar1);
  }

  void insertAtIndexInChartxbar1(int index, String value) {
    chartxbar1.insert(index, value);
    secureStorage.setStringList('ff_chartxbar1', _chartxbar1);
  }

  List<int> _chartybar2 = [16, 22, 25, 10];
  List<int> get chartybar2 => _chartybar2;
  set chartybar2(List<int> value) {
    _chartybar2 = value;
    secureStorage.setStringList(
        'ff_chartybar2', value.map((x) => x.toString()).toList());
  }

  void deleteChartybar2() {
    secureStorage.delete(key: 'ff_chartybar2');
  }

  void addToChartybar2(int value) {
    chartybar2.add(value);
    secureStorage.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  void removeFromChartybar2(int value) {
    chartybar2.remove(value);
    secureStorage.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromChartybar2(int index) {
    chartybar2.removeAt(index);
    secureStorage.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  void updateChartybar2AtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    chartybar2[index] = updateFn(_chartybar2[index]);
    secureStorage.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  void insertAtIndexInChartybar2(int index, int value) {
    chartybar2.insert(index, value);
    secureStorage.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  int _dd1 = 0;
  int get dd1 => _dd1;
  set dd1(int value) {
    _dd1 = value;
  }

  String _Token = '';
  String get Token => _Token;
  set Token(String value) {
    _Token = value;
    secureStorage.setString('ff_Token', value);
  }

  void deleteToken() {
    secureStorage.delete(key: 'ff_Token');
  }

  String _UserName = '';
  String get UserName => _UserName;
  set UserName(String value) {
    _UserName = value;
    secureStorage.setString('ff_UserName', value);
  }

  void deleteUserName() {
    secureStorage.delete(key: 'ff_UserName');
  }

  String _State = '0';
  String get State => _State;
  set State(String value) {
    _State = value;
    secureStorage.setString('ff_State', value);
  }

  void deleteState() {
    secureStorage.delete(key: 'ff_State');
  }

  dynamic _indentSelectedSite;
  dynamic get indentSelectedSite => _indentSelectedSite;
  set indentSelectedSite(dynamic value) {
    _indentSelectedSite = value;
    secureStorage.setString('ff_indentSelectedSite', jsonEncode(value));
  }

  void deleteIndentSelectedSite() {
    secureStorage.delete(key: 'ff_indentSelectedSite');
  }

  String _EmailId = '';
  String get EmailId => _EmailId;
  set EmailId(String value) {
    _EmailId = value;
  }

  dynamic _CustomerBank;
  dynamic get CustomerBank => _CustomerBank;
  set CustomerBank(dynamic value) {
    _CustomerBank = value;
  }

  dynamic _SiteType;
  dynamic get SiteType => _SiteType;
  set SiteType(dynamic value) {
    _SiteType = value;
  }

  dynamic _TISType;
  dynamic get TISType => _TISType;
  set TISType(dynamic value) {
    _TISType = value;
  }

  dynamic _ProjectType;
  dynamic get ProjectType => _ProjectType;
  set ProjectType(dynamic value) {
    _ProjectType = value;
  }

  dynamic _BusinessType;
  dynamic get BusinessType => _BusinessType;
  set BusinessType(dynamic value) {
    _BusinessType = value;
  }

  dynamic _Strategy;
  dynamic get Strategy => _Strategy;
  set Strategy(dynamic value) {
    _Strategy = value;
  }

  dynamic _POIList;
  dynamic get POIList => _POIList;
  set POIList(dynamic value) {
    _POIList = value;
  }

  dynamic _Stateapi;
  dynamic get Stateapi => _Stateapi;
  set Stateapi(dynamic value) {
    _Stateapi = value;
  }

  dynamic _District;
  dynamic get District => _District;
  set District(dynamic value) {
    _District = value;
  }

  dynamic _City;
  dynamic get City => _City;
  set City(dynamic value) {
    _City = value;
  }

  dynamic _Pincode;
  dynamic get Pincode => _Pincode;
  set Pincode(dynamic value) {
    _Pincode = value;
  }

  dynamic _Circle;
  dynamic get Circle => _Circle;
  set Circle(dynamic value) {
    _Circle = value;
  }

  dynamic _RBICategory;
  dynamic get RBICategory => _RBICategory;
  set RBICategory(dynamic value) {
    _RBICategory = value;
  }

  dynamic _Duplicatesite;
  dynamic get Duplicatesite => _Duplicatesite;
  set Duplicatesite(dynamic value) {
    _Duplicatesite = value;
  }

  dynamic _SiteVisitedBy;
  dynamic get SiteVisitedBy => _SiteVisitedBy;
  set SiteVisitedBy(dynamic value) {
    _SiteVisitedBy = value;
  }

  dynamic _FirstSiteVisitedBy;
  dynamic get FirstSiteVisitedBy => _FirstSiteVisitedBy;
  set FirstSiteVisitedBy(dynamic value) {
    _FirstSiteVisitedBy = value;
  }

  dynamic _SecondSiteVisitedBY;
  dynamic get SecondSiteVisitedBY => _SecondSiteVisitedBY;
  set SecondSiteVisitedBY(dynamic value) {
    _SecondSiteVisitedBY = value;
  }

  int _department = 0;
  int get department => _department;
  set department(int value) {
    _department = value;
  }

  dynamic _CashDeviceType;
  dynamic get CashDeviceType => _CashDeviceType;
  set CashDeviceType(dynamic value) {
    _CashDeviceType = value;
  }

  dynamic _CashDeviceMovementCategory;
  dynamic get CashDeviceMovementCategory => _CashDeviceMovementCategory;
  set CashDeviceMovementCategory(dynamic value) {
    _CashDeviceMovementCategory = value;
  }

  String _districts = '';
  String get districts => _districts;
  set districts(String value) {
    _districts = value;
  }

  String _sitetypess = '';
  String get sitetypess => _sitetypess;
  set sitetypess(String value) {
    _sitetypess = value;
  }

  dynamic _master;
  dynamic get master => _master;
  set master(dynamic value) {
    _master = value;
  }

  int _icust = 0;
  int get icust => _icust;
  set icust(int value) {
    _icust = value;
  }

  dynamic _departmentswiseuser;
  dynamic get departmentswiseuser => _departmentswiseuser;
  set departmentswiseuser(dynamic value) {
    _departmentswiseuser = value;
  }

  dynamic _visitedbydeptapi;
  dynamic get visitedbydeptapi => _visitedbydeptapi;
  set visitedbydeptapi(dynamic value) {
    _visitedbydeptapi = value;
  }

  dynamic _Listsite;
  dynamic get Listsite => _Listsite;
  set Listsite(dynamic value) {
    _Listsite = value;
  }

  dynamic _secondsitevisiterNew;
  dynamic get secondsitevisiterNew => _secondsitevisiterNew;
  set secondsitevisiterNew(dynamic value) {
    _secondsitevisiterNew = value;
  }

  String _SiteId = '';
  String get SiteId => _SiteId;
  set SiteId(String value) {
    _SiteId = value;
  }

  String _searchpage = '';
  String get searchpage => _searchpage;
  set searchpage(String value) {
    _searchpage = value;
  }

  String _Remark1 = '';
  String get Remark1 => _Remark1;
  set Remark1(String value) {
    _Remark1 = value;
  }

  String _Remark2 = '';
  String get Remark2 => _Remark2;
  set Remark2(String value) {
    _Remark2 = value;
  }

  String _Remark3 = '';
  String get Remark3 => _Remark3;
  set Remark3(String value) {
    _Remark3 = value;
  }

  String _Remark4 = '';
  String get Remark4 => _Remark4;
  set Remark4(String value) {
    _Remark4 = value;
  }

  String _Remark5 = '';
  String get Remark5 => _Remark5;
  set Remark5(String value) {
    _Remark5 = value;
  }

  String _CRACoverage = '';
  String get CRACoverage => _CRACoverage;
  set CRACoverage(String value) {
    _CRACoverage = value;
  }

  String _CRAAgency = '';
  String get CRAAgency => _CRAAgency;
  set CRAAgency(String value) {
    _CRAAgency = value;
  }

  String _BranchSOLID = '';
  String get BranchSOLID => _BranchSOLID;
  set BranchSOLID(String value) {
    _BranchSOLID = value;
  }

  String _NearestBranch = '';
  String get NearestBranch => _NearestBranch;
  set NearestBranch(String value) {
    _NearestBranch = value;
  }

  String _DistancefromtheNeearestBranch = '';
  String get DistancefromtheNeearestBranch => _DistancefromtheNeearestBranch;
  set DistancefromtheNeearestBranch(String value) {
    _DistancefromtheNeearestBranch = value;
  }

  String _VideoURL = '';
  String get VideoURL => _VideoURL;
  set VideoURL(String value) {
    _VideoURL = value;
  }

  String _Remark1open = '';
  String get Remark1open => _Remark1open;
  set Remark1open(String value) {
    _Remark1open = value;
  }

  String _Remark2open = '';
  String get Remark2open => _Remark2open;
  set Remark2open(String value) {
    _Remark2open = value;
  }

  String _Remark3open = '';
  String get Remark3open => _Remark3open;
  set Remark3open(String value) {
    _Remark3open = value;
  }

  String _Remark4open = '';
  String get Remark4open => _Remark4open;
  set Remark4open(String value) {
    _Remark4open = value;
  }

  String _Remark5open = '';
  String get Remark5open => _Remark5open;
  set Remark5open(String value) {
    _Remark5open = value;
  }

  List<String> _istate = ['1'];
  List<String> get istate => _istate;
  set istate(List<String> value) {
    _istate = value;
    secureStorage.setStringList('ff_istate', value);
  }

  void deleteIstate() {
    secureStorage.delete(key: 'ff_istate');
  }

  void addToIstate(String value) {
    istate.add(value);
    secureStorage.setStringList('ff_istate', _istate);
  }

  void removeFromIstate(String value) {
    istate.remove(value);
    secureStorage.setStringList('ff_istate', _istate);
  }

  void removeAtIndexFromIstate(int index) {
    istate.removeAt(index);
    secureStorage.setStringList('ff_istate', _istate);
  }

  void updateIstateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    istate[index] = updateFn(_istate[index]);
    secureStorage.setStringList('ff_istate', _istate);
  }

  void insertAtIndexInIstate(int index, String value) {
    istate.insert(index, value);
    secureStorage.setStringList('ff_istate', _istate);
  }

  String _istatenewtry = '';
  String get istatenewtry => _istatenewtry;
  set istatenewtry(String value) {
    _istatenewtry = value;
    secureStorage.setString('ff_istatenewtry', value);
  }

  void deleteIstatenewtry() {
    secureStorage.delete(key: 'ff_istatenewtry');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
