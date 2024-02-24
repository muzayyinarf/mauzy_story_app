const String _baseUrl = 'https://story-api.dicoding.dev/v1';

class GlobalVariables {
  static const baseUrl = _baseUrl;
}

class StoryApi {
  static const String register = '$_baseUrl/register';
  static const String login = '$_baseUrl/login';
  static const String addNewStory = '$_baseUrl/stories';
  static const String addNewStoryGuest = '$_baseUrl/stories/guest';
  static const String getAllStories = '$_baseUrl/stories';
  static String getDetailStory(String id) => '$_baseUrl/stories/$id';
}
