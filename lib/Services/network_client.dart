import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';


class NetworkClient {
  Dio _dio = Dio();
  //TODO:Baseurl
  String baseUrl = '';

  NetworkClient() {
    BaseOptions baseOptions = BaseOptions(
      receiveTimeout: 50000,
      connectTimeout: 30000,
      baseUrl: baseUrl,
      maxRedirects: 2,
    );
    _dio = Dio(baseOptions);
    // adding logging interceptor.
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      error: true,
      request: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));
  }

//   // for HTTP.GET Request.
//   Future<Response> get(String url, Map<String, Object> params) async {
//     SharedPreferences sharedP = await SharedPreferences.getInstance();
//     String? userToken = sharedP.getString('userLogin');
//     Response response;
//     try {
//       response = await _dio.get(url,
//           queryParameters: params,
//           options: Options(responseType: ResponseType.json, headers: {
//             "Accept": "application/json",
//             "Content-Type": "application/json",
//             "Authorization": "Bearer ${userToken}"
//           }));
//     } on DioError catch (exception) {
//       // print("some error");
//       String content = exception.response.toString();
//     return response;
//   }
//   }
//
//   // for HTTP.POST Request.
//   Future<Response> post(String url, Map<String, Object> params) async {
//     SharedPreferences sharedP = await SharedPreferences.getInstance();
//     String? userToken = sharedP.getString('userLogin');
//     Response response;
//     print("this is user token : " + userToken.toString());
//     try {
//       print("user token ${userToken}");
//       print("user token  test ${AppConstant.testToken}");
//       print('login method api sevice2 ${DateTime.now().second}');
//       response = await _dio.post(url,
//           data: params,
//           options: Options(responseType: ResponseType.json, headers: {
//             "Accept": "application/json",
//             "Content-Type": "application/json",
//             "Authorization": "Bearer $userToken"
//           }));
//       print("waleed nawaz" + response.toString());
//     } on DioError catch (exception) {
//       print("user token ${userToken}");
//       print("user token  test catch${exception.response}");
//       String content = exception.response.toString();
//
//       if (content.contains("\"success\":false")) {
//         print("the error is ${content}");
//         content = content.substring(content.indexOf("\"message\":\"") + 11,
//             content.lastIndexOf("}") - 1);
//         String msg = content;
//         print(msg);
//         if (msg.contains('Token Expired')) {
//           SharedPreferences sharedPreferences =
//           await SharedPreferences.getInstance();
//           sharedPreferences.remove(AppConstant.saveUserToken);
//           sharedPreferences.remove(AppConstant.saveUserId);
//           AppConstant.flutterToastError(responseMessage: 'User was login to an other device plz login again');
//           Get.offAllNamed(Routes.SIGNIN);
//         }
//       }
//       if(content.contains("Page Not Found.")){
//         AppConstant.flutterToastError(responseMessage: "Error Page Not Found");
//         Get.back();
//       }
//       if(content.contains("Attempt to assign property")){
//         AppConstant.flutterToastError(responseMessage: "Error please try again");
//         Get.back();
//       }
//       if(content.contains("Trying to get property 'password' of non-object")){
//         AppConstant.flutterToastError(responseMessage: "User Not Found");
//         Get.back();
//       }
//       if(content.contains("These credentials do not match our")){
//         AppConstant.flutterToastError(responseMessage: "These Email or Password  do not match our records");
//         Get.back();
//       }
//       if(content.contains("The email address has already been taken")){
//         AppConstant.flutterToastError(responseMessage: "The email address has already been taken");
//         Get.back();
//       }
//       if(content.contains("The phone has already been taken.")){
//         AppConstant.flutterToastError(responseMessage: "The phone has already been taken.");
//         Get.back();
//       }
//       if(content.contains("Creating default object from empty value Line")){
//         AppConstant.flutterToastError(responseMessage: "Please again upload");
//         Get.back();
//       }
//       if(content.contains("Connecting timed out")){
//         AppConstant.flutterToastError(responseMessage: "Please try again time out , Your internet Connection is very slow ");
//         Get.back();
//       }
//       if(exception.message.contains("Connecting timed out")){
//         AppConstant.flutterToastError(responseMessage: "Your internet connection is very slow try again");
//         Get.back();
//       }
//       if(exception.message.contains("SocketException: Failed host lookup:")){
//         AppConstant.flutterToastError(responseMessage: "SocketException: Failed host lookup:");
//         Get.back();
//       }
//       print(" this iss diio error"+exception.message.toString());
//       throw RemoteException(dioError: exception);
//     }
//     return response;
//   }
//
//   // for HTTP.POST Request.
//   Future<Response> addNewPost(String url,var params) async {
//     SharedPreferences sharedP = await SharedPreferences.getInstance();
//     String? userToken = sharedP.getString('userLogin');
//     Response response;
//     try {
//       response = await _dio.post(url,
//           data: params,
//           options: Options(responseType: ResponseType.json, headers: {
//             "Accept": "application/json",
//            // "Content-Type": "application/json",
//             "Content-Type" : "multipart/form-data",
//             "Authorization": "Bearer $userToken"
//           }));
//     } on DioError catch (exception) {
//       String content = exception.response.toString();
//       if(content.contains("Unauthenticated or Token Expired, Please Login")){
//         AppConstant.flutterToastError(responseMessage: "Unauthenticated or Token Expired, Please Login");
//         Get.back();
//       }
//       if(content.contains("\"Status\":400,\"message\":\"Invalid Post\"")){
//         AppConstant.invalidPost = "invalidPost";
//         AppConstant.flutterToastError(responseMessage: "Invalid Post Video Not Uploaded");
//         Get.back();
//
//       }
//       if(content.contains("ERROR:")){
//         AppConstant.flutterToastError(responseMessage: "Error ");
//         Get.back();
//       }
//       if(content.contains("An error occurred while validating the data")){
//         AppConstant.flutterToastError(responseMessage: "occurred while validating the data");
//         Get.back();
//       }
//       if(content.contains("\"success\":false,\"message\":\"Page Not Found.\"")){
//         Get.back();
//         AppConstant.flutterToastError(responseMessage: "Page Not Found");
//       }
//       if(content.contains("Trying to get property 'password' of non-object")){
//         AppConstant.flutterToastError(responseMessage: "User Not Found");
//         Get.back();
//       }
//       if(content.contains("These credentials do not match our")){
//         AppConstant.flutterToastError(responseMessage: "These Email or Password  do not match our records");
//         Get.back();
//       }
//       if(content.contains("The email address has already been taken")){
//         AppConstant.flutterToastError(responseMessage: "The email address has already been taken");
//         Get.back();
//       }
//       if(content.contains("The phone has already been taken.")){
//         AppConstant.flutterToastError(responseMessage: "The phone has already been taken.");
//         Get.back();
//       }
//       if(content.contains("Creating default object from empty value Line")){
//         AppConstant.flutterToastError(responseMessage: "Please again upload");
//         Get.back();
//       }
//       if(content.contains("The given data was invalid.")){
//         AppConstant.flutterToastError(responseMessage: "The given data was invalid.");
//         Get.back();
//
//       }
//       if(exception.message.contains("Failed host lookup")){
//         AppConstant.flutterToastError(responseMessage: "Failed host lookup");
//         Get.back();
//       }
//       print('login method api sevice3 ${DateTime.now().second}');
//       throw RemoteException(dioError: exception);
//     }
//      return response;
//   }
//
//   // for HTTP.POST Request.
//   Future<Response> forGotPassword(
//       String url, Map<String, Object> params) async {
//     Response response;
//
//     try {
//       print("user token  test ${AppConstant.testToken}");
//       print('login method api sevice2 ${DateTime.now().second}');
//       response = await _dio.post(url,
//           data: params,
//           options: Options(responseType: ResponseType.json, headers: {
//             "Accept": "application/json",
//             "Content-Type": "application/json",
//           }));
//
//     } on DioError catch (exception) {
//
//       String content = exception.response.toString();
//       if(content.contains("We can't find a user with that e-mail address")){
//         AppConstant.flutterToastError(responseMessage: "We can't find a user with that e-mail address");
//         Get.back();
//       }
//       throw RemoteException(dioError: exception);
//     }
//     return response;
//   }
//
//   // for HTTP.PATCH Request.
//   Future<Response> patch(String url, Map<String, Object> params) async {
//     Response response;
//     try {
//       response = await _dio.patch(url,
//           data: params,
//           options: Options(
//             responseType: ResponseType.json,
//           ));
//     } on DioError catch (exception) {
//       throw RemoteException(dioError: exception);
//     }
//     return response;
//   }
//
//   // for dwonload Request.
//   Future<Response> download(String url, String pathName,
//       void Function(int, int)? onReceiveProgress) async {
//     Response response;
//     try {
//       response = await _dio.download(
//         url,
//         pathName,
//         onReceiveProgress: onReceiveProgress,
//       );
//     } on DioError catch (exception) {
//       throw RemoteException(dioError: exception);
//     }
//     return response;
//   }
 }
