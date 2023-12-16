import 'package:assessment/helper/extensions/context_extensions.dart';
import 'package:assessment/helper/extensions/num_extenstion.dart';
import 'package:assessment/helper/extensions/validation_extensions.dart';
import 'package:assessment/presentation/screens/home_screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../base/failure.dart';
import '../../../businessLogic/auth_cubit/auth_cubit.dart';
import '../../../dataProvider/models/auth_model.dart';
import '../../../helper/constant/images_resource.dart';
import '../../../helper/constant/strings_resource.dart';
import '../../../helper/enums/status_enum.dart';
import '../../../helper/utils/dialog_utils.dart';
import '../../../main.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_form_builder_text_field.dart';
import '../../widgets/custom_rich_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final GlobalKey<FormBuilderState> _formKey;
  late bool _isPasswordVisible;

  @override
  void initState() {
    _formKey = GlobalKey<FormBuilderState>();
    _isPasswordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                context.responsiveHeight(100).sizedHeight,

                /// TOP LOGO
                Image.asset(
                  alignment: Alignment.center,
                  ImagesResource.APP_LOGO,
                  height: context.responsiveHeight(130),
                ),
                30.sizedHeight,
                FormBuilder(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// name text
                      Text(
                        StringsResource.NAME_TXT,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      4.sizedHeight,
                      CustomFormBuilderTextField(
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          (value) => value?.checkNameValidity(),
                        ]),
                        textInputAction: TextInputAction.next,
                        name: 'name',
                        hintText: StringsResource.NAME_HINT,
                        prefixIcon: const Icon(
                          Icons.email,
                        ),
                        onChanged: (val) {
                          if (kDebugMode) {
                            print(val);
                          } // Print the text value write into TextField
                        },
                      ),
                      12.sizedHeight,

                      /// EMAIL TEXT
                      Text(
                        StringsResource.EMAIL_STR,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      4.sizedHeight,

                      /// EMAIL TEXT FIELD
                      CustomFormBuilderTextField(
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          (value) => value?.checkEmailValidity(),
                        ]),
                        textInputAction: TextInputAction.next,
                        name: 'email',
                        hintText: StringsResource.EMAIL_HINT,
                        prefixIcon: const Icon(
                          Icons.email,
                        ),
                        onChanged: (val) {
                          if (kDebugMode) {
                            print(val);
                          } // Print the text value write into TextField
                        },
                      ),
                      12.sizedHeight,

                      /// PASSWORD TEXT
                      Text(
                        StringsResource.PASSWORD_STR,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      4.sizedHeight,

                      /// PASSWORD TEXT FIELD
                      CustomFormBuilderTextField(
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          (value) => value?.checkPasswordValidity(),
                        ]),
                        obscureText: !_isPasswordVisible,
                        name: 'password',
                        hintText: StringsResource.PASSWORD_HINT_STR,
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        onChanged: (val) {
                          if (kDebugMode) {
                            print(val);
                          } // Print the text value write into TextField
                        },
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                          child: Icon(
                            _isPasswordVisible == true
                                ? CupertinoIcons.eye_solid
                                : CupertinoIcons.eye_slash_fill,
                            color: _isPasswordVisible == true
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                          ),
                        ),
                      ),

                      20.sizedHeight,

                      /// signup button
                      BlocConsumer<AuthCubit, AuthState>(
                        listener: (context, state) {
                          switch (state.signupVS.status) {
                            case Status.error:
                              DialogUtils.errorDialog(
                                  context: context,
                                  failure: state.signupVS.failure ??
                                      getIt<Failure>());
                            case Status.completed:
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                                (route) => false,
                              );
                            default:
                              null;
                          }
                        },
                        builder: (context, state) {
                          return CustomButton(
                            loading: state.signupVS.status == Status.loading,
                            isDisabled: state.signupVS.status == Status.loading,
                            btnTxt: StringsResource.SIGNUP_TXT,
                            onPressed: () {
                              _formKey.currentState?.save();
                              if (_formKey.currentState?.validate() ?? true) {
                                context.read<AuthCubit>().signUp(
                                      signUpModel: AuthModel(
                                        email: _formKey
                                            .currentState?.value["email"],
                                        password: _formKey
                                            .currentState?.value["password"],
                                      ),
                                    );
                              }
                            },
                          );
                        },
                      ),
                      10.sizedHeight,
                      Align(
                        alignment: Alignment.centerRight,
                        child: CustomRichText(
                          onTap: () => Navigator.pop(context),
                          questionText: StringsResource.ALREADY_HAVE_AN_ACCOUTN,
                          actionAbleText: StringsResource.LOGIN_TXT,
                        ),
                      ),
                      30.sizedHeight,
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
