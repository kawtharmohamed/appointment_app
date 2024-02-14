class ErrorHandler {
  // Handle general errors
  static dynamic handle(dynamic error) {
    return 'Error: $error';
  }

  // Handle API errors
  static dynamic handleApiError(String message) {
    return 'API Error: $message';
  }

  // Handle network errors
  static dynamic handleNetworkError() {
    return 'Network Error';
  }
}
