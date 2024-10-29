class ApiConstants {
  static const String domain = 'mlab2024-backend.yellowocean-31330507.westeurope.azurecontainerapps.io';
  static const String baseUrl = 'https://$domain/api/';
  static const String signUpEndpoint = 'auth/signup';
  static const String signInEndpoint = 'auth/signin';
  static const String userEndpoint = '/profile';
  static const String updateUserEndpoint = '/profile';
  static const String quizzArchiveEndpoint = '/participations/history';
  static const String deleteUserEndpoint = 'profile';
  static const String signOutEndpoint = 'auth/logout';

  static const String refreshAccessTokenEndpoint = 'auth/refresh-token';

  static const String authHeader = 'Authorization';
  static const String authBearer = 'Bearer ';

  static const String contentTypeHeader = 'Content-Type';
  static const String contentTypeJson = 'application/json';

  static const String accessTokenStorageKey = 'accessToken';
  static const String refreshTokenStorageKey = 'refreshToken';

  static const String quizGenerationEndpoint = 'quizzes/generate-quiz';
  static const String quizCreateEndpoint = 'quizzes';

  static const int participationsPageSize = 10;
  static const String getQuizEndpoint = 'quizzes/{id}';
  static const String updateQuizStatusEndpoint = 'quizzes/{id}/status';
  static const String updateQuizAvailabilityEndpoint = 'quizzes/{id}/availability';
  static const String updateQuizDetailsEndpoint = 'quizzes';
  static const String participationsPageQuery = 'Page';
  static const String participationsPageSizeQuery = 'PageSize';

  static const String deleteQuestionEndpoint = 'questions/{id}';
  static const String addQuestionEndpoint = 'questions';
  static const String updateQuestionEndpoint = 'questions';

  static const String quizListEndpoint = 'quizzes';
  static const String deleteQuizEndpoint = 'quizzes/{id}';
  static const int quizPageSize = 10;
  static const String quizListPageQuery = 'Page';
  static const String quizListPageSizeQuery = 'PageSize';

  static const String joinQuizEndpoint = '{joinCode}';
  static const String submitParticipationEndpoint = 'participations/submit';
  static const String getQuizParticipation = 'participations/{quizParticipationId}';
  static const String getQuizResult = 'participations/{quizParticipationId}/result';

  static const String guestSignInEndpoint = 'auth/guests';
  static const String guestAccountCreationEndpoint = '/profile/convert-guest';

  static const String userRoleTokenKey = "http://schemas.microsoft.com/ws/2008/06/identity/claims/role";
}
