class FeedbackForm {
  var _name, _email, _password;

  FeedbackForm(
    this._name,
    this._email,
    this._password,
  );

  String toParams() => "?name=$_name&email=$_email&password=$_password";
}
