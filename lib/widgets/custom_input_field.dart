import 'package:fl_components/screens/screens.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
   final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? inputType;
  final bool isPassword;
  final String formProperty;
  final Map<String,String> formValues;

  const CustomInputField({
    super.key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.suffixIcon, 
      this.icon, 
      this.inputType, 
      this.isPassword = false, 
      required this.formProperty, 
      required this.formValues
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      keyboardType: inputType,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null :  Icon(suffixIcon),
        icon: icon == null ? null :  Icon(icon),
      ),
    );
  }
}