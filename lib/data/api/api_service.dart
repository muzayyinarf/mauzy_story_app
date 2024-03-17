import "dart:convert";

import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "package:http/http.dart";
import "package:mauzy_story_app/core.dart";
import 'package:dartz/dartz.dart';

class ApiService {
  Future<Either<String, LoginResponseModel>> login(
      LoginRequestModel model) async {
    try {
      final Response response = await http.post(
        Uri.parse(StoryApi.login),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(model.toJson()),
      );
      if (response.statusCode == 200) {
        final result = LoginResponseModel.fromJson(json.decode(response.body));
        return Right(result);
      } else {
        final result = CommonResponseModel.fromJson(json.decode(response.body));
        return Left(result.message);
      }
    } catch (e) {
      debugPrint("$e");
      return Left("$e");
    }
  }

  Future<Either<String, CommonResponseModel>> register(
      RegisterRequestModel model) async {
    try {
      final response = await http.post(
        Uri.parse(StoryApi.register),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(model.toJson()),
      );

      if (response.statusCode == 201) {
        return Right(CommonResponseModel.fromJson(jsonDecode(response.body)));
      } else {
        final result = CommonResponseModel.fromJson(jsonDecode(response.body));
        return Left(result.message);
      }
    } catch (e) {
      debugPrint("$e");
      return Left("$e");
    }
  }

  Future<Either<String, CommonResponseModel>> addNewStory(
      String token, List<int> bytes, String fileName, String description,
      {double? lat, double? lon}) async {
    try {
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
        return Right(CommonResponseModel.fromJson(json.decode(responseBody)));
      } else {
        return Left(
            'Failed to add new story. Server responded with status code ${response.statusCode}');
      }
    } catch (e) {
      debugPrint("$e");
      return Left("$e");
    }
  }

  Future<Either<String, CommonResponseModel>> addNewStoryGuest(
      List<int> bytes, String fileName, String description,
      {double? lat, double? lon}) async {
    try {
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
        return Right(CommonResponseModel.fromJson(json.decode(responseBody)));
      } else {
        return Left(
            'Failed to add new story with guest account. Server responded with status code ${response.statusCode}');
      }
    } catch (e) {
      debugPrint("$e");
      return Left("$e");
    }
  }

  Future<Either<String, ListStoryResponseModel>> getAllStory(String token,
      {int? page, int size = 10}) async {
    final Map<String, String> queryParams = {
      'page': '$page',
      'size': '$size',
    };
    final response = await http.get(
      Uri.https('story-api.dicoding.dev', '/v1/stories', queryParams),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response.statusCode == 200) {
      return Right(ListStoryResponseModel.fromJson(json.decode(response.body)));
    } else {
      return Left(
          'Failed to get stories. Server responded with status code ${response.statusCode}');
    }
  }

  Future<Either<String, DetailStoryResponseModel>> detailStory(
      String id, String token) async {
    final response = await http.get(
      Uri.parse(StoryApi.getDetailStory(id)),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response.statusCode == 200) {
      return Right(
          DetailStoryResponseModel.fromJson(json.decode(response.body)));
    } else {
      return Left(
          'Failed to get detail story. Server responded with status code ${response.statusCode}');
    }
  }
}
