import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFromKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Miguel',
      'last_name': 'Cortés',
      'email': 'miguelcortes9936@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFromKey,
              onChanged: () {},
              child: Column(
                children: [
                  CustomInputField(labelText: 'Name', hintText: 'User name', formProperty: 'first_name', formValues: formValues,),
                  const SizedBox(height: 30),
                  CustomInputField(labelText: 'Last Name', hintText: 'User last name', formProperty: 'last_name', formValues:formValues ),
                  const SizedBox(height: 30),
                  CustomInputField(labelText: 'Email',hintText: 'User Email',inputType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                  const SizedBox(height: 30),
                  CustomInputField(labelText: 'Password',hintText: 'User Password',isPassword: true, formProperty: 'password', formValues: formValues,),
                  const SizedBox(height: 30),

                  DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                      DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(value: 'Jr Developer', child: Text('Jr Developer')),

                    ], 
                    onChanged: (value) {
                      formValues['role']= value ??'Admin';
                    },
                    ), 

                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Save')),
                    ),
                    onPressed: () {

                      // FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFromKey.currentState!.validate()){
                        print('form no validated');
                        return;
                      }
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
