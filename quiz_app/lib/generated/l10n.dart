// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Log In`
  String get loginButton {
    return Intl.message(
      'Log In',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registerButton {
    return Intl.message(
      'Register',
      name: 'registerButton',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get emailLabel {
    return Intl.message(
      'E-mail',
      name: 'emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Your e-mail`
  String get emailHint {
    return Intl.message(
      'Your e-mail',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordLabel {
    return Intl.message(
      'Password',
      name: 'passwordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Your password`
  String get passwordHint {
    return Intl.message(
      'Your password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get usernameLabel {
    return Intl.message(
      'Username',
      name: 'usernameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Your username`
  String get usernameHint {
    return Intl.message(
      'Your username',
      name: 'usernameHint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `This field is required.`
  String get thisFieldIsRequired {
    return Intl.message(
      'This field is required.',
      name: 'thisFieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters long.`
  String get passwordTooShort {
    return Intl.message(
      'Password must be at least 6 characters long.',
      name: 'passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one lowercase letter.`
  String get passwordRequiresLowercase {
    return Intl.message(
      'Password must contain at least one lowercase letter.',
      name: 'passwordRequiresLowercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one uppercase letter.`
  String get passwordRequiresUppercase {
    return Intl.message(
      'Password must contain at least one uppercase letter.',
      name: 'passwordRequiresUppercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one digit.`
  String get passwordRequiresDigit {
    return Intl.message(
      'Password must contain at least one digit.',
      name: 'passwordRequiresDigit',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one special character.`
  String get passwordRequiresSpecialChar {
    return Intl.message(
      'Password must contain at least one special character.',
      name: 'passwordRequiresSpecialChar',
      desc: '',
      args: [],
    );
  }

  /// `Invalid e-mail address.`
  String get invalidEmail {
    return Intl.message(
      'Invalid e-mail address.',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Invalid e-mail or password.`
  String get invalidEmailOrPassword {
    return Intl.message(
      'Invalid e-mail or password.',
      name: 'invalidEmailOrPassword',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully registered. You can now log in.`
  String get successfulRegistration {
    return Intl.message(
      'You have successfully registered. You can now log in.',
      name: 'successfulRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get signInAppBarTitle {
    return Intl.message(
      'Login',
      name: 'signInAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter credentials`
  String get signInHeading {
    return Intl.message(
      'Enter credentials',
      name: 'signInHeading',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get signInDontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'signInDontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get signUpAppBarTitle {
    return Intl.message(
      'Register',
      name: 'signUpAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Hello! 👋 Fill out the form to register`
  String get signUpHeading {
    return Intl.message(
      'Hello! 👋 Fill out the form to register',
      name: 'signUpHeading',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get signUpAlreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'signUpAlreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Password reset`
  String get forgotPasswordAppbarTitle {
    return Intl.message(
      'Password reset',
      name: 'forgotPasswordAppbarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPasswordHeading {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPasswordHeading',
      desc: '',
      args: [],
    );
  }

  /// `Do not worry! It happens. Enter the email address associated with your account.`
  String get forgotPasswordSubheading {
    return Intl.message(
      'Do not worry! It happens. Enter the email address associated with your account.',
      name: 'forgotPasswordSubheading',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get forgotPasswordInputLabel {
    return Intl.message(
      'E-mail',
      name: 'forgotPasswordInputLabel',
      desc: '',
      args: [],
    );
  }

  /// `Your e-mail`
  String get forgotPasswordInputHint {
    return Intl.message(
      'Your e-mail',
      name: 'forgotPasswordInputHint',
      desc: '',
      args: [],
    );
  }

  /// `Send e-mail`
  String get forgotPasswordButton {
    return Intl.message(
      'Send e-mail',
      name: 'forgotPasswordButton',
      desc: '',
      args: [],
    );
  }

  /// `E-mail sent`
  String get successfulPasswordResetRequestHeading {
    return Intl.message(
      'E-mail sent',
      name: 'successfulPasswordResetRequestHeading',
      desc: '',
      args: [],
    );
  }

  /// `Check your e-mail, there will be an e-mail with password reset link.`
  String get successfulPasswordResetRequestSubheading {
    return Intl.message(
      'Check your e-mail, there will be an e-mail with password reset link.',
      name: 'successfulPasswordResetRequestSubheading',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get successfulPasswordResetRequestButton {
    return Intl.message(
      'Back',
      name: 'successfulPasswordResetRequestButton',
      desc: '',
      args: [],
    );
  }

  /// `Password reset`
  String get newPasswordAppbarTitle {
    return Intl.message(
      'Password reset',
      name: 'newPasswordAppbarTitle',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPasswordHeading {
    return Intl.message(
      'New password',
      name: 'newPasswordHeading',
      desc: '',
      args: [],
    );
  }

  /// `This new password must be unique to those previously used.`
  String get newPasswordSubheading {
    return Intl.message(
      'This new password must be unique to those previously used.',
      name: 'newPasswordSubheading',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get newPasswordInputLabel {
    return Intl.message(
      'New password',
      name: 'newPasswordInputLabel',
      desc: '',
      args: [],
    );
  }

  /// `Your password`
  String get newPasswordInputHint {
    return Intl.message(
      'Your password',
      name: 'newPasswordInputHint',
      desc: '',
      args: [],
    );
  }

  /// `Save and login`
  String get newPasswordButton {
    return Intl.message(
      'Save and login',
      name: 'newPasswordButton',
      desc: '',
      args: [],
    );
  }

  /// `Title: `
  String get quizzSummaryTitle {
    return Intl.message(
      'Title: ',
      name: 'quizzSummaryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create quizz`
  String get quizzCreationAppBarTitle {
    return Intl.message(
      'Create quizz',
      name: 'quizzCreationAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Content Text`
  String get quizzCreationTextPromptHeading {
    return Intl.message(
      'Content Text',
      name: 'quizzCreationTextPromptHeading',
      desc: '',
      args: [],
    );
  }

  /// `You can either enter text, upload files, or use a combination of both to create your quizz.`
  String get quizzCreationTextPromptSubheading {
    return Intl.message(
      'You can either enter text, upload files, or use a combination of both to create your quizz.',
      name: 'quizzCreationTextPromptSubheading',
      desc: '',
      args: [],
    );
  }

  /// `Upload file`
  String get quizzCreationUploadFile {
    return Intl.message(
      'Upload file',
      name: 'quizzCreationUploadFile',
      desc: '',
      args: [],
    );
  }

  /// `Content Text`
  String get quizzCreationTextPromptTextAreaLabel {
    return Intl.message(
      'Content Text',
      name: 'quizzCreationTextPromptTextAreaLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter the text for your quizz`
  String get quizzCreationTextPromptTextAreaHint {
    return Intl.message(
      'Enter the text for your quizz',
      name: 'quizzCreationTextPromptTextAreaHint',
      desc: '',
      args: [],
    );
  }

  /// `Max size: 5MB`
  String get quizzCreationAttachFileMaxSize {
    return Intl.message(
      'Max size: 5MB',
      name: 'quizzCreationAttachFileMaxSize',
      desc: '',
      args: [],
    );
  }

  /// `Types supported: .txt, .pdf, .docx, .xlsx, .pptx`
  String get quizzCreationAttachFileAllowedTypes {
    return Intl.message(
      'Types supported: .txt, .pdf, .docx, .xlsx, .pptx',
      name: 'quizzCreationAttachFileAllowedTypes',
      desc: '',
      args: [],
    );
  }

  /// `You can attach maximum of 3 files.`
  String get quizzCreationMaxAttachmentsError {
    return Intl.message(
      'You can attach maximum of 3 files.',
      name: 'quizzCreationMaxAttachmentsError',
      desc: '',
      args: [],
    );
  }

  /// `You have already attached this file.`
  String get quizzCreationDuplicateAttachmentsError {
    return Intl.message(
      'You have already attached this file.',
      name: 'quizzCreationDuplicateAttachmentsError',
      desc: '',
      args: [],
    );
  }

  /// `You need to provide either text or upload file.`
  String get quizzCreationYouNeedToProvideContent {
    return Intl.message(
      'You need to provide either text or upload file.',
      name: 'quizzCreationYouNeedToProvideContent',
      desc: '',
      args: [],
    );
  }

  /// `Configure quizz`
  String get quizzCreationConfigureHeading {
    return Intl.message(
      'Configure quizz',
      name: 'quizzCreationConfigureHeading',
      desc: '',
      args: [],
    );
  }

  /// `Here, you can create quizz based on your prompt.`
  String get quizzCraetionConfigureSubheading {
    return Intl.message(
      'Here, you can create quizz based on your prompt.',
      name: 'quizzCraetionConfigureSubheading',
      desc: '',
      args: [],
    );
  }

  /// `What type of questions?`
  String get quizzCreationConfigureTypeQuestion {
    return Intl.message(
      'What type of questions?',
      name: 'quizzCreationConfigureTypeQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Single choice`
  String get quizzCreationConfigureType1 {
    return Intl.message(
      'Single choice',
      name: 'quizzCreationConfigureType1',
      desc: '',
      args: [],
    );
  }

  /// `True/False`
  String get quizzCreationConfigureType2 {
    return Intl.message(
      'True/False',
      name: 'quizzCreationConfigureType2',
      desc: '',
      args: [],
    );
  }

  /// `Fill in the blank`
  String get quizzCreationConfigureType3 {
    return Intl.message(
      'Fill in the blank',
      name: 'quizzCreationConfigureType3',
      desc: '',
      args: [],
    );
  }

  /// `How many questions?`
  String get quizzCreationConfigureQuestionCount {
    return Intl.message(
      'How many questions?',
      name: 'quizzCreationConfigureQuestionCount',
      desc: '',
      args: [],
    );
  }

  /// `Low`
  String get quizzCreationConfigureQuestionCount1 {
    return Intl.message(
      'Low',
      name: 'quizzCreationConfigureQuestionCount1',
      desc: '',
      args: [],
    );
  }

  /// `Medium`
  String get quizzCreationConfigureQuestionCount2 {
    return Intl.message(
      'Medium',
      name: 'quizzCreationConfigureQuestionCount2',
      desc: '',
      args: [],
    );
  }

  /// `High`
  String get quizzCreationConfigureQuestionCount3 {
    return Intl.message(
      'High',
      name: 'quizzCreationConfigureQuestionCount3',
      desc: '',
      args: [],
    );
  }

  /// `Manual`
  String get quizzCreationConfigureQuestionCount4 {
    return Intl.message(
      'Manual',
      name: 'quizzCreationConfigureQuestionCount4',
      desc: '',
      args: [],
    );
  }

  /// `Pick question type and number of questions.`
  String get quizzCreationConfigurationError {
    return Intl.message(
      'Pick question type and number of questions.',
      name: 'quizzCreationConfigurationError',
      desc: '',
      args: [],
    );
  }

  /// `Add new question`
  String get addNewQuestionBottomSheetHeading {
    return Intl.message(
      'Add new question',
      name: 'addNewQuestionBottomSheetHeading',
      desc: '',
      args: [],
    );
  }

  /// `Manual`
  String get addNewQuestionBottomSheetManual {
    return Intl.message(
      'Manual',
      name: 'addNewQuestionBottomSheetManual',
      desc: '',
      args: [],
    );
  }

  /// `Generate question with AI`
  String get addNewQuestionBottomSheetAI {
    return Intl.message(
      'Generate question with AI',
      name: 'addNewQuestionBottomSheetAI',
      desc: '',
      args: [],
    );
  }

  /// `Question title and at least two answers are required.`
  String get quizzCreationAddQuestionError {
    return Intl.message(
      'Question title and at least two answers are required.',
      name: 'quizzCreationAddQuestionError',
      desc: '',
      args: [],
    );
  }

  /// `Quizz Preview`
  String get quizzCreationPreviewHeading {
    return Intl.message(
      'Quizz Preview',
      name: 'quizzCreationPreviewHeading',
      desc: '',
      args: [],
    );
  }

  /// `Add question`
  String get quizzCreationAddQuestionButton {
    return Intl.message(
      'Add question',
      name: 'quizzCreationAddQuestionButton',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Detail`
  String get quizzDetailsAppbarTitle {
    return Intl.message(
      'Quiz Detail',
      name: 'quizzDetailsAppbarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Questions`
  String get quizzDetailsTabQuestions {
    return Intl.message(
      'Questions',
      name: 'quizzDetailsTabQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get quizzDetailsTabSettings {
    return Intl.message(
      'Settings',
      name: 'quizzDetailsTabSettings',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get quizzDetailsTabStatistics {
    return Intl.message(
      'Statistics',
      name: 'quizzDetailsTabStatistics',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get quizzDetailsTabGeneral {
    return Intl.message(
      'General',
      name: 'quizzDetailsTabGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Manage your quiz questions here. You can edit and delete questions. This page is preview page for your questions.`
  String get quizzDetailsTabQuestionsSubheading {
    return Intl.message(
      'Manage your quiz questions here. You can edit and delete questions. This page is preview page for your questions.',
      name: 'quizzDetailsTabQuestionsSubheading',
      desc: '',
      args: [],
    );
  }

  /// `Answers`
  String get quizzDetailsTabQuestionsSwitch {
    return Intl.message(
      'Answers',
      name: 'quizzDetailsTabQuestionsSwitch',
      desc: '',
      args: [],
    );
  }

  /// `New question`
  String get quizzDetailsTabQuestionsAddNewQuestion {
    return Intl.message(
      'New question',
      name: 'quizzDetailsTabQuestionsAddNewQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get deleteQuestionDialogHeading {
    return Intl.message(
      'Are you sure?',
      name: 'deleteQuestionDialogHeading',
      desc: '',
      args: [],
    );
  }

  /// `This action cannot be undone. Once you delete the question there is no going back.`
  String get deleteQuestionDialogDescription {
    return Intl.message(
      'This action cannot be undone. Once you delete the question there is no going back.',
      name: 'deleteQuestionDialogDescription',
      desc: '',
      args: [],
    );
  }

  /// `Failed to delete question.`
  String get deleteQuestionFailure {
    return Intl.message(
      'Failed to delete question.',
      name: 'deleteQuestionFailure',
      desc: '',
      args: [],
    );
  }

  /// `Manage your quiz settings here.`
  String get quizzDetailsTabSettingsSubheading {
    return Intl.message(
      'Manage your quiz settings here.',
      name: 'quizzDetailsTabSettingsSubheading',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Status`
  String get quizzDetailsTabSettingsQuizStatus {
    return Intl.message(
      'Quiz Status',
      name: 'quizzDetailsTabSettingsQuizStatus',
      desc: '',
      args: [],
    );
  }

  /// `When switched on, quizz is active and available for solving. If not, no one can solve the quiz.`
  String get quizzDetailsTabSettingsQuizStatusDescription {
    return Intl.message(
      'When switched on, quizz is active and available for solving. If not, no one can solve the quiz.',
      name: 'quizzDetailsTabSettingsQuizStatusDescription',
      desc: '',
      args: [],
    );
  }

  /// `Availability`
  String get quizzDetailsTabSettingsQuizAvailability {
    return Intl.message(
      'Availability',
      name: 'quizzDetailsTabSettingsQuizAvailability',
      desc: '',
      args: [],
    );
  }

  /// `When switched on, quizz is available for everyone. If not, the quiz is private and only visible for you.`
  String get quizzDetailsTabSettingsQuizAvailabilityDescription {
    return Intl.message(
      'When switched on, quizz is available for everyone. If not, the quiz is private and only visible for you.',
      name: 'quizzDetailsTabSettingsQuizAvailabilityDescription',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get quizzDetailsTabSettingsQuizAvailabilityActive {
    return Intl.message(
      'Active',
      name: 'quizzDetailsTabSettingsQuizAvailabilityActive',
      desc: '',
      args: [],
    );
  }

  /// `Public`
  String get quizzDetailsTabSettingsQuizAvailabilityPublic {
    return Intl.message(
      'Public',
      name: 'quizzDetailsTabSettingsQuizAvailabilityPublic',
      desc: '',
      args: [],
    );
  }

  /// `Private`
  String get quizzDetailsTabSettingsQuizAvailabilityPrivate {
    return Intl.message(
      'Private',
      name: 'quizzDetailsTabSettingsQuizAvailabilityPrivate',
      desc: '',
      args: [],
    );
  }

  /// `Save changes`
  String get quizzDetailsTabSettingsSaveChanges {
    return Intl.message(
      'Save changes',
      name: 'quizzDetailsTabSettingsSaveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Succesfully updated quiz settings.`
  String get quizzDetailsTabSettingsSuccessfullSave {
    return Intl.message(
      'Succesfully updated quiz settings.',
      name: 'quizzDetailsTabSettingsSuccessfullSave',
      desc: '',
      args: [],
    );
  }

  /// `You can view your quiz statistics here.`
  String get quizzDetailsTabStatisticsSubheading {
    return Intl.message(
      'You can view your quiz statistics here.',
      name: 'quizzDetailsTabStatisticsSubheading',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get quizzDetailsTabStatisticsDetailsStatusBadge {
    return Intl.message(
      'Details',
      name: 'quizzDetailsTabStatisticsDetailsStatusBadge',
      desc: '',
      args: [],
    );
  }

  /// `Finished`
  String get quizzDetailsTabStatisticsFinishedStatusBadge {
    return Intl.message(
      'Finished',
      name: 'quizzDetailsTabStatisticsFinishedStatusBadge',
      desc: '',
      args: [],
    );
  }

  /// `Stopped`
  String get quizzDetailsTabStatisticsStoppedStatusBadge {
    return Intl.message(
      'Stopped',
      name: 'quizzDetailsTabStatisticsStoppedStatusBadge',
      desc: '',
      args: [],
    );
  }

  /// `Started`
  String get quizzDetailsTabStatisticsStartedStatusBadge {
    return Intl.message(
      'Started',
      name: 'quizzDetailsTabStatisticsStartedStatusBadge',
      desc: '',
      args: [],
    );
  }

  /// `No participants yet.`
  String get quizzDetailsTabStatisticsNoParticipants {
    return Intl.message(
      'No participants yet.',
      name: 'quizzDetailsTabStatisticsNoParticipants',
      desc: '',
      args: [],
    );
  }

  /// `Score`
  String get quizzDetailsTabStatisticsScore {
    return Intl.message(
      'Score',
      name: 'quizzDetailsTabStatisticsScore',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get quizzDetailsTabStatisticsName {
    return Intl.message(
      'Name',
      name: 'quizzDetailsTabStatisticsName',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get quizzDetailsTabStatisticsDate {
    return Intl.message(
      'Date',
      name: 'quizzDetailsTabStatisticsDate',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get quizzDetailsTabStatisticsTime {
    return Intl.message(
      'Duration',
      name: 'quizzDetailsTabStatisticsTime',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get quizzDetailsTabStatisticsEmail {
    return Intl.message(
      'E-mail',
      name: 'quizzDetailsTabStatisticsEmail',
      desc: '',
      args: [],
    );
  }

  /// `{seconds} seconds`
  String quizzDetailsTabStatisticsSecondsElapsed(int seconds) {
    return Intl.message(
      '$seconds seconds',
      name: 'quizzDetailsTabStatisticsSecondsElapsed',
      desc: 'Time elapsed in seconds',
      args: [seconds],
    );
  }

  /// `Manage your quiz page settings here.`
  String get quizzDetailsTabGeneralSubheading {
    return Intl.message(
      'Manage your quiz page settings here.',
      name: 'quizzDetailsTabGeneralSubheading',
      desc: '',
      args: [],
    );
  }

  /// `Quiz page settings`
  String get quizzDetailsTabGeneralPageSettingsHeading {
    return Intl.message(
      'Quiz page settings',
      name: 'quizzDetailsTabGeneralPageSettingsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Quiz title`
  String get quizzDetailsTabGeneralQuizTitle {
    return Intl.message(
      'Quiz title',
      name: 'quizzDetailsTabGeneralQuizTitle',
      desc: '',
      args: [],
    );
  }

  /// `This is you public quiz title. It will be displayed on your quiz page. You can change it anytime.`
  String get quizzDetailsTabGeneralQuizTitleTextFieldDescription {
    return Intl.message(
      'This is you public quiz title. It will be displayed on your quiz page. You can change it anytime.',
      name: 'quizzDetailsTabGeneralQuizTitleTextFieldDescription',
      desc: '',
      args: [],
    );
  }

  /// `Enter quiz title`
  String get quizzDetailsTabGeneralQuizTitleHint {
    return Intl.message(
      'Enter quiz title',
      name: 'quizzDetailsTabGeneralQuizTitleHint',
      desc: '',
      args: [],
    );
  }

  /// `Quiz description`
  String get quizzDetailsTabGeneralQuizDescription {
    return Intl.message(
      'Quiz description',
      name: 'quizzDetailsTabGeneralQuizDescription',
      desc: '',
      args: [],
    );
  }

  /// `This is your public quiz description. It will be displayed on your quiz page. You can change it anytime.`
  String get quizzDetailsTabGeneralQuizDescriptionTextFieldDescription {
    return Intl.message(
      'This is your public quiz description. It will be displayed on your quiz page. You can change it anytime.',
      name: 'quizzDetailsTabGeneralQuizDescriptionTextFieldDescription',
      desc: '',
      args: [],
    );
  }

  /// `Enter quiz title`
  String get quizzDetailsTabGeneralQuizDescriptionHint {
    return Intl.message(
      'Enter quiz title',
      name: 'quizzDetailsTabGeneralQuizDescriptionHint',
      desc: '',
      args: [],
    );
  }

  /// `Succesfully updated quiz details.`
  String get quizzDetailsTabGeneralSuccessfullSave {
    return Intl.message(
      'Succesfully updated quiz details.',
      name: 'quizzDetailsTabGeneralSuccessfullSave',
      desc: '',
      args: [],
    );
  }

  /// `Successfully added a new question.`
  String get quizzDetailsAddNewQuestionSuccess {
    return Intl.message(
      'Successfully added a new question.',
      name: 'quizzDetailsAddNewQuestionSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add a new question.`
  String get quizzDetailsAddNewQuestionFailure {
    return Intl.message(
      'Failed to add a new question.',
      name: 'quizzDetailsAddNewQuestionFailure',
      desc: '',
      args: [],
    );
  }

  /// `Successfully updated the question.`
  String get quizzDetailsUpdateQuestionSuccess {
    return Intl.message(
      'Successfully updated the question.',
      name: 'quizzDetailsUpdateQuestionSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Successfully deleted the question.`
  String get quizzDetailsDeleteQuestionSuccess {
    return Intl.message(
      'Successfully deleted the question.',
      name: 'quizzDetailsDeleteQuestionSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get quizzCreationQuitHeading {
    return Intl.message(
      'Are you sure?',
      name: 'quizzCreationQuitHeading',
      desc: '',
      args: [],
    );
  }

  /// `You are about to quit the quiz creation process. Any progress made so far will be lost. This action cannot be undone.`
  String get quizzCreationQuitSubheading {
    return Intl.message(
      'You are about to quit the quiz creation process. Any progress made so far will be lost. This action cannot be undone.',
      name: 'quizzCreationQuitSubheading',
      desc: '',
      args: [],
    );
  }

  /// `Yes, quit`
  String get quizzQuitButton {
    return Intl.message(
      'Yes, quit',
      name: 'quizzQuitButton',
      desc: '',
      args: [],
    );
  }

  /// `New question`
  String get quizzCreationAddQuestionHeading {
    return Intl.message(
      'New question',
      name: 'quizzCreationAddQuestionHeading',
      desc: '',
      args: [],
    );
  }

  /// `Question Title`
  String get quizzCreationAddQuestionTitleLabel {
    return Intl.message(
      'Question Title',
      name: 'quizzCreationAddQuestionTitleLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter question title`
  String get quizzCreationAddQuestionTitleHint {
    return Intl.message(
      'Enter question title',
      name: 'quizzCreationAddQuestionTitleHint',
      desc: '',
      args: [],
    );
  }

  /// `Question Description`
  String get quizzCreationAddQuestionDescriptionLabel {
    return Intl.message(
      'Question Description',
      name: 'quizzCreationAddQuestionDescriptionLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter question description`
  String get quizzCreationAddQuestionDescriptionHint {
    return Intl.message(
      'Enter question description',
      name: 'quizzCreationAddQuestionDescriptionHint',
      desc: '',
      args: [],
    );
  }

  /// `Answers`
  String get quizzCreationAddQuestionAnswersLabel {
    return Intl.message(
      'Answers',
      name: 'quizzCreationAddQuestionAnswersLabel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get quizzCreationSaveQuestion {
    return Intl.message(
      'Save',
      name: 'quizzCreationSaveQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Your answer`
  String get quizzCreationAddQuestionAnswerPlaceholder {
    return Intl.message(
      'Your answer',
      name: 'quizzCreationAddQuestionAnswerPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Generate new question`
  String get quizzCreationGenerateQuestionHeading {
    return Intl.message(
      'Generate new question',
      name: 'quizzCreationGenerateQuestionHeading',
      desc: '',
      args: [],
    );
  }

  /// `Prompt`
  String get quizzCreationGenerateQuestionPromptLabel {
    return Intl.message(
      'Prompt',
      name: 'quizzCreationGenerateQuestionPromptLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter prompt for AI to generate question`
  String get quizzCreationGenerateQuestionPromptHint {
    return Intl.message(
      'Enter prompt for AI to generate question',
      name: 'quizzCreationGenerateQuestionPromptHint',
      desc: '',
      args: [],
    );
  }

  /// `Generate`
  String get quizzCreationGenerateQuestionGenerateButton {
    return Intl.message(
      'Generate',
      name: 'quizzCreationGenerateQuestionGenerateButton',
      desc: '',
      args: [],
    );
  }

  /// `Success!`
  String get quizzCreationSuccessHeading {
    return Intl.message(
      'Success!',
      name: 'quizzCreationSuccessHeading',
      desc: '',
      args: [],
    );
  }

  /// `You succesfully created your quizz. You can now share it with others.`
  String get quizzCreationSuccessSubheading {
    return Intl.message(
      'You succesfully created your quizz. You can now share it with others.',
      name: 'quizzCreationSuccessSubheading',
      desc: '',
      args: [],
    );
  }

  /// `Share with others!`
  String get quizzCreationSuccessShareButton {
    return Intl.message(
      'Share with others!',
      name: 'quizzCreationSuccessShareButton',
      desc: '',
      args: [],
    );
  }

  /// `Back to dashboard`
  String get quizzCreationSuccessBackButton {
    return Intl.message(
      'Back to dashboard',
      name: 'quizzCreationSuccessBackButton',
      desc: '',
      args: [],
    );
  }

  /// `Share quizz`
  String get quizzShareHeading {
    return Intl.message(
      'Share quizz',
      name: 'quizzShareHeading',
      desc: '',
      args: [],
    );
  }

  /// `Share this quizz with your friends`
  String get quizzShareMessage {
    return Intl.message(
      'Share this quizz with your friends',
      name: 'quizzShareMessage',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get quizzShareButton {
    return Intl.message(
      'Share',
      name: 'quizzShareButton',
      desc: '',
      args: [],
    );
  }

  /// `Quizzes`
  String get dashboardTopHeading {
    return Intl.message(
      'Quizzes',
      name: 'dashboardTopHeading',
      desc: '',
      args: [],
    );
  }

  /// `Here, you can effortlessly list, delete, edit and create new exams.`
  String get dashboardSubheading {
    return Intl.message(
      'Here, you can effortlessly list, delete, edit and create new exams.',
      name: 'dashboardSubheading',
      desc: '',
      args: [],
    );
  }

  /// `Total {questionNumber} questions`
  String quizQuestionNumberBadge(int questionNumber) {
    return Intl.message(
      'Total $questionNumber questions',
      name: 'quizQuestionNumberBadge',
      desc: 'Badge displaying total number of questions',
      args: [questionNumber],
    );
  }

  /// `Add new quizz`
  String get addNewQuizzButton {
    return Intl.message(
      'Add new quizz',
      name: 'addNewQuizzButton',
      desc: '',
      args: [],
    );
  }

  /// `You do not have any quizzes yet. Create one now!`
  String get dashboardQuizzesEmpty {
    return Intl.message(
      'You do not have any quizzes yet. Create one now!',
      name: 'dashboardQuizzesEmpty',
      desc: '',
      args: [],
    );
  }

  /// `You are logged in as as a guest user. Register to access all the app features.`
  String get dashboardGuestUserMessage {
    return Intl.message(
      'You are logged in as as a guest user. Register to access all the app features.',
      name: 'dashboardGuestUserMessage',
      desc: '',
      args: [],
    );
  }

  /// `Join`
  String get dashboardJoinQuizzButton {
    return Intl.message(
      'Join',
      name: 'dashboardJoinQuizzButton',
      desc: '',
      args: [],
    );
  }

  /// `Take quizz`
  String get quizzTakeAppBarTitle {
    return Intl.message(
      'Take quizz',
      name: 'quizzTakeAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Quit quizz?`
  String get quizzTakeQuitHeading {
    return Intl.message(
      'Quit quizz?',
      name: 'quizzTakeQuitHeading',
      desc: '',
      args: [],
    );
  }

  /// `If you leave now, your progress will be lost. You'll need access the quizz again from the link to retake it. Are you sure you want to quit?`
  String get quizzTakeQuitSubheading {
    return Intl.message(
      'If you leave now, your progress will be lost. You\'ll need access the quizz again from the link to retake it. Are you sure you want to quit?',
      name: 'quizzTakeQuitSubheading',
      desc: '',
      args: [],
    );
  }

  /// `Quizz`
  String get quizzTakeHeading {
    return Intl.message(
      'Quizz',
      name: 'quizzTakeHeading',
      desc: '',
      args: [],
    );
  }

  /// `Engage with our quizz designed to evaluate your understanding and knowledge on various topics.`
  String get quizzTakeSubheading {
    return Intl.message(
      'Engage with our quizz designed to evaluate your understanding and knowledge on various topics.',
      name: 'quizzTakeSubheading',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get quizzTakeFormFieldLabel {
    return Intl.message(
      'Name',
      name: 'quizzTakeFormFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Your name`
  String get quizzTakeFormFieldHint {
    return Intl.message(
      'Your name',
      name: 'quizzTakeFormFieldHint',
      desc: '',
      args: [],
    );
  }

  /// `Finish quizz`
  String get quizzTakeFinishHeading {
    return Intl.message(
      'Finish quizz',
      name: 'quizzTakeFinishHeading',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure that all questions have been answered? Once you submit, you won't be able to make any changes.`
  String get quizzTakeFinishDescription {
    return Intl.message(
      'Are you sure that all questions have been answered? Once you submit, you won\'t be able to make any changes.',
      name: 'quizzTakeFinishDescription',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get quizzTakeFinishButton {
    return Intl.message(
      'Finish',
      name: 'quizzTakeFinishButton',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get quizzTakeSummaryHeading {
    return Intl.message(
      'Summary',
      name: 'quizzTakeSummaryHeading',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations on finishing the quiz! Your responses have been recorded. Review your results below, and see how you did. Thank you for participating!`
  String get quizzTakeSummaryDescription {
    return Intl.message(
      'Congratulations on finishing the quiz! Your responses have been recorded. Review your results below, and see how you did. Thank you for participating!',
      name: 'quizzTakeSummaryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Your score is...`
  String get quizzTakeSummaryYourScore {
    return Intl.message(
      'Your score is...',
      name: 'quizzTakeSummaryYourScore',
      desc: '',
      args: [],
    );
  }

  /// `Your result is`
  String get quizzTakeSummaryYourResult {
    return Intl.message(
      'Your result is',
      name: 'quizzTakeSummaryYourResult',
      desc: '',
      args: [],
    );
  }

  /// `You are a genius!`
  String get quizzTakeScoreURGenius {
    return Intl.message(
      'You are a genius!',
      name: 'quizzTakeScoreURGenius',
      desc: '',
      args: [],
    );
  }

  /// `Awesome!`
  String get quizzTakeScoreAwesome {
    return Intl.message(
      'Awesome!',
      name: 'quizzTakeScoreAwesome',
      desc: '',
      args: [],
    );
  }

  /// `Good!`
  String get quizzTakeScoreGood {
    return Intl.message(
      'Good!',
      name: 'quizzTakeScoreGood',
      desc: '',
      args: [],
    );
  }

  /// `Could be better!`
  String get quizzTakeScoreCouldBeBetter {
    return Intl.message(
      'Could be better!',
      name: 'quizzTakeScoreCouldBeBetter',
      desc: '',
      args: [],
    );
  }

  /// `This is not your day...`
  String get quizzTakeScoreBad {
    return Intl.message(
      'This is not your day...',
      name: 'quizzTakeScoreBad',
      desc: '',
      args: [],
    );
  }

  /// `See results`
  String get quizzTakeSummarySeeResults {
    return Intl.message(
      'See results',
      name: 'quizzTakeSummarySeeResults',
      desc: '',
      args: [],
    );
  }

  /// `Back to dashboard`
  String get quizzTakeSummaryBackToDashboard {
    return Intl.message(
      'Back to dashboard',
      name: 'quizzTakeSummaryBackToDashboard',
      desc: '',
      args: [],
    );
  }

  /// `There was an error with loading the Quizz. There is a chance that code You provided is invalid. Please try again.`
  String get quizzTakeLoadingError {
    return Intl.message(
      'There was an error with loading the Quizz. There is a chance that code You provided is invalid. Please try again.',
      name: 'quizzTakeLoadingError',
      desc: '',
      args: [],
    );
  }

  /// `Start Quizz`
  String get quizzTakeStartButton {
    return Intl.message(
      'Start Quizz',
      name: 'quizzTakeStartButton',
      desc: '',
      args: [],
    );
  }

  /// `Select an answer!`
  String get quizzTakeSelectAnswer {
    return Intl.message(
      'Select an answer!',
      name: 'quizzTakeSelectAnswer',
      desc: '',
      args: [],
    );
  }

  /// `Join Quizz`
  String get joinByCodeAppBarTitle {
    return Intl.message(
      'Join Quizz',
      name: 'joinByCodeAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter code`
  String get joinByCodeHeading {
    return Intl.message(
      'Enter code',
      name: 'joinByCodeHeading',
      desc: '',
      args: [],
    );
  }

  /// `Here, you can enter the code for the specific quizz.`
  String get joinByCodeSubheading {
    return Intl.message(
      'Here, you can enter the code for the specific quizz.',
      name: 'joinByCodeSubheading',
      desc: '',
      args: [],
    );
  }

  /// `Quizz Code`
  String get joinByCodeFormFieldLabel {
    return Intl.message(
      'Quizz Code',
      name: 'joinByCodeFormFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter 8-character code`
  String get joinByCodeFormFieldHint {
    return Intl.message(
      'Enter 8-character code',
      name: 'joinByCodeFormFieldHint',
      desc: '',
      args: [],
    );
  }

  /// `Access`
  String get joinByCodeAccessButton {
    return Intl.message(
      'Access',
      name: 'joinByCodeAccessButton',
      desc: '',
      args: [],
    );
  }

  /// `Invalid code. Please check if the code is correct and try again.`
  String get joinByCodeInvalidCode {
    return Intl.message(
      'Invalid code. Please check if the code is correct and try again.',
      name: 'joinByCodeInvalidCode',
      desc: '',
      args: [],
    );
  }

  /// `Quizz not found. Please check if the code is correct and try again.`
  String get joinByCodeQuizzNotFound {
    return Intl.message(
      'Quizz not found. Please check if the code is correct and try again.',
      name: 'joinByCodeQuizzNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get deleteQuizzHeading {
    return Intl.message(
      'Are you sure?',
      name: 'deleteQuizzHeading',
      desc: '',
      args: [],
    );
  }

  /// `This action cannot be undone. Once you delete the quiz there is no going back.`
  String get deleteQuizzDescription {
    return Intl.message(
      'This action cannot be undone. Once you delete the quiz there is no going back.',
      name: 'deleteQuizzDescription',
      desc: '',
      args: [],
    );
  }

  /// `Deleting account`
  String get deleteAccountHeading {
    return Intl.message(
      'Deleting account',
      name: 'deleteAccountHeading',
      desc: '',
      args: [],
    );
  }

  /// `You are about to delete your account. This action cannot be undone.`
  String get deleteAccountDescription {
    return Intl.message(
      'You are about to delete your account. This action cannot be undone.',
      name: 'deleteAccountDescription',
      desc: '',
      args: [],
    );
  }

  /// `Save changes`
  String get quizzDetailsSaveChangesButton {
    return Intl.message(
      'Save changes',
      name: 'quizzDetailsSaveChangesButton',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancelButton {
    return Intl.message(
      'Cancel',
      name: 'cancelButton',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get deleteButton {
    return Intl.message(
      'Delete',
      name: 'deleteButton',
      desc: '',
      args: [],
    );
  }

  /// `Save Quizz`
  String get saveQuizzButton {
    return Intl.message(
      'Save Quizz',
      name: 'saveQuizzButton',
      desc: '',
      args: [],
    );
  }

  /// `Link copied to clipboard`
  String get linkCopied {
    return Intl.message(
      'Link copied to clipboard',
      name: 'linkCopied',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profileAppbarTitle {
    return Intl.message(
      'Profile',
      name: 'profileAppbarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Manage your profile settings.`
  String get profileSubheading {
    return Intl.message(
      'Manage your profile settings.',
      name: 'profileSubheading',
      desc: '',
      args: [],
    );
  }

  /// `This is your public display name.`
  String get profileNameDescription {
    return Intl.message(
      'This is your public display name.',
      name: 'profileNameDescription',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get profileNameHint {
    return Intl.message(
      'Enter your name',
      name: 'profileNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get profileNameLabel {
    return Intl.message(
      'Name',
      name: 'profileNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get profileEmailLabel {
    return Intl.message(
      'E-mail',
      name: 'profileEmailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get profileUpdateButton {
    return Intl.message(
      'Update',
      name: 'profileUpdateButton',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get profileDeleteButton {
    return Intl.message(
      'Delete account',
      name: 'profileDeleteButton',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get profileDeleteDialogHeading {
    return Intl.message(
      'Are you sure?',
      name: 'profileDeleteDialogHeading',
      desc: '',
      args: [],
    );
  }

  /// `You are about to delete your account. This action cannot be undone.`
  String get profileDeleteDialogDescription {
    return Intl.message(
      'You are about to delete your account. This action cannot be undone.',
      name: 'profileDeleteDialogDescription',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get fileReadException {
    return Intl.message(
      'Something went wrong',
      name: 'fileReadException',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Go back to dashboard`
  String get goBackToDashboard {
    return Intl.message(
      'Go back to dashboard',
      name: 'goBackToDashboard',
      desc: '',
      args: [],
    );
  }

  /// `Session expired, please log in again.`
  String get sessionExpired {
    return Intl.message(
      'Session expired, please log in again.',
      name: 'sessionExpired',
      desc: '',
      args: [],
    );
  }

  /// `Updating...`
  String get profileUpdatingUsername {
    return Intl.message(
      'Updating...',
      name: 'profileUpdatingUsername',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get profileSignOutButton {
    return Intl.message(
      'Sign out',
      name: 'profileSignOutButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign out from your account`
  String get profileSignOutDescription {
    return Intl.message(
      'Sign out from your account',
      name: 'profileSignOutDescription',
      desc: '',
      args: [],
    );
  }

  /// `Profile actions`
  String get profileActionsHeading {
    return Intl.message(
      'Profile actions',
      name: 'profileActionsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Quizzes`
  String get profileArchiveHeading {
    return Intl.message(
      'Quizzes',
      name: 'profileArchiveHeading',
      desc: '',
      args: [],
    );
  }

  /// `Archive`
  String get profileArchiveButton {
    return Intl.message(
      'Archive',
      name: 'profileArchiveButton',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknownUsername {
    return Intl.message(
      'Unknown',
      name: 'unknownUsername',
      desc: '',
      args: [],
    );
  }

  /// `Profile updated successfully.`
  String get successfulProfileUpdate {
    return Intl.message(
      'Profile updated successfully.',
      name: 'successfulProfileUpdate',
      desc: '',
      args: [],
    );
  }

  /// `Archive`
  String get archiveAppBarTitle {
    return Intl.message(
      'Archive',
      name: 'archiveAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `There was an error with loading the archive. Please try again.`
  String get archiveLoadingError {
    return Intl.message(
      'There was an error with loading the archive. Please try again.',
      name: 'archiveLoadingError',
      desc: '',
      args: [],
    );
  }

  /// `You do not have any archived quizzes yet.`
  String get archiveEmpty {
    return Intl.message(
      'You do not have any archived quizzes yet.',
      name: 'archiveEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Quizz Result Details`
  String get archiveResultsAppBarTitle {
    return Intl.message(
      'Quizz Result Details',
      name: 'archiveResultsAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Result:`
  String get archiveResultsHeading {
    return Intl.message(
      'Result:',
      name: 'archiveResultsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Understanding Cryptocurrencies and Their Impact on Finance`
  String get tempQuizzSummaryTitle {
    return Intl.message(
      'Understanding Cryptocurrencies and Their Impact on Finance',
      name: 'tempQuizzSummaryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Explore how cryptocurrencies like Bitcoin and Ethereum are transforming the financial landscape through decentralization, blockchain technology, and the potential for high returns, while also addressing risks and regulatory challenges.`
  String get tempQuizzSummaryDescription {
    return Intl.message(
      'Explore how cryptocurrencies like Bitcoin and Ethereum are transforming the financial landscape through decentralization, blockchain technology, and the potential for high returns, while also addressing risks and regulatory challenges.',
      name: 'tempQuizzSummaryDescription',
      desc: '',
      args: [],
    );
  }

  /// `What is one of the key features of cryptocurrencies?`
  String get tempQuestion {
    return Intl.message(
      'What is one of the key features of cryptocurrencies?',
      name: 'tempQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Question description`
  String get tempQuestionDescription {
    return Intl.message(
      'Question description',
      name: 'tempQuestionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Decentralization`
  String get tempAnswer1 {
    return Intl.message(
      'Decentralization',
      name: 'tempAnswer1',
      desc: '',
      args: [],
    );
  }

  /// `Physical existence`
  String get tempAnswer2 {
    return Intl.message(
      'Physical existence',
      name: 'tempAnswer2',
      desc: '',
      args: [],
    );
  }

  /// `Centralized control`
  String get tempAnswer3 {
    return Intl.message(
      'Centralized control',
      name: 'tempAnswer3',
      desc: '',
      args: [],
    );
  }

  /// `Government regulation`
  String get tempAnswer4 {
    return Intl.message(
      'Government regulation',
      name: 'tempAnswer4',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueButton {
    return Intl.message(
      'Continue',
      name: 'continueButton',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get dividerOr {
    return Intl.message(
      'OR',
      name: 'dividerOr',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Polish`
  String get languagePolish {
    return Intl.message(
      'Polish',
      name: 'languagePolish',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get languageEnglish {
    return Intl.message(
      'English',
      name: 'languageEnglish',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refreshButton {
    return Intl.message(
      'Refresh',
      name: 'refreshButton',
      desc: '',
      args: [],
    );
  }

  /// `Select language`
  String get quizLanguageSelectionHeading {
    return Intl.message(
      'Select language',
      name: 'quizLanguageSelectionHeading',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get quizLanguageEnglish {
    return Intl.message(
      'English',
      name: 'quizLanguageEnglish',
      desc: '',
      args: [],
    );
  }

  /// `Polish`
  String get quizLanguagePolish {
    return Intl.message(
      'Polish',
      name: 'quizLanguagePolish',
      desc: '',
      args: [],
    );
  }

  /// `Spanish`
  String get quizLanguageSpanish {
    return Intl.message(
      'Spanish',
      name: 'quizLanguageSpanish',
      desc: '',
      args: [],
    );
  }

  /// `German`
  String get quizLanguageGerman {
    return Intl.message(
      'German',
      name: 'quizLanguageGerman',
      desc: '',
      args: [],
    );
  }

  /// `French`
  String get quizLanguageFrench {
    return Intl.message(
      'French',
      name: 'quizLanguageFrench',
      desc: '',
      args: [],
    );
  }

  /// `Italian`
  String get quizLanguageItalian {
    return Intl.message(
      'Italian',
      name: 'quizLanguageItalian',
      desc: '',
      args: [],
    );
  }

  /// `Guest login`
  String get guestUserPageAppbar {
    return Intl.message(
      'Guest login',
      name: 'guestUserPageAppbar',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to the quiz!`
  String get guestUserPageHeading {
    return Intl.message(
      'Welcome to the quiz!',
      name: 'guestUserPageHeading',
      desc: '',
      args: [],
    );
  }

  /// `Provider your username to join the quiz.`
  String get guestUserPageUsernameDescriptoin {
    return Intl.message(
      'Provider your username to join the quiz.',
      name: 'guestUserPageUsernameDescriptoin',
      desc: '',
      args: [],
    );
  }

  /// `Enter your username`
  String get guestUserPageUsernameHint {
    return Intl.message(
      'Enter your username',
      name: 'guestUserPageUsernameHint',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get guestUserPageUsernameLabel {
    return Intl.message(
      'Username',
      name: 'guestUserPageUsernameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Failed to join the quiz.`
  String get guestUserPageQuizJoinFailure {
    return Intl.message(
      'Failed to join the quiz.',
      name: 'guestUserPageQuizJoinFailure',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
