import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _chartx =
          prefs.getStringList('ff_chartx')?.map(int.parse).toList() ?? _chartx;
    });
    _safeInit(() {
      _chartxx = prefs.getStringList('ff_chartxx')?.map(int.parse).toList() ??
          _chartxx;
    });
    _safeInit(() {
      _chartybar1 =
          prefs.getStringList('ff_chartybar1')?.map(int.parse).toList() ??
              _chartybar1;
    });
    _safeInit(() {
      _chartxbar1 = prefs.getStringList('ff_chartxbar1') ?? _chartxbar1;
    });
    _safeInit(() {
      _chartybar2 =
          prefs.getStringList('ff_chartybar2')?.map(int.parse).toList() ??
              _chartybar2;
    });
    _safeInit(() {
      _Token = prefs.getString('ff_Token') ?? _Token;
    });
    _safeInit(() {
      _UserName = prefs.getString('ff_UserName') ?? _UserName;
    });
    _safeInit(() {
      _iState = prefs.getString('ff_iState') ?? _iState;
    });
    _safeInit(() {
      _State = prefs.getString('ff_State') ?? _State;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_indentSelectedSite')) {
        try {
          _indentSelectedSite =
              jsonDecode(prefs.getString('ff_indentSelectedSite') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<int> _chartx = [109, 125, 98, 115];
  List<int> get chartx => _chartx;
  set chartx(List<int> _value) {
    _chartx = _value;
    prefs.setStringList('ff_chartx', _value.map((x) => x.toString()).toList());
  }

  void addToChartx(int _value) {
    _chartx.add(_value);
    prefs.setStringList('ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  void removeFromChartx(int _value) {
    _chartx.remove(_value);
    prefs.setStringList('ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromChartx(int _index) {
    _chartx.removeAt(_index);
    prefs.setStringList('ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  void updateChartxAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartx[_index] = updateFn(_chartx[_index]);
    prefs.setStringList('ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  void insertAtIndexInChartx(int _index, int _value) {
    _chartx.insert(_index, _value);
    prefs.setStringList('ff_chartx', _chartx.map((x) => x.toString()).toList());
  }

  List<int> _chartxx = [0, 1, 2, 3];
  List<int> get chartxx => _chartxx;
  set chartxx(List<int> _value) {
    _chartxx = _value;
    prefs.setStringList('ff_chartxx', _value.map((x) => x.toString()).toList());
  }

  void addToChartxx(int _value) {
    _chartxx.add(_value);
    prefs.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  void removeFromChartxx(int _value) {
    _chartxx.remove(_value);
    prefs.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromChartxx(int _index) {
    _chartxx.removeAt(_index);
    prefs.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  void updateChartxxAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartxx[_index] = updateFn(_chartxx[_index]);
    prefs.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  void insertAtIndexInChartxx(int _index, int _value) {
    _chartxx.insert(_index, _value);
    prefs.setStringList(
        'ff_chartxx', _chartxx.map((x) => x.toString()).toList());
  }

  List<int> _chartybar1 = [55, 48, 20, 53];
  List<int> get chartybar1 => _chartybar1;
  set chartybar1(List<int> _value) {
    _chartybar1 = _value;
    prefs.setStringList(
        'ff_chartybar1', _value.map((x) => x.toString()).toList());
  }

  void addToChartybar1(int _value) {
    _chartybar1.add(_value);
    prefs.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  void removeFromChartybar1(int _value) {
    _chartybar1.remove(_value);
    prefs.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromChartybar1(int _index) {
    _chartybar1.removeAt(_index);
    prefs.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  void updateChartybar1AtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartybar1[_index] = updateFn(_chartybar1[_index]);
    prefs.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  void insertAtIndexInChartybar1(int _index, int _value) {
    _chartybar1.insert(_index, _value);
    prefs.setStringList(
        'ff_chartybar1', _chartybar1.map((x) => x.toString()).toList());
  }

  List<String> _chartxbar1 = ['07Mar', '08Mar', '09Mar', '10Mar'];
  List<String> get chartxbar1 => _chartxbar1;
  set chartxbar1(List<String> _value) {
    _chartxbar1 = _value;
    prefs.setStringList('ff_chartxbar1', _value);
  }

  void addToChartxbar1(String _value) {
    _chartxbar1.add(_value);
    prefs.setStringList('ff_chartxbar1', _chartxbar1);
  }

  void removeFromChartxbar1(String _value) {
    _chartxbar1.remove(_value);
    prefs.setStringList('ff_chartxbar1', _chartxbar1);
  }

  void removeAtIndexFromChartxbar1(int _index) {
    _chartxbar1.removeAt(_index);
    prefs.setStringList('ff_chartxbar1', _chartxbar1);
  }

  void updateChartxbar1AtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _chartxbar1[_index] = updateFn(_chartxbar1[_index]);
    prefs.setStringList('ff_chartxbar1', _chartxbar1);
  }

  void insertAtIndexInChartxbar1(int _index, String _value) {
    _chartxbar1.insert(_index, _value);
    prefs.setStringList('ff_chartxbar1', _chartxbar1);
  }

  List<int> _chartybar2 = [16, 22, 25, 10];
  List<int> get chartybar2 => _chartybar2;
  set chartybar2(List<int> _value) {
    _chartybar2 = _value;
    prefs.setStringList(
        'ff_chartybar2', _value.map((x) => x.toString()).toList());
  }

  void addToChartybar2(int _value) {
    _chartybar2.add(_value);
    prefs.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  void removeFromChartybar2(int _value) {
    _chartybar2.remove(_value);
    prefs.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromChartybar2(int _index) {
    _chartybar2.removeAt(_index);
    prefs.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  void updateChartybar2AtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _chartybar2[_index] = updateFn(_chartybar2[_index]);
    prefs.setStringList(
        'ff_chartybar2', _chartybar2.map((x) => x.toString()).toList());
  }

  void insertAtIndexInChartybar2(int _index, int _value) {
    _chartybar2.insert(_index, _value);
    prefs.setStringList(
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
    prefs.setString('ff_Token', _value);
  }

  String _UserName = '';
  String get UserName => _UserName;
  set UserName(String _value) {
    _UserName = _value;
    prefs.setString('ff_UserName', _value);
  }

  String _iState = '';
  String get iState => _iState;
  set iState(String _value) {
    _iState = _value;
    prefs.setString('ff_iState', _value);
  }

  String _State = '0';
  String get State => _State;
  set State(String _value) {
    _State = _value;
    prefs.setString('ff_State', _value);
  }

  dynamic _indentSelectedSite;
  dynamic get indentSelectedSite => _indentSelectedSite;
  set indentSelectedSite(dynamic _value) {
    _indentSelectedSite = _value;
    prefs.setString('ff_indentSelectedSite', jsonEncode(_value));
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
