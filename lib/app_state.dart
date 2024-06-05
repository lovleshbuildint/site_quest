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
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<int> _chartx = [109, 125, 98, 115];
  List<int> get chartx => _chartx;
  set chartx(List<int> _value) {
    _chartx = _value;
    secureStorage.setStringList(
        'ff_chartx', _value.map((x) => x.toString()).toList());
  }

  void deleteChartx() {
    secureStorage.delete(key: 'ff_chartx');
  }

  void addToChartx(int _value) {
    _chartx.add(_value);
    secureStorage.setStringList(
        'ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  void removeFromChartx(int _value) {
    _chartx.remove(_value);
    secureStorage.setStringList(
        'ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromChartx(int _index) {
    _chartx.removeAt(_index);
    secureStorage.setStringList(
        'ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  void updateChartxAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartx[_index] = updateFn(_chartx[_index]);
    secureStorage.setStringList(
        'ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  void insertAtIndexInChartx(int _index, int _value) {
    _chartx.insert(_index, _value);
    secureStorage.setStringList(
        'ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  List<int> _chartxx = [0, 1, 2, 3];
  List<int> get chartxx => _chartxx;
  set chartxx(List<int> _value) {
    _chartxx = _value;
    secureStorage.setStringList(
        'ff_chartxx', _value.map((x) => x.toString()).toList());
  }

  void deleteChartxx() {
    secureStorage.delete(key: 'ff_chartxx');
  }

  void addToChartxx(int _value) {
    _chartxx.add(_value);
    secureStorage.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  void removeFromChartxx(int _value) {
    _chartxx.remove(_value);
    secureStorage.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromChartxx(int _index) {
    _chartxx.removeAt(_index);
    secureStorage.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  void updateChartxxAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartxx[_index] = updateFn(_chartxx[_index]);
    secureStorage.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  void insertAtIndexInChartxx(int _index, int _value) {
    _chartxx.insert(_index, _value);
    secureStorage.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  List<int> _chartybar1 = [55, 48, 20, 53];
  List<int> get chartybar1 => _chartybar1;
  set chartybar1(List<int> _value) {
    _chartybar1 = _value;
    secureStorage.setStringList(
        'ff_chartybar1', _value.map((x) => x.toString()).toList());
  }

  void deleteChartybar1() {
    secureStorage.delete(key: 'ff_chartybar1');
  }

  void addToChartybar1(int _value) {
    _chartybar1.add(_value);
    secureStorage.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  void removeFromChartybar1(int _value) {
    _chartybar1.remove(_value);
    secureStorage.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromChartybar1(int _index) {
    _chartybar1.removeAt(_index);
    secureStorage.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  void updateChartybar1AtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartybar1[_index] = updateFn(_chartybar1[_index]);
    secureStorage.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  void insertAtIndexInChartybar1(int _index, int _value) {
    _chartybar1.insert(_index, _value);
    secureStorage.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  List<String> _chartxbar1 = ['07Mar', '08Mar', '09Mar', '10Mar'];
  List<String> get chartxbar1 => _chartxbar1;
  set chartxbar1(List<String> _value) {
    _chartxbar1 = _value;
    secureStorage.setStringList('ff_chartxbar1', _value);
  }

  void deleteChartxbar1() {
    secureStorage.delete(key: 'ff_chartxbar1');
  }

  void addToChartxbar1(String _value) {
    _chartxbar1.add(_value);
    secureStorage.setStringList('ff_chartxbar1', _chartxbar1);
  }

  void removeFromChartxbar1(String _value) {
    _chartxbar1.remove(_value);
    secureStorage.setStringList('ff_chartxbar1', _chartxbar1);
  }

  void removeAtIndexFromChartxbar1(int _index) {
    _chartxbar1.removeAt(_index);
    secureStorage.setStringList('ff_chartxbar1', _chartxbar1);
  }

  void updateChartxbar1AtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _chartxbar1[_index] = updateFn(_chartxbar1[_index]);
    secureStorage.setStringList('ff_chartxbar1', _chartxbar1);
  }

  void insertAtIndexInChartxbar1(int _index, String _value) {
    _chartxbar1.insert(_index, _value);
    secureStorage.setStringList('ff_chartxbar1', _chartxbar1);
  }

  List<int> _chartybar2 = [16, 22, 25, 10];
  List<int> get chartybar2 => _chartybar2;
  set chartybar2(List<int> _value) {
    _chartybar2 = _value;
    secureStorage.setStringList(
        'ff_chartybar2', _value.map((x) => x.toString()).toList());
  }

  void deleteChartybar2() {
    secureStorage.delete(key: 'ff_chartybar2');
  }

  void addToChartybar2(int _value) {
    _chartybar2.add(_value);
    secureStorage.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  void removeFromChartybar2(int _value) {
    _chartybar2.remove(_value);
    secureStorage.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromChartybar2(int _index) {
    _chartybar2.removeAt(_index);
    secureStorage.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  void updateChartybar2AtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartybar2[_index] = updateFn(_chartybar2[_index]);
    secureStorage.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  void insertAtIndexInChartybar2(int _index, int _value) {
    _chartybar2.insert(_index, _value);
    secureStorage.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  int _dd1 = 0;
  int get dd1 => _dd1;
  set dd1(int _value) {
    _dd1 = _value;
  }

  String _Token = '';
  String get Token => _Token;
  set Token(String _value) {
    _Token = _value;
    secureStorage.setString('ff_Token', _value);
  }

  void deleteToken() {
    secureStorage.delete(key: 'ff_Token');
  }

  String _UserName = '';
  String get UserName => _UserName;
  set UserName(String _value) {
    _UserName = _value;
    secureStorage.setString('ff_UserName', _value);
  }

  void deleteUserName() {
    secureStorage.delete(key: 'ff_UserName');
  }

  String _State = '0';
  String get State => _State;
  set State(String _value) {
    _State = _value;
    secureStorage.setString('ff_State', _value);
  }

  void deleteState() {
    secureStorage.delete(key: 'ff_State');
  }

  dynamic _indentSelectedSite;
  dynamic get indentSelectedSite => _indentSelectedSite;
  set indentSelectedSite(dynamic _value) {
    _indentSelectedSite = _value;
    secureStorage.setString('ff_indentSelectedSite', jsonEncode(_value));
  }

  void deleteIndentSelectedSite() {
    secureStorage.delete(key: 'ff_indentSelectedSite');
  }

  String _EmailId = '';
  String get EmailId => _EmailId;
  set EmailId(String _value) {
    _EmailId = _value;
  }

  dynamic _CustomerBank;
  dynamic get CustomerBank => _CustomerBank;
  set CustomerBank(dynamic _value) {
    _CustomerBank = _value;
  }

  dynamic _SiteType;
  dynamic get SiteType => _SiteType;
  set SiteType(dynamic _value) {
    _SiteType = _value;
  }

  dynamic _TISType;
  dynamic get TISType => _TISType;
  set TISType(dynamic _value) {
    _TISType = _value;
  }

  dynamic _ProjectType;
  dynamic get ProjectType => _ProjectType;
  set ProjectType(dynamic _value) {
    _ProjectType = _value;
  }

  dynamic _BusinessType;
  dynamic get BusinessType => _BusinessType;
  set BusinessType(dynamic _value) {
    _BusinessType = _value;
  }

  dynamic _Strategy;
  dynamic get Strategy => _Strategy;
  set Strategy(dynamic _value) {
    _Strategy = _value;
  }

  dynamic _POIList;
  dynamic get POIList => _POIList;
  set POIList(dynamic _value) {
    _POIList = _value;
  }

  dynamic _Stateapi;
  dynamic get Stateapi => _Stateapi;
  set Stateapi(dynamic _value) {
    _Stateapi = _value;
  }

  dynamic _District;
  dynamic get District => _District;
  set District(dynamic _value) {
    _District = _value;
  }

  dynamic _City;
  dynamic get City => _City;
  set City(dynamic _value) {
    _City = _value;
  }

  dynamic _Pincode;
  dynamic get Pincode => _Pincode;
  set Pincode(dynamic _value) {
    _Pincode = _value;
  }

  dynamic _Circle;
  dynamic get Circle => _Circle;
  set Circle(dynamic _value) {
    _Circle = _value;
  }

  dynamic _RBICategory;
  dynamic get RBICategory => _RBICategory;
  set RBICategory(dynamic _value) {
    _RBICategory = _value;
  }

  dynamic _Duplicatesite;
  dynamic get Duplicatesite => _Duplicatesite;
  set Duplicatesite(dynamic _value) {
    _Duplicatesite = _value;
  }

  dynamic _SiteVisitedBy;
  dynamic get SiteVisitedBy => _SiteVisitedBy;
  set SiteVisitedBy(dynamic _value) {
    _SiteVisitedBy = _value;
  }

  dynamic _FirstSiteVisitedBy;
  dynamic get FirstSiteVisitedBy => _FirstSiteVisitedBy;
  set FirstSiteVisitedBy(dynamic _value) {
    _FirstSiteVisitedBy = _value;
  }

  dynamic _SecondSiteVisitedBY;
  dynamic get SecondSiteVisitedBY => _SecondSiteVisitedBY;
  set SecondSiteVisitedBY(dynamic _value) {
    _SecondSiteVisitedBY = _value;
  }

  int _department = 0;
  int get department => _department;
  set department(int _value) {
    _department = _value;
  }

  dynamic _CashDeviceType;
  dynamic get CashDeviceType => _CashDeviceType;
  set CashDeviceType(dynamic _value) {
    _CashDeviceType = _value;
  }

  dynamic _CashDeviceMovementCategory;
  dynamic get CashDeviceMovementCategory => _CashDeviceMovementCategory;
  set CashDeviceMovementCategory(dynamic _value) {
    _CashDeviceMovementCategory = _value;
  }

  String _districts = '';
  String get districts => _districts;
  set districts(String _value) {
    _districts = _value;
  }

  String _sitetypess = '';
  String get sitetypess => _sitetypess;
  set sitetypess(String _value) {
    _sitetypess = _value;
  }

  dynamic _master;
  dynamic get master => _master;
  set master(dynamic _value) {
    _master = _value;
  }

  int _icust = 0;
  int get icust => _icust;
  set icust(int _value) {
    _icust = _value;
  }

  dynamic _departmentswiseuser;
  dynamic get departmentswiseuser => _departmentswiseuser;
  set departmentswiseuser(dynamic _value) {
    _departmentswiseuser = _value;
  }

  dynamic _visitedbydeptapi;
  dynamic get visitedbydeptapi => _visitedbydeptapi;
  set visitedbydeptapi(dynamic _value) {
    _visitedbydeptapi = _value;
  }

  dynamic _Listsite;
  dynamic get Listsite => _Listsite;
  set Listsite(dynamic _value) {
    _Listsite = _value;
  }

  dynamic _secondsitevisiterNew;
  dynamic get secondsitevisiterNew => _secondsitevisiterNew;
  set secondsitevisiterNew(dynamic _value) {
    _secondsitevisiterNew = _value;
  }

  String _SiteId = '';
  String get SiteId => _SiteId;
  set SiteId(String _value) {
    _SiteId = _value;
  }

  String _searchpage = '';
  String get searchpage => _searchpage;
  set searchpage(String _value) {
    _searchpage = _value;
  }

  String _Remark1 = '';
  String get Remark1 => _Remark1;
  set Remark1(String _value) {
    _Remark1 = _value;
  }

  String _Remark2 = '';
  String get Remark2 => _Remark2;
  set Remark2(String _value) {
    _Remark2 = _value;
  }

  String _Remark3 = '';
  String get Remark3 => _Remark3;
  set Remark3(String _value) {
    _Remark3 = _value;
  }

  String _Remark4 = '';
  String get Remark4 => _Remark4;
  set Remark4(String _value) {
    _Remark4 = _value;
  }

  String _Remark5 = '';
  String get Remark5 => _Remark5;
  set Remark5(String _value) {
    _Remark5 = _value;
  }

  String _CRACoverage = '';
  String get CRACoverage => _CRACoverage;
  set CRACoverage(String _value) {
    _CRACoverage = _value;
  }

  String _CRAAgency = '';
  String get CRAAgency => _CRAAgency;
  set CRAAgency(String _value) {
    _CRAAgency = _value;
  }

  String _BranchSOLID = '';
  String get BranchSOLID => _BranchSOLID;
  set BranchSOLID(String _value) {
    _BranchSOLID = _value;
  }

  String _NearestBranch = '';
  String get NearestBranch => _NearestBranch;
  set NearestBranch(String _value) {
    _NearestBranch = _value;
  }

  String _DistancefromtheNeearestBranch = '';
  String get DistancefromtheNeearestBranch => _DistancefromtheNeearestBranch;
  set DistancefromtheNeearestBranch(String _value) {
    _DistancefromtheNeearestBranch = _value;
  }

  String _VideoURL = '';
  String get VideoURL => _VideoURL;
  set VideoURL(String _value) {
    _VideoURL = _value;
  }

  String _Remark1open = '';
  String get Remark1open => _Remark1open;
  set Remark1open(String _value) {
    _Remark1open = _value;
  }

  String _Remark2open = '';
  String get Remark2open => _Remark2open;
  set Remark2open(String _value) {
    _Remark2open = _value;
  }

  String _Remark3open = '';
  String get Remark3open => _Remark3open;
  set Remark3open(String _value) {
    _Remark3open = _value;
  }

  String _Remark4open = '';
  String get Remark4open => _Remark4open;
  set Remark4open(String _value) {
    _Remark4open = _value;
  }

  String _Remark5open = '';
  String get Remark5open => _Remark5open;
  set Remark5open(String _value) {
    _Remark5open = _value;
  }

  List<String> _istate = ['0'];
  List<String> get istate => _istate;
  set istate(List<String> _value) {
    _istate = _value;
    secureStorage.setStringList('ff_istate', _value);
  }

  void deleteIstate() {
    secureStorage.delete(key: 'ff_istate');
  }

  void addToIstate(String _value) {
    _istate.add(_value);
    secureStorage.setStringList('ff_istate', _istate);
  }

  void removeFromIstate(String _value) {
    _istate.remove(_value);
    secureStorage.setStringList('ff_istate', _istate);
  }

  void removeAtIndexFromIstate(int _index) {
    _istate.removeAt(_index);
    secureStorage.setStringList('ff_istate', _istate);
  }

  void updateIstateAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _istate[_index] = updateFn(_istate[_index]);
    secureStorage.setStringList('ff_istate', _istate);
  }

  void insertAtIndexInIstate(int _index, String _value) {
    _istate.insert(_index, _value);
    secureStorage.setStringList('ff_istate', _istate);
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
