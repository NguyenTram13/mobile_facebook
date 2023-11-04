import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start social Group Code

class SocialGroup {
  static String baseUrl = 'https://chiase.shoppet.fun/api/auth';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static GetProfileCall getProfileCall = GetProfileCall();
  static GetPostHomeCall getPostHomeCall = GetPostHomeCall();
  static GetNineImageCall getNineImageCall = GetNineImageCall();
  static GetAboutProfileCall getAboutProfileCall = GetAboutProfileCall();
  static GetFriendCall getFriendCall = GetFriendCall();
  static CreatePostCall createPostCall = CreatePostCall();
  static UploadImagesCall uploadImagesCall = UploadImagesCall();
  static LikePostCall likePostCall = LikePostCall();
  static CommentCall commentCall = CommentCall();
  static GetNotiCall getNotiCall = GetNotiCall();
  static GetRequestFriendCall getRequestFriendCall = GetRequestFriendCall();
  static ReadAllNotiCall readAllNotiCall = ReadAllNotiCall();
  static RefuseFriendCall refuseFriendCall = RefuseFriendCall();
  static AcceptFriendCall acceptFriendCall = AcceptFriendCall();
  static AddFriendCall addFriendCall = AddFriendCall();
  static GeneratingQRCodeCall generatingQRCodeCall = GeneratingQRCodeCall();
  static ReadAndAddFriendCall readAndAddFriendCall = ReadAndAddFriendCall();
  static UploadOneImageCall uploadOneImageCall = UploadOneImageCall();
  static GetConversionCall getConversionCall = GetConversionCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${SocialGroup.baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetProfileCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    int? idUser,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile',
      apiUrl: '${SocialGroup.baseUrl}/admin/user/${idUser}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetPostHomeCall {
  Future<ApiCallResponse> call({
    int? idUser,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Post Home',
      apiUrl: '${SocialGroup.baseUrl}/post/home?id_user=${idUser}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetNineImageCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Nine Image',
      apiUrl: '${SocialGroup.baseUrl}/post/getNineImage/?user_id=${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetAboutProfileCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get About Profile',
      apiUrl: '${SocialGroup.baseUrl}/profile/fetchAll/?user_id=${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetFriendCall {
  Future<ApiCallResponse> call({
    int? idUser,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Friend',
      apiUrl: '${SocialGroup.baseUrl}/friend/accept/${idUser}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreatePostCall {
  Future<ApiCallResponse> call({
    String? content = '',
    int? userId,
    String? accessToken = '',
    List<String>? urlsList,
  }) async {
    final urls = _serializeList(urlsList);

    final ffApiRequestBody = '''
{
  "content": "${content}",
  "user_id": ${userId},
  "images": ${urls}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Post',
      apiUrl: '${SocialGroup.baseUrl}/post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UploadImagesCall {
  Future<ApiCallResponse> call({
    List<FFUploadedFile>? imagesList,
  }) async {
    final images = imagesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'Upload images',
      apiUrl: '${SocialGroup.baseUrl}/post/upload_images',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'images': images,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LikePostCall {
  Future<ApiCallResponse> call({
    String? avatarLike = '',
    int? ownPost,
    int? postId,
    String? text = '',
    int? userId,
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "avatar_like": "${avatarLike}",
  "ownPost": ${ownPost},
  "post_id": ${postId},
  "text": "${text}",
  "user_id": ${userId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Like Post',
      apiUrl: '${SocialGroup.baseUrl}/like',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CommentCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? content = '',
    int? postId,
    int? userId,
    String? avatarComment = '',
    int? ownPost,
    String? text = '',
  }) async {
    final ffApiRequestBody = '''
{
  "content": "${content}",
  "post_id": ${postId},
  "user_id": ${userId},
  "avatar_comment": "${avatarComment}",
  "ownPost": ${ownPost},
  "text": "${text}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Comment',
      apiUrl: '${SocialGroup.baseUrl}/comment',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetNotiCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Noti',
      apiUrl: '${SocialGroup.baseUrl}/notifycation/${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetRequestFriendCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Request Friend',
      apiUrl: '${SocialGroup.baseUrl}/friend/${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReadAllNotiCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Read All Noti',
      apiUrl: '${SocialGroup.baseUrl}/notifycation/${userId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RefuseFriendCall {
  Future<ApiCallResponse> call({
    int? idRowFriend,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Refuse Friend',
      apiUrl: '${SocialGroup.baseUrl}/friend/refuse/${idRowFriend}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AcceptFriendCall {
  Future<ApiCallResponse> call({
    int? id,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Accept Friend',
      apiUrl: '${SocialGroup.baseUrl}/friend/accept/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AddFriendCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? avatar = '',
    int? recie,
    int? sender,
    String? text = '',
  }) async {
    final ffApiRequestBody = '''
{
  "avatar": "${avatar}",
  "recie": ${recie},
  "sender": ${sender},
  "text": "${text}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Friend',
      apiUrl: '${SocialGroup.baseUrl}/friend',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GeneratingQRCodeCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Generating QR Code',
      apiUrl: '${SocialGroup.baseUrl}/admin/user/renderQR',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReadAndAddFriendCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    FFUploadedFile? qrCode,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Read and Add Friend',
      apiUrl: '${SocialGroup.baseUrl}/admin/user/readQRAndAddFriend',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'qr_code': qrCode,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UploadOneImageCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? image,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Upload One Image',
      apiUrl: '${SocialGroup.baseUrl}/post/upload_one_image',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetConversionCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Conversion',
      apiUrl: '${SocialGroup.baseUrl}/conversation',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End social Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
