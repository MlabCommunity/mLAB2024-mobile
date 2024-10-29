// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_generation_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _QuizGenerationClient implements QuizGenerationClient {
  _QuizGenerationClient(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  }) {
    baseUrl ??=
        'https://mlab2024-backend.yellowocean-31330507.westeurope.azurecontainerapps.io/api/';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<GenerateQuizModel> generateQuiz({
    required String content,
    required int numberOfQuestions,
    required List<String> questionTypes,
    required List<MultipartFile> attachments,
    required String language,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'Content',
      content,
    ));
    _data.fields.add(MapEntry(
      'NumberOfQuestions',
      numberOfQuestions.toString(),
    ));
    questionTypes.forEach((i) {
      _data.fields.add(MapEntry('QuestionTypes', i));
    });
    _data.files.addAll(attachments.map((i) => MapEntry('Attachments', i)));
    _data.fields.add(MapEntry(
      'Language',
      language,
    ));
    final _options = _setStreamType<GenerateQuizModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
        .compose(
          _dio.options,
          'quizzes/generate-quiz',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late GenerateQuizModel _value;
    try {
      _value = GenerateQuizModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<CreatedQuizResult> createQuiz(Map<String, dynamic> body) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _options = _setStreamType<CreatedQuizResult>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          'quizzes',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late CreatedQuizResult _value;
    try {
      _value = CreatedQuizResult.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$quizGenerationClientHash() =>
    r'2a611a98c708a6436811d652dd05cc8d8bdb57cb';

/// See also [quizGenerationClient].
@ProviderFor(quizGenerationClient)
final quizGenerationClientProvider =
    AutoDisposeProvider<QuizGenerationClient>.internal(
  quizGenerationClient,
  name: r'quizGenerationClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$quizGenerationClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef QuizGenerationClientRef = AutoDisposeProviderRef<QuizGenerationClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
