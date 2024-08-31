import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _imeges = prefs.getStringList('ff_imeges') ?? _imeges;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _Favorits = [];
  List<DocumentReference> get Favorits => _Favorits;
  set Favorits(List<DocumentReference> value) {
    _Favorits = value;
  }

  void addToFavorits(DocumentReference value) {
    Favorits.add(value);
  }

  void removeFromFavorits(DocumentReference value) {
    Favorits.remove(value);
  }

  void removeAtIndexFromFavorits(int index) {
    Favorits.removeAt(index);
  }

  void updateFavoritsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    Favorits[index] = updateFn(_Favorits[index]);
  }

  void insertAtIndexInFavorits(int index, DocumentReference value) {
    Favorits.insert(index, value);
  }

  List<String> _test = [];
  List<String> get test => _test;
  set test(List<String> value) {
    _test = value;
  }

  void addToTest(String value) {
    test.add(value);
  }

  void removeFromTest(String value) {
    test.remove(value);
  }

  void removeAtIndexFromTest(int index) {
    test.removeAt(index);
  }

  void updateTestAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    test[index] = updateFn(_test[index]);
  }

  void insertAtIndexInTest(int index, String value) {
    test.insert(index, value);
  }

  List<String> _imeges = [];
  List<String> get imeges => _imeges;
  set imeges(List<String> value) {
    _imeges = value;
    prefs.setStringList('ff_imeges', value);
  }

  void addToImeges(String value) {
    imeges.add(value);
    prefs.setStringList('ff_imeges', _imeges);
  }

  void removeFromImeges(String value) {
    imeges.remove(value);
    prefs.setStringList('ff_imeges', _imeges);
  }

  void removeAtIndexFromImeges(int index) {
    imeges.removeAt(index);
    prefs.setStringList('ff_imeges', _imeges);
  }

  void updateImegesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    imeges[index] = updateFn(_imeges[index]);
    prefs.setStringList('ff_imeges', _imeges);
  }

  void insertAtIndexInImeges(int index, String value) {
    imeges.insert(index, value);
    prefs.setStringList('ff_imeges', _imeges);
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
