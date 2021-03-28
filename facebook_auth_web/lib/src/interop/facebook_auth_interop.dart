@JS('FB')
library facebook_auth.js;

import 'package:js/js.dart';

@JS('init')
external init(InitOptions options);

@JS('login')
external login(Function(dynamic response) fn, LoginOptions options);

@JS('getLoginStatus')
external getLoginStatus(Function(dynamic response) fn);

@JS('api')
external api(String request, Function(dynamic response) fn);

@JS('logout')
external logout(Function(dynamic response) fn);

@JS()
@anonymous
class InitOptions {
  external factory InitOptions({
    required String appId,
    required String version,
    required bool cookie,
    required bool xfbml,
  });
  external String get appId;
  external String get version;
  external bool get cookie;
  external bool get xfbml;
}

@JS()
@anonymous
class LoginOptions {
  external factory LoginOptions({
    required String scope,
    // ignore: non_constant_identifier_names
    required bool return_scopes,
  });
  external String get scope;
  // ignore: non_constant_identifier_names
  external bool get return_scopes;
}
