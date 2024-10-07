// //baseUrl is still local host
// class URLS {
//   static const String baseUrl = 'http://test.com/api';
//   static const String baseFileUrl = 'https://test.com/storage/';

//   static const String studentBaseUrl = '$baseUrl/student';
//   static const String subjectBaseUrl = '$baseUrl/subject';
//   static const String documentBaseUrl = '$baseUrl/document';
//   static const String questionBaseUrl = '$baseUrl/question';
//   static const String answerBaseUrl = '$baseUrl/answer';
//   static const String testBaseUrl = '$baseUrl/test';

//   // Auth routes
//   static const String registerUrl = '$baseUrl/register';
//   static const String loginUrl = '$baseUrl/login';
//   static const String uploadUrl = '$baseUrl/upload';
//   static const String resetUrl = '$baseUrl/reset';
//   static const String logoutUrl = '$baseUrl/logout/';
//   static const String changeUrl = '$baseUrl/change';

//   // Student routes
//   static const String getStudentUrl = '$studentBaseUrl/'; // {id}
//   static const String deleteStudentUrl = '$studentBaseUrl/'; // {id}
//   static const String updateStudentUrl = '$studentBaseUrl/'; // {id}

//   // Subject routes
//   static const String addSubjectUrl = subjectBaseUrl;
//   static const String getSubjectUrl = '$subjectBaseUrl/';
//   static const String getSubjectsUrl = '${subjectBaseUrl}s';
//   static const String getStudentSubjectsUrl = '$studentBaseUrl-subjects/';
//   static const String updateSubjectUrl = '$subjectBaseUrl/';
//   static const String deleteSubjectUrl = '$subjectBaseUrl/';

//   // Document routes
//   static const String downloadDocumentUrl = '$documentBaseUrl/download/';
//   static const String getDocumentsUrl = '${documentBaseUrl}s';
//   static const String getStudentDocumentsUrl =
//       '$studentBaseUrl-documents/'; // {studentId}
//   static const String getSubjectDocumentsUrl =
//       '$subjectBaseUrl-documents/'; // {subjectId}

//   // Question routes
//   static const String getQuestionUrl = '$questionBaseUrl/'; // {id}
//   static const String getQuestionsUrl = '${questionBaseUrl}s/'; // {documentId}
//   static const String getDocumentQuestionsUrl =
//       '$documentBaseUrl-questions/'; // {documentId}
//   static const String getSubjectQuestionsUrl =
//       '$subjectBaseUrl-questions/'; // {subjectId}
//   static const String getStudentQuestionsUrl =
//       '$studentBaseUrl-questions/'; // {studentId}
//   static const String updateQuestionUrl = '$questionBaseUrl/'; // {id}
//   static const String deleteQuestionUrl = '$questionBaseUrl/'; // {id}

//   // Answer routes
//   static const String getAnswerUrl = '$answerBaseUrl/{id}';
//   static const String getAnswersUrl = '${answerBaseUrl}s/{questionId}';
//   static const String getQuestionAnswersUrl =
//       '$questionBaseUrl-answers/{questionId}';
//   static const String updateAnswerUrl = '$answerBaseUrl/{id}';
//   static const String deleteAnswerUrl = '$answerBaseUrl/{id}';

//   // tests routes
//   static const String addTestUrl = testBaseUrl;
//   static const String getTestUrl = '$testBaseUrl/'; // {testId}
//   static const String getTestsUrl = '$testBaseUrl/'; // {studentId}
//   static const String getStudentTestsUrl =
//       '$studentBaseUrl-tests/'; // {studentId}
//   static const String generateTestUrl = '$testBaseUrl/generate/'; // {{testId}}
// }
