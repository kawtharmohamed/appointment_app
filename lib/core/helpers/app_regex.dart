class AppRegex{
  static bool isEmailValid( String email){
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$'
    ).hasMatch(email);
  }
  static bool isPasswordValid( String password){
    return RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'
    ).hasMatch(password);
  }
  static bool hasNumber ( String password){
    return RegExp(r'[0-9]').hasMatch(password);
  }
  static bool hasLowerCase ( String password){
    return RegExp(r'[a-z]').hasMatch(password);
  }

  static bool hasUppercase ( String password){
    return RegExp(r'[A-Z]').hasMatch(password);
  }
  static bool hasSpecialChar ( String password){
    return RegExp(r'[!@#\$&*~]').hasMatch(password);
  }
  static bool hasMinLength ( String password){
    return RegExp(r'.{8,}').hasMatch(password);
  }
}