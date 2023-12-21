class AuthenticationService {
  static AuthenticationService? _authService;

  static AuthenticationService get instance {
    _authService ??= AuthenticationService();
    return _authService!;
  }

  String? login(String email, String password) {
    if (email == 'test@gmail.com' && password == 'password') {
      return null;
    } else {
      return 'Username or password are invalid';
    }
  }
}
