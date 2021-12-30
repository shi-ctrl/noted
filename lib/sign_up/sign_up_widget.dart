import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../profile_page/profile_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController emailAddressNewAcctController;
  TextEditingController nameNewAcctController;
  TextEditingController passwordNewAcctController;
  bool passwordNewAcctVisibility;
  TextEditingController passwordConfirmNewAcctController;
  bool passwordConfirmNewAcctVisibility;
  bool switchPrivacyValue;
  bool switchTermsValue;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressNewAcctController = TextEditingController();
    nameNewAcctController = TextEditingController();
    passwordNewAcctController = TextEditingController();
    passwordNewAcctVisibility = false;
    passwordConfirmNewAcctController = TextEditingController();
    passwordConfirmNewAcctVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.primaryColor,
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.primaryColor,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo2.png',
                            width: 242,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: nameNewAcctController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Name',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'Enter your name here...',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16, 24, 0, 24),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF2B343A),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: emailAddressNewAcctController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'Enter your email here...',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16, 24, 0, 24),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF2B343A),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: passwordNewAcctController,
                              obscureText: !passwordNewAcctVisibility,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'Enter your email here...',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF95A1AC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16, 24, 24, 24),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => passwordNewAcctVisibility =
                                        !passwordNewAcctVisibility,
                                  ),
                                  child: Icon(
                                    passwordNewAcctVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0xFF95A1AC),
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF2B343A),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Required Field';
                                }
                                if (val.length < 6) {
                                  return 'Must have 6 characters or more';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: passwordConfirmNewAcctController,
                              obscureText: !passwordConfirmNewAcctVisibility,
                              decoration: InputDecoration(
                                labelText: 'Confirm Password',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.tertiaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                hintText: 'Enter your email here...',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.tertiaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16, 24, 24, 24),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => passwordConfirmNewAcctVisibility =
                                        !passwordConfirmNewAcctVisibility,
                                  ),
                                  child: Icon(
                                    passwordConfirmNewAcctVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0xFF95A1AC),
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.tertiaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Required Field';
                                }
                                if (val.length < 6) {
                                  return 'Must have 6 characters or more';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          if (!formKey.currentState.validate()) {
                            return;
                          }
                          if (passwordNewAcctController.text !=
                              passwordConfirmNewAcctController.text) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Passwords don't match!",
                                ),
                              ),
                            );
                            return;
                          }

                          final user = await createAccountWithEmail(
                            context,
                            emailAddressNewAcctController.text,
                            passwordNewAcctController.text,
                          );
                          if (user == null) {
                            return;
                          }

                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: ProfilePageWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                if (!formKey.currentState.validate()) {
                                  return;
                                }
                                if (passwordNewAcctController.text !=
                                    passwordConfirmNewAcctController.text) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "Passwords don't match!",
                                      ),
                                    ),
                                  );
                                  return;
                                }

                                final user = await createAccountWithEmail(
                                  context,
                                  emailAddressNewAcctController.text,
                                  passwordNewAcctController.text,
                                );
                                if (user == null) {
                                  return;
                                }

                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: ProfilePageWidget(),
                                  ),
                                );
                              },
                              text: 'Create Account',
                              options: FFButtonOptions(
                                width: 210,
                                height: 60,
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.subtitle1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                elevation: 3,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Login',
                            options: FFButtonOptions(
                              width: 70,
                              height: 30,
                              color: Color(0x00FFFFFF),
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(),
                            alignment: AlignmentDirectional(-0.9, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Privacy  Policy',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: AlignmentDirectional(1, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  50, 0, 0, 0),
                                          child: SwitchListTile(
                                            value: switchPrivacyValue ??= false,
                                            onChanged: (newValue) => setState(
                                                () => switchPrivacyValue =
                                                    newValue),
                                            title: Text(
                                              'I  agree ',
                                              textAlign: TextAlign.end,
                                              style: FlutterFlowTheme.subtitle2
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                            tileColor: Colors.white,
                                            activeColor: Colors.white,
                                            activeTrackColor: Colors.white,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Terms and Conditions',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: AlignmentDirectional(1, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: SwitchListTile(
                                            value: switchTermsValue ??= false,
                                            onChanged: (newValue) => setState(
                                                () => switchTermsValue =
                                                    newValue),
                                            title: Text(
                                              'I  agree ',
                                              textAlign: TextAlign.end,
                                              style: FlutterFlowTheme.subtitle2
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                            tileColor: Colors.white,
                                            activeColor: Colors.white,
                                            activeTrackColor: Colors.white,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 335,
                                      height: 100,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (switchPrivacyValue ?? true)
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 100,
                                              decoration: BoxDecoration(),
                                              child: Html(
                                                data:
                                                    '<!DOCTYPE html>\n    <html>\n    <head>\n      <meta charset=\'utf-8\'>\n      <meta name=\'viewport\' content=\'width=device-width\'>\n      <title>Privacy Policy</title>\n      <style> body { font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; padding:1em; } </style>\n    </head>\n    <body>\n    <strong>Privacy Policy</strong> <p>\n                  Sabina Shiwji built the Noted app as\n                  a Free app. This SERVICE is provided by\n                  Sabina Shiwji at no cost and is intended for use as\n                  is.\n                </p> <p>\n                  This page is used to inform visitors regarding my\n                  policies with the collection, use, and disclosure of Personal\n                  Information if anyone decided to use my Service.\n                </p> <p>\n                  If you choose to use my Service, then you agree to\n                  the collection and use of information in relation to this\n                  policy. The Personal Information that I collect is\n                  used for providing and improving the Service. I will not use or share your information with\n                  anyone except as described in this Privacy Policy.\n                </p> <p>\n                  The terms used in this Privacy Policy have the same meanings\n                  as in our Terms and Conditions, which are accessible at\n                  Noted unless otherwise defined in this Privacy Policy.\n                </p> <p><strong>Information Collection and Use</strong></p> <p>\n                  For a better experience, while using our Service, I\n                  may require you to provide us with certain personally\n                  identifiable information, including but not limited to Name, Email Address, Password. The information that\n                  I request will be retained on your device and is not collected by me in any way.\n                </p> <div><p>\n                    The app does use third-party services that may collect\n                    information used to identify you.\n                  </p> <p>\n                    Link to the privacy policy of third-party service providers used\n                    by the app\n                  </p> <ul><li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\" rel=\"noopener noreferrer\">Google Play Services</a></li><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----></ul></div> <p><strong>Log Data</strong></p> <p>\n                  I want to inform you that whenever you\n                  use my Service, in a case of an error in the app\n                  I collect data and information (through third-party\n                  products) on your phone called Log Data. This Log Data may\n                  include information such as your device Internet Protocol\n                  (“IP”) address, device name, operating system version, the\n                  configuration of the app when utilizing my Service,\n                  the time and date of your use of the Service, and other\n                  statistics.\n                </p> <p><strong>Cookies</strong></p> <p>\n                  Cookies are files with a small amount of data that are\n                  commonly used as anonymous unique identifiers. These are sent\n                  to your browser from the websites that you visit and are\n                  stored on your device\'s internal memory.\n                </p> <p>\n                  This Service does not use these “cookies” explicitly. However,\n                  the app may use third-party code and libraries that use\n                  “cookies” to collect information and improve their services.\n                  You have the option to either accept or refuse these cookies\n                  and know when a cookie is being sent to your device. If you\n                  choose to refuse our cookies, you may not be able to use some\n                  portions of this Service.\n                </p> <p><strong>Service Providers</strong></p> <p>\n                  I may employ third-party companies and\n                  individuals due to the following reasons:\n                </p> <ul><li>To facilitate our Service;</li> <li>To provide the Service on our behalf;</li> <li>To perform Service-related services; or</li> <li>To assist us in analyzing how our Service is used.</li></ul> <p>\n                  I want to inform users of this Service\n                  that these third parties have access to their Personal\n                  Information. The reason is to perform the tasks assigned to\n                  them on our behalf. However, they are obligated not to\n                  disclose or use the information for any other purpose.\n                </p> <p><strong>Security</strong></p> <p>\n                  I value your trust in providing us your\n                  Personal Information, thus we are striving to use commercially\n                  acceptable means of protecting it. But remember that no method\n                  of transmission over the internet, or method of electronic\n                  storage is 100% secure and reliable, and I cannot\n                  guarantee its absolute security.\n                </p> <p><strong>Links to Other Sites</strong></p> <p>\n                  This Service may contain links to other sites. If you click on\n                  a third-party link, you will be directed to that site. Note\n                  that these external sites are not operated by me.\n                  Therefore, I strongly advise you to review the\n                  Privacy Policy of these websites. I have\n                  no control over and assume no responsibility for the content,\n                  privacy policies, or practices of any third-party sites or\n                  services.\n                </p> <p><strong>Children’s Privacy</strong></p> <div><p>\n                    These Services do not address anyone under the age of 13.\n                    I do not knowingly collect personally\n                    identifiable information from children under 13 years of age. In the case\n                    I discover that a child under 13 has provided\n                    me with personal information, I immediately\n                    delete this from our servers. If you are a parent or guardian\n                    and you are aware that your child has provided us with\n                    personal information, please contact me so that\n                    I will be able to do the necessary actions.\n                  </p></div> <!----> <p><strong>Changes to This Privacy Policy</strong></p> <p>\n                  I may update our Privacy Policy from\n                  time to time. Thus, you are advised to review this page\n                  periodically for any changes. I will\n                  notify you of any changes by posting the new Privacy Policy on\n                  this page.\n                </p> <p>This policy is effective as of 2021-12-30</p> <p><strong>Contact Us</strong></p> <p>\n                  If you have any questions or suggestions about my\n                  Privacy Policy, do not hesitate to contact me at shiwji.sabina@gmail.com.\n                </p> <p>This privacy policy page was created at <a href=\"https://privacypolicytemplate.net\" target=\"_blank\" rel=\"noopener noreferrer\">privacypolicytemplate.net </a>and modified/generated by <a href=\"https://app-privacy-policy-generator.nisrulz.com/\" target=\"_blank\" rel=\"noopener noreferrer\">App Privacy Policy Generator</a></p>\n    </body>\n    </html>\n      ',
                                              ),
                                            ),
                                          if (switchTermsValue ?? true)
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 100,
                                              decoration: BoxDecoration(),
                                              child: Html(
                                                data:
                                                    '<!DOCTYPE html>\n    <html>\n    <head>\n      <meta charset=\'utf-8\'>\n      <meta name=\'viewport\' content=\'width=device-width\'>\n      <title>Terms &amp; Conditions</title>\n      <style> body { font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; padding:1em; } </style>\n    </head>\n    <body>\n    <strong>Terms &amp; Conditions</strong> <p>\n                  By downloading or using the app, these terms will\n                  automatically apply to you – you should make sure therefore\n                  that you read them carefully before using the app. You’re not\n                  allowed to copy or modify the app, any part of the app, or\n                  our trademarks in any way. You’re not allowed to attempt to\n                  extract the source code of the app, and you also shouldn’t try\n                  to translate the app into other languages or make derivative\n                  versions. The app itself, and all the trademarks, copyright,\n                  database rights, and other intellectual property rights related\n                  to it, still belong to Sabina Shiwji.\n                </p> <p>\n                  Sabina Shiwji is committed to ensuring that the app is\n                  as useful and efficient as possible. For that reason, we\n                  reserve the right to make changes to the app or to charge for\n                  its services, at any time and for any reason. We will never\n                  charge you for the app or its services without making it very\n                  clear to you exactly what you’re paying for.\n                </p> <p>\n                  The Noted app stores and processes personal data that\n                  you have provided to us, to provide my\n                  Service. It’s your responsibility to keep your phone and\n                  access to the app secure. We therefore recommend that you do\n                  not jailbreak or root your phone, which is the process of\n                  removing software restrictions and limitations imposed by the\n                  official operating system of your device. It could make your\n                  phone vulnerable to malware/viruses/malicious programs,\n                  compromise your phone’s security features and it could mean\n                  that the Noted app won’t work properly or at all.\n                </p> <div><p>\n                    The app does use third-party services that declare their\n                    Terms and Conditions.\n                  </p> <p>\n                    Link to Terms and Conditions of third-party service\n                    providers used by the app\n                  </p> <ul><li><a href=\"https://policies.google.com/terms\" target=\"_blank\" rel=\"noopener noreferrer\">Google Play Services</a></li><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----><!----></ul></div> <p>\n                  You should be aware that there are certain things that\n                  Sabina Shiwji will not take responsibility for. Certain\n                  functions of the app will require the app to have an active\n                  internet connection. The connection can be Wi-Fi or provided\n                  by your mobile network provider, but Sabina Shiwji\n                  cannot take responsibility for the app not working at full\n                  functionality if you don’t have access to Wi-Fi, and you don’t\n                  have any of your data allowance left.\n                </p> <p></p> <p>\n                  If you’re using the app outside of an area with Wi-Fi, you\n                  should remember that the terms of the agreement with your\n                  mobile network provider will still apply. As a result, you may\n                  be charged by your mobile provider for the cost of data for\n                  the duration of the connection while accessing the app, or\n                  other third-party charges. In using the app, you’re accepting\n                  responsibility for any such charges, including roaming data\n                  charges if you use the app outside of your home territory\n                  (i.e. region or country) without turning off data roaming. If\n                  you are not the bill payer for the device on which you’re\n                  using the app, please be aware that we assume that you have\n                  received permission from the bill payer for using the app.\n                </p> <p>\n                  Along the same lines, Sabina Shiwji cannot always take\n                  responsibility for the way you use the app i.e. You need to\n                  make sure that your device stays charged – if it runs out of\n                  battery and you can’t turn it on to avail the Service,\n                  Sabina Shiwji cannot accept responsibility.\n                </p> <p>\n                  With respect to Sabina Shiwji’s responsibility for your\n                  use of the app, when you’re using the app, it’s important to\n                  bear in mind that although we endeavor to ensure that it is\n                  updated and correct at all times, we do rely on third parties\n                  to provide information to us so that we can make it available\n                  to you. Sabina Shiwji accepts no liability for any\n                  loss, direct or indirect, you experience as a result of\n                  relying wholly on this functionality of the app.\n                </p> <p>\n                  At some point, we may wish to update the app. The app is\n                  currently available on Android &amp; iOS – the requirements for the \n                  both systems(and for any additional systems we\n                  decide to extend the availability of the app to) may change,\n                  and you’ll need to download the updates if you want to keep\n                  using the app. Sabina Shiwji does not promise that it\n                  will always update the app so that it is relevant to you\n                  and/or works with the Android &amp; iOS version that you have\n                  installed on your device. However, you promise to always\n                  accept updates to the application when offered to you, We may\n                  also wish to stop providing the app, and may terminate use of\n                  it at any time without giving notice of termination to you.\n                  Unless we tell you otherwise, upon any termination, (a) the\n                  rights and licenses granted to you in these terms will end;\n                  (b) you must stop using the app, and (if needed) delete it\n                  from your device.\n                </p> <p><strong>Changes to This Terms and Conditions</strong></p> <p>\n                  I may update our Terms and Conditions\n                  from time to time. Thus, you are advised to review this page\n                  periodically for any changes. I will\n                  notify you of any changes by posting the new Terms and\n                  Conditions on this page.\n                </p> <p>\n                  These terms and conditions are effective as of 2021-12-30\n                </p> <p><strong>Contact Us</strong></p> <p>\n                  If you have any questions or suggestions about my\n                  Terms and Conditions, do not hesitate to contact me\n                  at shiwji.sabina@gmail.com.\n                </p> <p>This Terms and Conditions page was generated by <a href=\"https://app-privacy-policy-generator.nisrulz.com/\" target=\"_blank\" rel=\"noopener noreferrer\">App Privacy Policy Generator</a></p>\n    </body>\n    </html>\n      ',
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
