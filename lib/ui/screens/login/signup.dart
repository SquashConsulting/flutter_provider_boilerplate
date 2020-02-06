import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:flutter_boilerplate/core/services/user_service.dart';
import 'package:flutter_boilerplate/core/viewmodels/user_viewmodel.dart';

import 'package:flutter_boilerplate/ui/utils/colors.dart';
import 'package:flutter_boilerplate/ui/widgets/base_widget.dart';
import 'package:flutter_boilerplate/ui/widgets/button.dart';
import 'package:flutter_boilerplate/ui/widgets/input.dart';
import 'package:flutter_boilerplate/ui/widgets/spacing.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _emailFieldController = TextEditingController();
  TextEditingController _passwordFieldController = TextEditingController();
  FocusNode _focusNode = FocusNode();

  void _onEmailSubmitted(_) => FocusScope.of(context).requestFocus(_focusNode);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: UIColors.white,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: BaseWidget<UserViewModel>(
          model: UserViewModel(userService: Provider.of<UserService>(context)),
          child: Image.asset(
            "assets/images/logo.png",
            width: 170,
          ),
          builder: (context, model, child) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                child,
                Spacing(
                  heightFactor: HeightFactor.large,
                ),
                Input(
                  controller: _emailFieldController,
                  placeholder: "Email",
                  onSubmitted: _onEmailSubmitted,
                ),
                Spacing(),
                Input(
                  controller: _passwordFieldController,
                  placeholder: "Password",
                  focusNode: _focusNode,
                  protected: true,
                  onSubmitted: (value) => model.register({
                    "email": _emailFieldController.value.text,
                    "password": value
                  }),
                ),
                Spacing(
                  heightFactor: HeightFactor.large,
                ),
                Button(
                  title: model.busy
                      ? CupertinoActivityIndicator()
                      : Text("Sign Up"),
                  onPressed: model.busy ? null : () => model.register({}),
                ),
                Spacing(),
              ]),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    _emailFieldController.dispose();
    _passwordFieldController.dispose();
    _focusNode.dispose();
  }
}
