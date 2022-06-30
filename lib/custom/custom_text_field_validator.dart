/*
TextFormField(
style: TextStyle(color: Colors.white, fontSize: 18),
textInputAction: TextInputAction.next,
controller: confirmEmail,
textAlign: TextAlign.center,
keyboardType: TextInputType.emailAddress,
decoration: InputDecoration(
fillColor: Colors.black.withAlpha(100),
filled: true,
floatingLabelAlignment: FloatingLabelAlignment.center,
floatingLabelBehavior: FloatingLabelBehavior.always,
labelText: "Confirme seu Email:",
labelStyle: TextStyle(
letterSpacing: 2,
fontSize: 24,
color: Colors.white.withAlpha(210))),
validator: (String? value) {
if (value!.isEmpty) {
return ("Por favor insira o mesmo Email!");
}
if (_emailRegister.text != confirmEmail.text) {
return ("Os Emails não são iguais!");
}
return null;
},
onSaved: (String? email) {
email = email;
}),

TextFormField(
style: TextStyle(color: Colors.white, fontSize: 18),
textInputAction: TextInputAction.done,
controller: confirmPassword,
textAlign: TextAlign.center,
maxLength: 8,
keyboardType: TextInputType.text,
decoration: InputDecoration(
fillColor: Colors.black.withAlpha(100),
filled: true,
floatingLabelAlignment: FloatingLabelAlignment.center,
floatingLabelBehavior: FloatingLabelBehavior.always,
labelText: "Confirme a senha:",
labelStyle: TextStyle(
letterSpacing: 2,
fontSize: 24,
color: Colors.white.withAlpha(210))),
obscureText: true,
validator: (String? value) {
if (value!.isEmpty) {
return ("Por favor confirme a Senha!");
}
if (password.text != confirmPassword.text) {
return ("Por favor insira uma Senha válida!");
}
return null;
}),

 */
