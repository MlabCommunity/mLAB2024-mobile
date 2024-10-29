// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(questionNumber) => "Total ${questionNumber} questions";

  static String m1(seconds) => "${seconds} seconds";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addNewQuestionBottomSheetAI":
            MessageLookupByLibrary.simpleMessage("Generate question with AI"),
        "addNewQuestionBottomSheetHeading":
            MessageLookupByLibrary.simpleMessage("Add new question"),
        "addNewQuestionBottomSheetManual":
            MessageLookupByLibrary.simpleMessage("Manual"),
        "addNewQuizzButton":
            MessageLookupByLibrary.simpleMessage("Add new quizz"),
        "archiveAppBarTitle": MessageLookupByLibrary.simpleMessage("Archive"),
        "archiveEmpty": MessageLookupByLibrary.simpleMessage(
            "You do not have any archived quizzes yet."),
        "archiveLoadingError": MessageLookupByLibrary.simpleMessage(
            "There was an error with loading the archive. Please try again."),
        "archiveResultsAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Quizz Result Details"),
        "archiveResultsHeading":
            MessageLookupByLibrary.simpleMessage("Result:"),
        "cancelButton": MessageLookupByLibrary.simpleMessage("Cancel"),
        "continueButton": MessageLookupByLibrary.simpleMessage("Continue"),
        "dashboardGuestUserMessage": MessageLookupByLibrary.simpleMessage(
            "You are logged in as as a guest user. Register to access all the app features."),
        "dashboardJoinQuizzButton":
            MessageLookupByLibrary.simpleMessage("Join"),
        "dashboardQuizzesEmpty": MessageLookupByLibrary.simpleMessage(
            "You do not have any quizzes yet. Create one now!"),
        "dashboardSubheading": MessageLookupByLibrary.simpleMessage(
            "Here, you can effortlessly list, delete, edit and create new exams."),
        "dashboardTopHeading": MessageLookupByLibrary.simpleMessage("Quizzes"),
        "deleteAccountDescription": MessageLookupByLibrary.simpleMessage(
            "You are about to delete your account. This action cannot be undone."),
        "deleteAccountHeading":
            MessageLookupByLibrary.simpleMessage("Deleting account"),
        "deleteButton": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteQuestionDialogDescription": MessageLookupByLibrary.simpleMessage(
            "This action cannot be undone. Once you delete the question there is no going back."),
        "deleteQuestionDialogHeading":
            MessageLookupByLibrary.simpleMessage("Are you sure?"),
        "deleteQuestionFailure":
            MessageLookupByLibrary.simpleMessage("Failed to delete question."),
        "deleteQuizzDescription": MessageLookupByLibrary.simpleMessage(
            "This action cannot be undone. Once you delete the quiz there is no going back."),
        "deleteQuizzHeading":
            MessageLookupByLibrary.simpleMessage("Are you sure?"),
        "dividerOr": MessageLookupByLibrary.simpleMessage("OR"),
        "emailHint": MessageLookupByLibrary.simpleMessage("Your e-mail"),
        "emailLabel": MessageLookupByLibrary.simpleMessage("E-mail"),
        "fileReadException":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "forgotPasswordAppbarTitle":
            MessageLookupByLibrary.simpleMessage("Password reset"),
        "forgotPasswordButton":
            MessageLookupByLibrary.simpleMessage("Send e-mail"),
        "forgotPasswordHeading":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "forgotPasswordInputHint":
            MessageLookupByLibrary.simpleMessage("Your e-mail"),
        "forgotPasswordInputLabel":
            MessageLookupByLibrary.simpleMessage("E-mail"),
        "forgotPasswordSubheading": MessageLookupByLibrary.simpleMessage(
            "Do not worry! It happens. Enter the email address associated with your account."),
        "goBackToDashboard":
            MessageLookupByLibrary.simpleMessage("Go back to dashboard"),
        "guestUserPageAppbar":
            MessageLookupByLibrary.simpleMessage("Guest login"),
        "guestUserPageHeading":
            MessageLookupByLibrary.simpleMessage("Welcome to the quiz!"),
        "guestUserPageQuizJoinFailure":
            MessageLookupByLibrary.simpleMessage("Failed to join the quiz."),
        "guestUserPageUsernameDescriptoin":
            MessageLookupByLibrary.simpleMessage(
                "Provider your username to join the quiz."),
        "guestUserPageUsernameHint":
            MessageLookupByLibrary.simpleMessage("Enter your username"),
        "guestUserPageUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Username"),
        "invalidEmail":
            MessageLookupByLibrary.simpleMessage("Invalid e-mail address."),
        "invalidEmailOrPassword":
            MessageLookupByLibrary.simpleMessage("Invalid e-mail or password."),
        "joinByCodeAccessButton":
            MessageLookupByLibrary.simpleMessage("Access"),
        "joinByCodeAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Join Quizz"),
        "joinByCodeFormFieldHint":
            MessageLookupByLibrary.simpleMessage("Enter 8-character code"),
        "joinByCodeFormFieldLabel":
            MessageLookupByLibrary.simpleMessage("Quizz Code"),
        "joinByCodeHeading": MessageLookupByLibrary.simpleMessage("Enter code"),
        "joinByCodeInvalidCode": MessageLookupByLibrary.simpleMessage(
            "Invalid code. Please check if the code is correct and try again."),
        "joinByCodeQuizzNotFound": MessageLookupByLibrary.simpleMessage(
            "Quizz not found. Please check if the code is correct and try again."),
        "joinByCodeSubheading": MessageLookupByLibrary.simpleMessage(
            "Here, you can enter the code for the specific quizz."),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "languageEnglish": MessageLookupByLibrary.simpleMessage("English"),
        "languagePolish": MessageLookupByLibrary.simpleMessage("Polish"),
        "linkCopied":
            MessageLookupByLibrary.simpleMessage("Link copied to clipboard"),
        "loginButton": MessageLookupByLibrary.simpleMessage("Log In"),
        "newPasswordAppbarTitle":
            MessageLookupByLibrary.simpleMessage("Password reset"),
        "newPasswordButton":
            MessageLookupByLibrary.simpleMessage("Save and login"),
        "newPasswordHeading":
            MessageLookupByLibrary.simpleMessage("New password"),
        "newPasswordInputHint":
            MessageLookupByLibrary.simpleMessage("Your password"),
        "newPasswordInputLabel":
            MessageLookupByLibrary.simpleMessage("New password"),
        "newPasswordSubheading": MessageLookupByLibrary.simpleMessage(
            "This new password must be unique to those previously used."),
        "passwordHint": MessageLookupByLibrary.simpleMessage("Your password"),
        "passwordLabel": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordRequiresDigit": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one digit."),
        "passwordRequiresLowercase": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one lowercase letter."),
        "passwordRequiresSpecialChar": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one special character."),
        "passwordRequiresUppercase": MessageLookupByLibrary.simpleMessage(
            "Password must contain at least one uppercase letter."),
        "passwordTooShort": MessageLookupByLibrary.simpleMessage(
            "Password must be at least 6 characters long."),
        "profileActionsHeading":
            MessageLookupByLibrary.simpleMessage("Profile actions"),
        "profileAppbarTitle": MessageLookupByLibrary.simpleMessage("Profile"),
        "profileArchiveButton": MessageLookupByLibrary.simpleMessage("Archive"),
        "profileArchiveHeading":
            MessageLookupByLibrary.simpleMessage("Quizzes"),
        "profileDeleteButton":
            MessageLookupByLibrary.simpleMessage("Delete account"),
        "profileDeleteDialogDescription": MessageLookupByLibrary.simpleMessage(
            "You are about to delete your account. This action cannot be undone."),
        "profileDeleteDialogHeading":
            MessageLookupByLibrary.simpleMessage("Are you sure?"),
        "profileEmailLabel": MessageLookupByLibrary.simpleMessage("E-mail"),
        "profileNameDescription": MessageLookupByLibrary.simpleMessage(
            "This is your public display name."),
        "profileNameHint":
            MessageLookupByLibrary.simpleMessage("Enter your name"),
        "profileNameLabel": MessageLookupByLibrary.simpleMessage("Name"),
        "profileSignOutButton":
            MessageLookupByLibrary.simpleMessage("Sign out"),
        "profileSignOutDescription":
            MessageLookupByLibrary.simpleMessage("Sign out from your account"),
        "profileSubheading": MessageLookupByLibrary.simpleMessage(
            "Manage your profile settings."),
        "profileUpdateButton": MessageLookupByLibrary.simpleMessage("Update"),
        "profileUpdatingUsername":
            MessageLookupByLibrary.simpleMessage("Updating..."),
        "quizLanguageEnglish": MessageLookupByLibrary.simpleMessage("English"),
        "quizLanguageFrench": MessageLookupByLibrary.simpleMessage("French"),
        "quizLanguageGerman": MessageLookupByLibrary.simpleMessage("German"),
        "quizLanguageItalian": MessageLookupByLibrary.simpleMessage("Italian"),
        "quizLanguagePolish": MessageLookupByLibrary.simpleMessage("Polish"),
        "quizLanguageSelectionHeading":
            MessageLookupByLibrary.simpleMessage("Select language"),
        "quizLanguageSpanish": MessageLookupByLibrary.simpleMessage("Spanish"),
        "quizQuestionNumberBadge": m0,
        "quizzCraetionConfigureSubheading":
            MessageLookupByLibrary.simpleMessage(
                "Here, you can create quizz based on your prompt."),
        "quizzCreationAddQuestionAnswerPlaceholder":
            MessageLookupByLibrary.simpleMessage("Your answer"),
        "quizzCreationAddQuestionAnswersLabel":
            MessageLookupByLibrary.simpleMessage("Answers"),
        "quizzCreationAddQuestionButton":
            MessageLookupByLibrary.simpleMessage("Add question"),
        "quizzCreationAddQuestionDescriptionHint":
            MessageLookupByLibrary.simpleMessage("Enter question description"),
        "quizzCreationAddQuestionDescriptionLabel":
            MessageLookupByLibrary.simpleMessage("Question Description"),
        "quizzCreationAddQuestionError": MessageLookupByLibrary.simpleMessage(
            "Question title and at least two answers are required."),
        "quizzCreationAddQuestionHeading":
            MessageLookupByLibrary.simpleMessage("New question"),
        "quizzCreationAddQuestionTitleHint":
            MessageLookupByLibrary.simpleMessage("Enter question title"),
        "quizzCreationAddQuestionTitleLabel":
            MessageLookupByLibrary.simpleMessage("Question Title"),
        "quizzCreationAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Create quizz"),
        "quizzCreationAttachFileAllowedTypes":
            MessageLookupByLibrary.simpleMessage(
                "Types supported: .txt, .pdf, .docx, .xlsx, .pptx"),
        "quizzCreationAttachFileMaxSize":
            MessageLookupByLibrary.simpleMessage("Max size: 5MB"),
        "quizzCreationConfigurationError": MessageLookupByLibrary.simpleMessage(
            "Pick question type and number of questions."),
        "quizzCreationConfigureHeading":
            MessageLookupByLibrary.simpleMessage("Configure quizz"),
        "quizzCreationConfigureQuestionCount":
            MessageLookupByLibrary.simpleMessage("How many questions?"),
        "quizzCreationConfigureQuestionCount1":
            MessageLookupByLibrary.simpleMessage("Low"),
        "quizzCreationConfigureQuestionCount2":
            MessageLookupByLibrary.simpleMessage("Medium"),
        "quizzCreationConfigureQuestionCount3":
            MessageLookupByLibrary.simpleMessage("High"),
        "quizzCreationConfigureQuestionCount4":
            MessageLookupByLibrary.simpleMessage("Manual"),
        "quizzCreationConfigureType1":
            MessageLookupByLibrary.simpleMessage("Single choice"),
        "quizzCreationConfigureType2":
            MessageLookupByLibrary.simpleMessage("True/False"),
        "quizzCreationConfigureType3":
            MessageLookupByLibrary.simpleMessage("Fill in the blank"),
        "quizzCreationConfigureTypeQuestion":
            MessageLookupByLibrary.simpleMessage("What type of questions?"),
        "quizzCreationDuplicateAttachmentsError":
            MessageLookupByLibrary.simpleMessage(
                "You have already attached this file."),
        "quizzCreationGenerateQuestionGenerateButton":
            MessageLookupByLibrary.simpleMessage("Generate"),
        "quizzCreationGenerateQuestionHeading":
            MessageLookupByLibrary.simpleMessage("Generate new question"),
        "quizzCreationGenerateQuestionPromptHint":
            MessageLookupByLibrary.simpleMessage(
                "Enter prompt for AI to generate question"),
        "quizzCreationGenerateQuestionPromptLabel":
            MessageLookupByLibrary.simpleMessage("Prompt"),
        "quizzCreationMaxAttachmentsError":
            MessageLookupByLibrary.simpleMessage(
                "You can attach maximum of 3 files."),
        "quizzCreationPreviewHeading":
            MessageLookupByLibrary.simpleMessage("Quizz Preview"),
        "quizzCreationQuitHeading":
            MessageLookupByLibrary.simpleMessage("Are you sure?"),
        "quizzCreationQuitSubheading": MessageLookupByLibrary.simpleMessage(
            "You are about to quit the quiz creation process. Any progress made so far will be lost. This action cannot be undone."),
        "quizzCreationSaveQuestion":
            MessageLookupByLibrary.simpleMessage("Save"),
        "quizzCreationSuccessBackButton":
            MessageLookupByLibrary.simpleMessage("Back to dashboard"),
        "quizzCreationSuccessHeading":
            MessageLookupByLibrary.simpleMessage("Success!"),
        "quizzCreationSuccessShareButton":
            MessageLookupByLibrary.simpleMessage("Share with others!"),
        "quizzCreationSuccessSubheading": MessageLookupByLibrary.simpleMessage(
            "You succesfully created your quizz. You can now share it with others."),
        "quizzCreationTextPromptHeading":
            MessageLookupByLibrary.simpleMessage("Content Text"),
        "quizzCreationTextPromptSubheading": MessageLookupByLibrary.simpleMessage(
            "You can either enter text, upload files, or use a combination of both to create your quizz."),
        "quizzCreationTextPromptTextAreaHint":
            MessageLookupByLibrary.simpleMessage(
                "Enter the text for your quizz"),
        "quizzCreationTextPromptTextAreaLabel":
            MessageLookupByLibrary.simpleMessage("Content Text"),
        "quizzCreationUploadFile":
            MessageLookupByLibrary.simpleMessage("Upload file"),
        "quizzCreationYouNeedToProvideContent":
            MessageLookupByLibrary.simpleMessage(
                "You need to provide either text or upload file."),
        "quizzDetailsAddNewQuestionFailure":
            MessageLookupByLibrary.simpleMessage(
                "Failed to add a new question."),
        "quizzDetailsAddNewQuestionSuccess":
            MessageLookupByLibrary.simpleMessage(
                "Successfully added a new question."),
        "quizzDetailsAppbarTitle":
            MessageLookupByLibrary.simpleMessage("Quiz Detail"),
        "quizzDetailsDeleteQuestionSuccess":
            MessageLookupByLibrary.simpleMessage(
                "Successfully deleted the question."),
        "quizzDetailsSaveChangesButton":
            MessageLookupByLibrary.simpleMessage("Save changes"),
        "quizzDetailsTabGeneral":
            MessageLookupByLibrary.simpleMessage("General"),
        "quizzDetailsTabGeneralPageSettingsHeading":
            MessageLookupByLibrary.simpleMessage("Quiz page settings"),
        "quizzDetailsTabGeneralQuizDescription":
            MessageLookupByLibrary.simpleMessage("Quiz description"),
        "quizzDetailsTabGeneralQuizDescriptionHint":
            MessageLookupByLibrary.simpleMessage("Enter quiz title"),
        "quizzDetailsTabGeneralQuizDescriptionTextFieldDescription":
            MessageLookupByLibrary.simpleMessage(
                "This is your public quiz description. It will be displayed on your quiz page. You can change it anytime."),
        "quizzDetailsTabGeneralQuizTitle":
            MessageLookupByLibrary.simpleMessage("Quiz title"),
        "quizzDetailsTabGeneralQuizTitleHint":
            MessageLookupByLibrary.simpleMessage("Enter quiz title"),
        "quizzDetailsTabGeneralQuizTitleTextFieldDescription":
            MessageLookupByLibrary.simpleMessage(
                "This is you public quiz title. It will be displayed on your quiz page. You can change it anytime."),
        "quizzDetailsTabGeneralSubheading":
            MessageLookupByLibrary.simpleMessage(
                "Manage your quiz page settings here."),
        "quizzDetailsTabGeneralSuccessfullSave":
            MessageLookupByLibrary.simpleMessage(
                "Succesfully updated quiz details."),
        "quizzDetailsTabQuestions":
            MessageLookupByLibrary.simpleMessage("Questions"),
        "quizzDetailsTabQuestionsAddNewQuestion":
            MessageLookupByLibrary.simpleMessage("New question"),
        "quizzDetailsTabQuestionsSubheading": MessageLookupByLibrary.simpleMessage(
            "Manage your quiz questions here. You can edit and delete questions. This page is preview page for your questions."),
        "quizzDetailsTabQuestionsSwitch":
            MessageLookupByLibrary.simpleMessage("Answers"),
        "quizzDetailsTabSettings":
            MessageLookupByLibrary.simpleMessage("Settings"),
        "quizzDetailsTabSettingsQuizAvailability":
            MessageLookupByLibrary.simpleMessage("Availability"),
        "quizzDetailsTabSettingsQuizAvailabilityActive":
            MessageLookupByLibrary.simpleMessage("Active"),
        "quizzDetailsTabSettingsQuizAvailabilityDescription":
            MessageLookupByLibrary.simpleMessage(
                "When switched on, quizz is available for everyone. If not, the quiz is private and only visible for you."),
        "quizzDetailsTabSettingsQuizAvailabilityPrivate":
            MessageLookupByLibrary.simpleMessage("Private"),
        "quizzDetailsTabSettingsQuizAvailabilityPublic":
            MessageLookupByLibrary.simpleMessage("Public"),
        "quizzDetailsTabSettingsQuizStatus":
            MessageLookupByLibrary.simpleMessage("Quiz Status"),
        "quizzDetailsTabSettingsQuizStatusDescription":
            MessageLookupByLibrary.simpleMessage(
                "When switched on, quizz is active and available for solving. If not, no one can solve the quiz."),
        "quizzDetailsTabSettingsSaveChanges":
            MessageLookupByLibrary.simpleMessage("Save changes"),
        "quizzDetailsTabSettingsSubheading":
            MessageLookupByLibrary.simpleMessage(
                "Manage your quiz settings here."),
        "quizzDetailsTabSettingsSuccessfullSave":
            MessageLookupByLibrary.simpleMessage(
                "Succesfully updated quiz settings."),
        "quizzDetailsTabStatistics":
            MessageLookupByLibrary.simpleMessage("Statistics"),
        "quizzDetailsTabStatisticsDate":
            MessageLookupByLibrary.simpleMessage("Date"),
        "quizzDetailsTabStatisticsDetailsStatusBadge":
            MessageLookupByLibrary.simpleMessage("Details"),
        "quizzDetailsTabStatisticsEmail":
            MessageLookupByLibrary.simpleMessage("E-mail"),
        "quizzDetailsTabStatisticsFinishedStatusBadge":
            MessageLookupByLibrary.simpleMessage("Finished"),
        "quizzDetailsTabStatisticsName":
            MessageLookupByLibrary.simpleMessage("Name"),
        "quizzDetailsTabStatisticsNoParticipants":
            MessageLookupByLibrary.simpleMessage("No participants yet."),
        "quizzDetailsTabStatisticsScore":
            MessageLookupByLibrary.simpleMessage("Score"),
        "quizzDetailsTabStatisticsSecondsElapsed": m1,
        "quizzDetailsTabStatisticsStartedStatusBadge":
            MessageLookupByLibrary.simpleMessage("Started"),
        "quizzDetailsTabStatisticsStoppedStatusBadge":
            MessageLookupByLibrary.simpleMessage("Stopped"),
        "quizzDetailsTabStatisticsSubheading":
            MessageLookupByLibrary.simpleMessage(
                "You can view your quiz statistics here."),
        "quizzDetailsTabStatisticsTime":
            MessageLookupByLibrary.simpleMessage("Duration"),
        "quizzDetailsUpdateQuestionSuccess":
            MessageLookupByLibrary.simpleMessage(
                "Successfully updated the question."),
        "quizzQuitButton": MessageLookupByLibrary.simpleMessage("Yes, quit"),
        "quizzShareButton": MessageLookupByLibrary.simpleMessage("Share"),
        "quizzShareHeading":
            MessageLookupByLibrary.simpleMessage("Share quizz"),
        "quizzShareMessage": MessageLookupByLibrary.simpleMessage(
            "Share this quizz with your friends"),
        "quizzSummaryTitle": MessageLookupByLibrary.simpleMessage("Title: "),
        "quizzTakeAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Take quizz"),
        "quizzTakeFinishButton": MessageLookupByLibrary.simpleMessage("Finish"),
        "quizzTakeFinishDescription": MessageLookupByLibrary.simpleMessage(
            "Are you sure that all questions have been answered? Once you submit, you won\'t be able to make any changes."),
        "quizzTakeFinishHeading":
            MessageLookupByLibrary.simpleMessage("Finish quizz"),
        "quizzTakeFormFieldHint":
            MessageLookupByLibrary.simpleMessage("Your name"),
        "quizzTakeFormFieldLabel": MessageLookupByLibrary.simpleMessage("Name"),
        "quizzTakeHeading": MessageLookupByLibrary.simpleMessage("Quizz"),
        "quizzTakeLoadingError": MessageLookupByLibrary.simpleMessage(
            "There was an error with loading the Quizz. There is a chance that code You provided is invalid. Please try again."),
        "quizzTakeQuitHeading":
            MessageLookupByLibrary.simpleMessage("Quit quizz?"),
        "quizzTakeQuitSubheading": MessageLookupByLibrary.simpleMessage(
            "If you leave now, your progress will be lost. You\'ll need access the quizz again from the link to retake it. Are you sure you want to quit?"),
        "quizzTakeScoreAwesome":
            MessageLookupByLibrary.simpleMessage("Awesome!"),
        "quizzTakeScoreBad":
            MessageLookupByLibrary.simpleMessage("This is not your day..."),
        "quizzTakeScoreCouldBeBetter":
            MessageLookupByLibrary.simpleMessage("Could be better!"),
        "quizzTakeScoreGood": MessageLookupByLibrary.simpleMessage("Good!"),
        "quizzTakeScoreURGenius":
            MessageLookupByLibrary.simpleMessage("You are a genius!"),
        "quizzTakeSelectAnswer":
            MessageLookupByLibrary.simpleMessage("Select an answer!"),
        "quizzTakeStartButton":
            MessageLookupByLibrary.simpleMessage("Start Quizz"),
        "quizzTakeSubheading": MessageLookupByLibrary.simpleMessage(
            "Engage with our quizz designed to evaluate your understanding and knowledge on various topics."),
        "quizzTakeSummaryBackToDashboard":
            MessageLookupByLibrary.simpleMessage("Back to dashboard"),
        "quizzTakeSummaryDescription": MessageLookupByLibrary.simpleMessage(
            "Congratulations on finishing the quiz! Your responses have been recorded. Review your results below, and see how you did. Thank you for participating!"),
        "quizzTakeSummaryHeading":
            MessageLookupByLibrary.simpleMessage("Summary"),
        "quizzTakeSummarySeeResults":
            MessageLookupByLibrary.simpleMessage("See results"),
        "quizzTakeSummaryYourResult":
            MessageLookupByLibrary.simpleMessage("Your result is"),
        "quizzTakeSummaryYourScore":
            MessageLookupByLibrary.simpleMessage("Your score is..."),
        "refreshButton": MessageLookupByLibrary.simpleMessage("Refresh"),
        "registerButton": MessageLookupByLibrary.simpleMessage("Register"),
        "saveQuizzButton": MessageLookupByLibrary.simpleMessage("Save Quizz"),
        "sessionExpired": MessageLookupByLibrary.simpleMessage(
            "Session expired, please log in again."),
        "signInAppBarTitle": MessageLookupByLibrary.simpleMessage("Login"),
        "signInDontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "signInHeading":
            MessageLookupByLibrary.simpleMessage("Enter credentials"),
        "signUpAlreadyHaveAccount":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "signUpAppBarTitle": MessageLookupByLibrary.simpleMessage("Register"),
        "signUpHeading": MessageLookupByLibrary.simpleMessage(
            "Hello! 👋 Fill out the form to register"),
        "somethingWentWrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "successfulPasswordResetRequestButton":
            MessageLookupByLibrary.simpleMessage("Back"),
        "successfulPasswordResetRequestHeading":
            MessageLookupByLibrary.simpleMessage("E-mail sent"),
        "successfulPasswordResetRequestSubheading":
            MessageLookupByLibrary.simpleMessage(
                "Check your e-mail, there will be an e-mail with password reset link."),
        "successfulProfileUpdate": MessageLookupByLibrary.simpleMessage(
            "Profile updated successfully."),
        "successfulRegistration": MessageLookupByLibrary.simpleMessage(
            "You have successfully registered. You can now log in."),
        "tempAnswer1": MessageLookupByLibrary.simpleMessage("Decentralization"),
        "tempAnswer2":
            MessageLookupByLibrary.simpleMessage("Physical existence"),
        "tempAnswer3":
            MessageLookupByLibrary.simpleMessage("Centralized control"),
        "tempAnswer4":
            MessageLookupByLibrary.simpleMessage("Government regulation"),
        "tempQuestion": MessageLookupByLibrary.simpleMessage(
            "What is one of the key features of cryptocurrencies?"),
        "tempQuestionDescription":
            MessageLookupByLibrary.simpleMessage("Question description"),
        "tempQuizzSummaryDescription": MessageLookupByLibrary.simpleMessage(
            "Explore how cryptocurrencies like Bitcoin and Ethereum are transforming the financial landscape through decentralization, blockchain technology, and the potential for high returns, while also addressing risks and regulatory challenges."),
        "tempQuizzSummaryTitle": MessageLookupByLibrary.simpleMessage(
            "Understanding Cryptocurrencies and Their Impact on Finance"),
        "thisFieldIsRequired":
            MessageLookupByLibrary.simpleMessage("This field is required."),
        "unknownUsername": MessageLookupByLibrary.simpleMessage("Unknown"),
        "usernameHint": MessageLookupByLibrary.simpleMessage("Your username"),
        "usernameLabel": MessageLookupByLibrary.simpleMessage("Username")
      };
}
