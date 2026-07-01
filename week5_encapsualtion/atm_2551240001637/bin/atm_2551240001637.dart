import 'dart:io';

class Atm{
  String _nomorRekening;
  String _pin;
  double _saldo;

  Atm(this._nomorRekening, this._pin, this._saldo);

  String get nomorRekening => _nomorRekening;
  String get pin => _pin;
  double get saldo => _saldo;

  set pin(String pinBaru){
    if(pinBaru.length == 6 && int.tryParse(pinBaru) != null){
      _pin = pinBaru;
      print('\n[BERHASIL] PIN berhasil diubah');
    }
    else{
      print('\n[GAGAL] PIN harus terdiri dari 6 angka');
    }
  }

  bool verifikasiPin(String inputPin){
    return inputPin == _pin;
  }


}