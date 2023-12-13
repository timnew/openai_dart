import 'constants.dart';

class OpenaiConfig {
  OpenaiConfig({
    this.apiType,
    required this.apiKey,
    this.apiVersion,
    this.organizationId,
    String? baseUrl,
    this.httpProxy,
  }) {
    _baseUrl = baseUrl ?? Constants.kBaseUrl;
  }

  /// apiType: [openai | azure], default as openai
  final String? apiType;

  // apiVersion: such as "2023-05-15", "2023-07-01-preview" (azure needed)
  final String? apiVersion;

  /// [apiKey] is the API key for your OpenAI account.
  final String apiKey;

  /// [organizationId] is the ID of the organization you want to use.
  /// Leave it null if no organization is used.
  final String? organizationId;

  /// [baseUrl] is the base URL for the OpenAI API. It defaults to
  /// [Constants.kBaseUrl]. A '/v1' will be added at the end of url.
  String _baseUrl = "";

  /// [httpProxy] is the HTTP proxy to use for requests. If not specified,
  /// no proxy will be used.
  final String? httpProxy;

  String get baseUrl {
    if (apiType == 'azure') return _baseUrl;
    if (_baseUrl.endsWith("/")) {
      _baseUrl = _baseUrl.replaceAll(RegExp(r'/+$'), "");
    }
    if (_baseUrl.endsWith("/v1")) {
      return _baseUrl;
    }
    return "$_baseUrl/v1";
  }
}
