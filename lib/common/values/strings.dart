abstract class Strings {
  static const String appName = 'Shopping app';
  static const String ok = 'Ok';
  static const String success = 'Success';
  static const String retry = 'Retry';
  static const String home = 'Home';
  static const String logOut = 'Log out';

  /* ::::::::::::::::::::: Error Messages ::::::::::::::::::::: */
  static const String error = 'Error';
  static const String noInternet = 'No internet. Please try again later.';
  static const String noConnection =
      'No connection. Please turn on your internet!';
  static const String unauthorize = 'Unauthorize. Please login again!';

  static const String unknownError =
      'Unknow error! Please try again after some time.';

  static const String connectionTimeout =
      'Connection timeout. Please try again after some time.';
  static const String somethingWentWrong = 'Something went wrong.';

  /* ::::::::::::::::::::: Email & Password Text ::::::::::::::::::::: */
  static const String emailAddress = 'Email Address';
  static const String mobileNumber = 'Mobile Number';
  static const String emailOrMobile = '$emailAddress or $mobileNumber';
  static const String cantBeEmpty = "can't be empty.";
  static const String fieldCantBeEmpty = 'Field $cantBeEmpty';
  static const String numberCantBeEmpty = '$emailOrMobile $cantBeEmpty';
  static const String emailCantBeEmpty = 'Email $cantBeEmpty';
  static const String enterValid = 'Please enter a valid';
  static const String enterValidNumber = '$enterValid $mobileNumber.';
  static const String enterValidEmail = '$enterValid email.';
  static const String password = 'Password';
  static const String confirmPassword = 'Confirm $password';
  static const String enterPassword = 'Enter $password';
  static const String passwordCantBeEmpty = '$password $cantBeEmpty';
  static const String passwordValidation =
      '$password must be at least 8 characters long.';
  static const confirmPasswordValidation =
      '$password and Confirm password should be same.';
  //
  static const String otpValidation = 'Invalid OTP';
  static const String gallery = 'Gallery';
  static const String camera = 'Camera';
  static const String mobile = 'Mobile';
  static const String from = 'From';
  static const String to = 'To';
  static const checkboxValidation = 'Dummy Checkbox Validation Message';
}
