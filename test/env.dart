import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: ".env")
abstract class Env {
  @EnviedField(varName: 'OPENAI_API_KEY')
  static const String apiKey = _Env.apiKey;

  @EnviedField(varName: 'AZURE_API_KEY')
  static const String azureApiKey = _Env.azureApiKey;

  @EnviedField(varName: 'AZURE_API_VERSION')
  static const String azureApiVersion = _Env.azureApiVersion;

  @EnviedField(varName: 'AZURE_DEPLOYMENT_NAME')
  static const String azureDeploymentName = _Env.azureDeploymentName;

  @EnviedField(varName: 'HTTP_PROXY', defaultValue: '')
  static const String httpProxy = _Env.httpProxy;

  @EnviedField(varName: 'BASE_URL', defaultValue: '')
  static const String baseUrl = _Env.baseUrl;
}
