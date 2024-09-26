import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openai_api/openai_api.dart';

import 'constants.dart';

part 'config.freezed.dart';

@freezed
class OpenaiConfig with _$OpenaiConfig {
  const OpenaiConfig._();

  // default factory is equal to OpenaiConfig.openai({
  const factory OpenaiConfig({
    required String apiKey,
    String? organizationId,
    @Default(Constants.kBaseUrl) String apiBaseUrl,
    String? httpProxy,
  }) = _Openai;

  const factory OpenaiConfig.azure({
    required String apiKey,
    required String apiVersion,
    required String apiBaseUrl,
    String? httpProxy,
  }) = _Azure;

  bool get isAzure => this is _Azure;
  bool get isOpenai => this is _Openai;

  String get apiVersion {
    if (isAzure) {
      return (this as _Azure).apiVersion;
    }
    return "v1";
  }

  String get baseUrl {
    if (isAzure) {
      return (this as _Azure).apiBaseUrl;
    } else {
      var apiBaseUrl = (this as _Openai).apiBaseUrl;
      if (apiBaseUrl.endsWith("/")) {
        apiBaseUrl = apiBaseUrl.replaceAll(RegExp(r'/+$'), "");
      }
      if (apiBaseUrl.endsWith("/v1")) {
        return apiBaseUrl;
      }
      return "$apiBaseUrl/v1";
    }
  }

  Map<String, String> authenticateHeaders(bool isBeta) {
    if (isAzure) {
      return {
        'api-key': apiKey,
        'Content-Type': 'application/json',
      };
    } else {
      final openai = this as _Openai;
      return {
        'Authorization': 'Bearer $apiKey',
        if (isBeta) 'OpenAI-Beta': 'assistants=v1',
        if (openai.organizationId != null) 'OpenAI-Organization': openai.organizationId!,
      };
    }
  }
}
