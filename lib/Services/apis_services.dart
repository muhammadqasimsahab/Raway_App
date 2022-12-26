

import 'package:get/get_connect/http/src/response/response.dart';

import 'network_client.dart';

class ApiService {
  final NetworkClient networkClient;

  ApiService({required this.networkClient});

  // ///Register
  // Future registerUser(Map<String, Object> params) {
  //   return networkClient.post('api/auth/register', params);
  // }
  //
  // ///LogIn
  // Future loginUser(Map<String, Object> params) {
  //   print('login method api sevice1 ${DateTime.now().second}');
  //   return networkClient.post('api/auth/login', params);
  // }

  // api/auth/password/update/190
  ///Update User Profile
  // Future updateUserProfile(Map<String, Object> params) {
  //   return networkClient.post(
  //       'api/auth/update_Profile/${AppConstant.getUserId}', params);
  // }

  ///Update  Password
  // Future<Response> updatePassword(Map<String, Object> params) {
  //   return networkClient.post(
  //       'api/auth/password/update/${AppConstant.getUserId}', params);
  // }

  ///forgot Password
  // Future<Response> forgotPasswordWithPassword(Map<String, Object> params) {
  //   return networkClient.forGotPassword('api/auth/password/email', params);
  // }
  //
   ///PostReview
  // Future<Response> postReview(Map<String, Object> params) {
  //   return networkClient.post('api/store_reviews', params);
  // }
  //
  ///makeAnOffer
  // Future<Response> makeAnOffer(Map<String, Object> params) {
  //   return networkClient.post('api/offer', params);
  // }

//   ///getPost a specific user post
//   // /${AppConstant.appPostUserId}
//   Future<Response> getMyAllPost() {
//     print('overall user post id');
//     return networkClient.get('api/my_posts/${AppConstant.appPostUserId}', {});
//   }
  /// MyAdverts show only my post
//   Future<Response> myAdverts() {
//     return networkClient.get('api/my_posts/${AppConstant.getUserId}', {});
//   }
//
//
//
//   ///post video with post id
//   Future<Response> postMyVideoWithPostId(var params) {
//     return networkClient.addNewPost('api/posts/store_vedio', params);
//   }
//
//   /// for add new post
//   Future<Response> postNewAdd(var params) {
//     return networkClient.addNewPost(
//       'api/posts',
//       params,
//     );
//   }
//
//   ///getMyVideoWithPostId
//   Future<Response> getVideoWithPostId({required String postId}) {
//     print("this is apis post id ${AppConstant.postId}");
//     return networkClient.get('api/posts/post_videos/${postId}', {});
//   }
//   ///getMy All Reviews on my all posts
//   Future<Response> getMyAllPostReviews({required String userId}) {
//     // AppConstant.appPostUserId;
//     return networkClient.get('api/mypostreviews/${AppConstant.appPostUserId}', {});
//   }
//   ///get Total Rating on My All Post
//   Future<Response> getMyAllPostReviewsRating({required String userId}) {
//     // AppConstant.appPostUserId;
//     return networkClient.get('api/user_reviews/${userId}', {});
//   }
//   ///  product owner  details
//   Future<Response> viewProfile({required String userId}) {
//     return networkClient.get('api/auth/profile/${userId}', {});
//   }
//
//   ///getReview and rating only specific post
//   Future<Response> getReviewWithPostId({required String postId}) {
//     return networkClient.get('api/reviews/${postId}', {});
//   }
//
//   /// Post Message
//   Future<Response> postMessage(Map<String, Object> params) {
//     print("this is value ${params.toString()}");
//     return networkClient.post('api/threads/latest_thread', params);
//   }
//
//   /// Post Message
//   Future<Response> signInWithGoogle(Map<String, Object> params) {
//     print("this is value ${params.toString()}");
//     return networkClient.post('api/google_login', params);
//   }
//
//   ///Get Category
//   Future<Response> getCategory() {
//     return networkClient.get('api/categories', {});
//   }
//
//   /// getHomeScreen  Category and find data through id
//   Future<Response> getDataOnCategory({required final name}) {
//     return networkClient.get('api/posts/find/$name', {});
//   }
//   /// getHomeScreen  Category and find data through id
//   Future<Response> getSubCategory({required final name}) {
//     return networkClient.get('api/categories?embed=children&parentId=$name', {});
//   }
//   ///get Message
//   Future<Response> getMessages({required String recieverId}) {
//     print("get message");
//     return networkClient.get(
//         'api/threads/get_mychat/${AppConstant.getUserId}/${recieverId}', {});
//   }
//
//   // api/threads/get_sms/190
//   ///get Message
//   Future<Response> getInboxUsers({required String userId}) {
//     print("get message");
//     return networkClient
//         .get('api/threads/get_sms/${userId}', {});
//   }
//
//   ///Get Item Details through Id
//   Future<Response> getItemDetail({required final id}) {
//     return networkClient.get('/api/posts/$id', {});
//   }
//
//   ///LogOut
//   Future<Response> logout() {
//     return networkClient.get('api/auth/logout/${AppConstant.getUserId}', {});
//   }
//
//   /// current user details already login
//   Future<Response> userProfile() {
//     return networkClient.get('api/auth/profile/${AppConstant.getUserId}', {});
//   }
//
//
//
//
//
//   /// Get packages data
//   Future<Response> getPackages() {
//     return networkClient.get('api/packages', {});
//   }
//
//   /// for remove my favorite post
//   Future<Response> removeMyFavorite({required String postId}) {
//     return networkClient.post('api/remove-fav/${postId}', {});
//   }
//
//   /// for delete all my favorite post
//   Future<Response> deleteMyAllFavoritePost() {
//     return networkClient.post('api/delfav/${AppConstant.getUserId}', {});
//   }
//
//   /// add to favorite
//   Future<Response> addToFavorite(Map<String, Object> params) {
//     return networkClient.post('api/add_fav', params);
//   }
//
//   /// saved post
//   Future<Response> getMyFavorite() {
//     return networkClient.get('api/get-fav/${AppConstant.getUserId}', {});
//   }
//
//   /// google signIn
//   Future<Response> googleSignin() {
//     return networkClient.get('auth/google', {});
//   }
}
