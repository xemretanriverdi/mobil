import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobil/palette.dart';
import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 250,
                  child: Center(
                    child: Text(
                      'İstanbul Ticaret Üniversitesi',
                      style: ustBaslik,
                    ),
                  ),
                ),
                SizedBox(
                  height: 220,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      NumericInput(
                        icon: FontAwesomeIcons.university,
                        hint: 'Okul Numarası',
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next,
                      ),
                      ParolaInput(
                        icon: FontAwesomeIcons.lock,
                        hint: 'Parola',
                        inputAction: TextInputAction.done,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  child: Center(
                    child: Text(
                      'Developers',
                      style: altBaslik,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ParolaInput extends StatelessWidget {
  const ParolaInput({
    Key key,
    @required this.icon,
    @required this.hint,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600].withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            hintStyle: kBodyText,
          ),
          obscureText: true,
          style: kBodyText,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}

class NumericInput extends StatelessWidget {
  const NumericInput({
    Key key,
    @required this.icon,
    @required this.hint,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[600].withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          style: kBodyText,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}

class TextInput extends StatelessWidget {
  const TextInput({
    Key key,
    @required this.icon,
    @required this.hint,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[600].withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          style: kBodyText,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
