import 'dart:async';

import 'package:rxdart/rxdart.dart';

import '../../Services/apis_services.dart';
import 'Myvalidation.dart';


class SigninManager with Myvalidation {
  // late UserService userService = UserService();
  //List<SignInModel> list = [];
  //List<SignInWithGoogleModel> listgoogle = [];
  ApiService? apiService;

  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  Stream<String> get email$ => _email.stream.transform(validateEmail);
  Sink<String> get inEmail => _email.sink;

  Stream<String> get password$ => _password.stream.transform(passwordLength);
  Sink<String> get inPassword => _password.sink;

  SigninManager({this.apiService});

  // Stream<bool> get loginFormSubmit$ async* {
  //   String message = 'success';
  //   yield await userService.submitForm(_email.value, _password.value);
  // }

  Stream<bool> get isFormValid$ =>
      CombineLatestStream([email$, password$], (values) => true);

  // Future<void> signUpWithGoogle(BuildContext context) async {
  //   final FirebaseAuth auth = FirebaseAuth.instance;
  //   try {
  //     final GoogleSignIn googleSignIn = GoogleSignIn();
  //     final GoogleSignInAccount? googleSignInAccount =
  //         await googleSignIn.signIn();
  //     if (googleSignInAccount != null) {
  //       final GoogleSignInAuthentication googleSignInAuthentication =
  //           await googleSignInAccount.authentication;
  //       final AuthCredential authCredential = GoogleAuthProvider.credential(
  //           idToken: googleSignInAuthentication.idToken,
  //           accessToken: googleSignInAuthentication.accessToken);
  //
  //       // Getting users credential
  //       UserCredential result = await auth.signInWithCredential(authCredential);
  //       User? user = result.user;
  //       print("google acces");
  //       if (result != null) {
  //         print("google acces user");
  //         // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //         // sharedPreferences.setString(AppConstant.saveUserToken, user!.uid.toString());
  //         // Get.offAllNamed(Routes.STARTSCREEN);
  //         /// TODO:// enable this google login following line code
  //         //      logInAPIWithGoogle(email: user!.email.toString(),name: user.displayName.toString(),
  //         //    providerId: user.uid.toString());
  //         // Navigator.pushReplacement(
  //         //     context, MaterialPageRoute(builder: (context) => HomePage()));
  //       }
  //     }
  //   } on PlatformException catch (e) {
  //     if (e.code == GoogleSignIn.kNetworkError) {
  //       String errorMessage =
  //           "A network error (such as timeout, interrupted connection or unreachable host) has occurred.";
  //       AppConstant.flutterToastError(responseMessage: errorMessage);
  //     } else {
  //       String errorMessage = "Something went wrong.";
  //       AppConstant.flutterToastError(responseMessage: errorMessage);
  //     }
  //   }
  // }
}
