import 'package:pr2/app_router.dart';
import 'package:pr2/data/repositories/auth_repositories_impl.dart';
import 'package:pr2/domain/entity/role_entity.dart';
import 'package:pr2/domain/usecase/auth.dart';
import 'package:pr2/presentation/widgets/custom_button.dart';
import 'package:pr2/presentation/widgets/text_field_obscure.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> _key = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isObscure = true;
  bool _isValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(child: SizedBox()),
                const Text(
                  'Магазин мебели',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26),
                ),
                const Expanded(child: SizedBox()),
                TextFormField(
                  controller: _loginController,
                  validator: (value) {
                    if (!_isValid) {
                      return null;
                    }
                    if (value!.isEmpty) {
                      return 'Поле логин пустое';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Логин',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (!_isValid) {
                      return null;
                    }
                    if (value!.isEmpty) {
                      return 'Поле пароль пустое';
                    }
                    return null;
                  },
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    suffixIcon: TextFieldObscure(isObscure: (value) {
                      setState(() {
                        isObscure = value;
                      });
                    }),
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  content: 'Войти',
                  onPressed: () {
                    _isValid = true;
                    if (_key.currentState!.validate()) {
                      signIn();
                    } else {}
                  },
                ),
                const Expanded(flex: 3, child: SizedBox()),
                InkWell(
                  borderRadius: BorderRadius.circular(4),
                  onTap: () {
                    _loginController.clear();
                    _passwordController.clear();
                    _isValid = false;
                    _key.currentState!.validate();
                    Navigator.pushNamed(context, screen2NamePage);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Регистрация в системе',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signIn() async {
    final AuthRepositoriesImpl auth = AuthRepositoriesImpl();
    var result = await Auth(auth).signIn(AuthParams(
      login: _loginController.text,
      password: _passwordController.text,
    ));
    result.fold((l) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l),
        ),
      );
    }, (r) {
      switch (r) {
        case RoleEnum.admin:
          {
           Navigator.pushNamed(context, screen3NamePage);
            //print('admin');
            break;
          }
        case RoleEnum.user:
          Navigator.pushNamed(context, screen4NamePage);
          //print('client');
          break;
      }
    });
  }
}