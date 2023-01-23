import 'package:flutter/material.dart';
import 'package:componentes_app/widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Roberto',
      'last_name': 'Torres',
      'email': 'roberto18ctr@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Email',
                    hintText: 'Email del usuario',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField(
                      items: const [
                        DropdownMenuItem(
                          value: 'Admin',
                          child: Text('Admin'),
                        ),
                        DropdownMenuItem(
                          value: 'Developer',
                          child: Text('Developer'),
                        ),
                        DropdownMenuItem(
                          value: 'Designer',
                          child: Text('Designer'),
                        )
                      ],
                      onChanged: (value) {
                        print(value);
                        formValues['role'] = value ?? 'Admin';
                      }),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        //FocusScope.of(context).requestFocus(FocusNode());
                        //Esta linea sustituye el FocusScope
                        FocusManager.instance.primaryFocus?.unfocus();
                        //* Todo: imprimir valores del formulario
                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no válido');
                          return;
                        }
                        print(formValues);
                      },
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Guardar'))))
                ]),
              ))),
    );
  }
}
