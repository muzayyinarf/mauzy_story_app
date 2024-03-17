import "package:http/http.dart" as http;
import "package:mauzy_story_app/core.dart";
import 'package:dartz/dartz.dart';

class ApiService {
  Future<Either<String, LoginResponseModel>> login(
      LoginRequestModel model) async {
    final response = await http.post(
      Uri.parse(StoryApi.login),
      headers: {'Content-Type': 'application/json'},
      body: model.toJson(),
    );
    if (response.statusCode == 200) {
      final result = LoginResponseModel.fromJson(response.body);
      return Right(result);
    } else {
      final result = CommonResponseModel.fromJson(response.body);
      return Left(result.message);
    }
  }

  Future<Either<String, CommonResponseModel>> register(
      RegisterRequestModel model) async {
    final response = await http.post(
      Uri.parse(StoryApi.register),
      headers: {'Content-Type': 'application/json'},
      body: model.toJson(),
    );
    if (response.statusCode == 201) {
      return Right(CommonResponseModel.fromJson(response.body));
    } else {
      final result = CommonResponseModel.fromJson(response.body);
      return Left(result.message);
    }
  }

  Future<Either<String, CommonResponseModel>> addNewStory(
      String token, List<int> bytes, String fileName, String description,
      {double? lat, double? lon}) async {
    var request =
        http.MultipartRequest('POST', Uri.parse(StoryApi.addNewStory));

    final fields = {'description': description};

    if (lat != null) request.fields['lat'] = lat.toString();
    if (lon != null) request.fields['lon'] = lon.toString();

    final multiPartFile = http.MultipartFile.fromBytes(
      'photo',
      bytes,
      filename: fileName,
    );

    final headers = {
      'Content-Type': 'multipart/form-data',
      'Authorization': 'Bearer $token'
    };

    request.files.add(multiPartFile);
    request.fields.addAll(fields);
    request.headers.addAll(headers);

    final response = await request.send();
    final responseBody = await response.stream.bytesToString();

    if (response.statusCode == 201) {
      return Right(CommonResponseModel.fromJson(responseBody));
    } else {
      return Left(
          'Failed to add new story. Server responded with status code ${response.statusCode}');
    }
  }

  Future<Either<String, CommonResponseModel>> addNewStoryGuest(
      List<int> bytes, String fileName, String description,
      {double? lat, double? lon}) async {
    var request =
        http.MultipartRequest('POST', Uri.parse(StoryApi.addNewStoryGuest));

    if (lat != null) request.fields['lat'] = lat.toString();
    if (lon != null) request.fields['lon'] = lon.toString();

    final multiPartFile = http.MultipartFile.fromBytes(
      'photo',
      bytes,
      filename: fileName,
    );
    final fields = {'description': description};
    final headers = {'Content-Type': 'multipart/form-data'};

    request.files.add(multiPartFile);
    request.fields.addAll(fields);
    request.headers.addAll(headers);

    final response = await request.send();
    final responseBody = await response.stream.bytesToString();

    if (response.statusCode == 201) {
      return Right(CommonResponseModel.fromJson(responseBody));
    } else {
      return Left(
          'Failed to add new story with guest account. Server responded with status code ${response.statusCode}');
    }
  }

  Future<Either<String, ListStoryResponseModel>> getAllStory(String token,
      {int? page, int size = 10}) async {
    final Map<String, String> queryParams = {
      'page': '$page',
      'size': '$size',
      //'location': '$location', // Example parameter value
    };
    final response = await http.get(
      Uri.https('story-api.dicoding.dev', '/v1/stories', queryParams),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response.statusCode == 200) {
      return Right(ListStoryResponseModel.fromJson(response.body));
    } else {
      return Left(
          'Failed to get stories. Server responded with status code ${response.statusCode}');
    }
  }

  Future<Either<String, DetailStroyResponseModel>> detailStory(
      String id, String token) async {
    final response = await http.get(
      Uri.parse(StoryApi.getDetailStory(id)),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response.statusCode == 200) {
      return Right(DetailStroyResponseModel.fromJson(response.body));
    } else {
      return Left(
          'Failed to get detail story. Server responded with status code ${response.statusCode}');
    }
  }
}
