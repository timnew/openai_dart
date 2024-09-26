import 'package:openai_api/openai_api.dart';
import 'package:test/test.dart';
import './env.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    /// test for openai default value, all values should be the same as the default value
    test('openai default value', () {
      final key = "sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";

      final openai = OpenaiConfig(apiKey: key);
      expect(openai.apiKey, equals(key));
      expect(openai.baseUrl, equals("${Constants.kBaseUrl}/v1"));
      expect(openai.httpProxy, isNull);
    });

    /// test for openai custom value, all values should be the same as the input
    test('openai custom value', () {
      final key = "sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
      final baseUrl = "https://api.openai.com";
      final httpProxy = "http://localhost:7890";

      final openai = OpenaiConfig(
        apiKey: key,
        apiBaseUrl: baseUrl,
        httpProxy: httpProxy,
      );

      expect(openai.apiKey, equals(key));
      expect(openai.baseUrl, equals("$baseUrl/v1"));
      expect(openai.httpProxy, equals(httpProxy));

      expect(OpenaiConfig(apiKey: key, apiBaseUrl: "https://abc.com/ccc").baseUrl,
          equals("https://abc.com/ccc/v1"));

      expect(OpenaiConfig(apiKey: key, apiBaseUrl: "https://abc.com/ccc/").baseUrl,
          equals("https://abc.com/ccc/v1"));
    });
  });

  group('azure openai api test', () {
    test('azure openai api test', () async {
      final openai = OpenaiClient(
        config: OpenaiConfig.azure(
          apiBaseUrl: Env.baseUrl,
          apiVersion: Env.azureApiVersion,
          apiKey: Env.azureApiKey,
        ),
      );

      final request = ChatCompletionRequest(engine: Env.azureDeploymentName, messages: [
        ChatMessage(content: "Hello, how are you?", role: ChatMessageRole.system),
      ]);

      final resp = await openai.sendChatCompletion(request);
      resp.choices.forEach((element) {
        print(element);
      });
    });
    test('azure openai api streaming test', () async {
      final openai = OpenaiClient(
        config: OpenaiConfig.azure(
          apiBaseUrl: Env.baseUrl,
          apiVersion: Env.azureApiVersion,
          apiKey: Env.azureApiKey,
        ),
      );

      final request =
          ChatCompletionRequest(engine: Env.azureDeploymentName, stream: true, messages: [
        ChatMessage(content: "Hello, how are you?", role: ChatMessageRole.system),
      ]);

      var result = "";
      await openai.sendChatCompletionStream(request, onSuccess: (res) {
        print(res);
        if (res.choices.isEmpty) {
          return;
        }

        expect(
          res,
          isA<ChatCompletionResponse>()
              .having((p0) => p0.choices.first.delta, "delta should be not null", isNotNull),
        );

        if (res.choices.first.delta?.content != null) {
          result += res.choices.first.delta!.content!;
        }
      });

      print(result);

      // resp.choices.forEach((element) {
      //   print(element);
      // });
    });
  });
}
