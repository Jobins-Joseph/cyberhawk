import 'package:connectivity/connectivity.dart';
import 'package:first_project/model/loginmode.dart';
import 'package:first_project/model/signinmodel.dart';

import 'package:fluttertoast/fluttertoast.dart';

import '../Webclient/webclient.dart';


class Repository {
  Future<Autogenerated> checkPhoneNumber(
      {required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",

        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final Autogenerated userModel = Autogenerated.fromJson(response);
    return userModel;
  }
    Future<Signupmodel> signup(
      {required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",

        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final Signupmodel userModel = Signupmodel.fromJson(response);
    return userModel;
  }

  Future<Autogenerated> generateOtp(
      {required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final Autogenerated generateOtpModel =
    Autogenerated.fromJson(response);
    return generateOtpModel;
  }

  Future<Autogenerated> loginWithOtp({required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final Autogenerated loginModel = Autogenerated.fromJson(response);
    return loginModel;
  }


}