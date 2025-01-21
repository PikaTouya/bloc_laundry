import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Update Order',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Manrope',
      ),
      home: const UpdateOrderWidget(),
    );
  }
}

class UpdateOrderWidget extends StatefulWidget {
  const UpdateOrderWidget({Key? key}) : super(key: key);

  @override
  _UpdateOrderWidgetState createState() => _UpdateOrderWidgetState();
}

class _UpdateOrderWidgetState extends State<UpdateOrderWidget> {
  final _formKey = GlobalKey<FormState>();
  String? dropDownValue1;
  String? dropDownValue2;
  String? dropDownValue3;
  FocusNode? dateOfBirthFocusNode1;
  TextEditingController? dateOfBirthTextController1;
  final dateOfBirthMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateOfBirthTextController1Validator;
  FocusNode? dateOfBirthFocusNode2;
  TextEditingController? dateOfBirthTextController2;
  final dateOfBirthMask2 = MaskTextInputFormatter(mask: '##/##/####');

  @override
  void initState() {
    super.initState();
    dateOfBirthFocusNode1 = FocusNode();
    dateOfBirthTextController1 = TextEditingController();
    dateOfBirthFocusNode2 = FocusNode();
    dateOfBirthTextController2 = TextEditingController();
    dateOfBirthTextController1Validator = _dateOfBirthTextController1Validator;
  }

  @override
  void dispose() {
    dateOfBirthFocusNode1?.dispose();
    dateOfBirthTextController1?.dispose();
    dateOfBirthFocusNode2?.dispose();
    dateOfBirthTextController2?.dispose();
    super.dispose();
  }

  String? _dateOfBirthTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Order'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Date of Birth Input 1
              TextFormField(
                controller: dateOfBirthTextController1,
                focusNode: dateOfBirthFocusNode1,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Date of Birth',
                  labelStyle: TextStyle(fontFamily: 'Manrope', letterSpacing: 0.0),
                  hintStyle: TextStyle(fontFamily: 'Manrope', letterSpacing: 0.0),
                  errorStyle: TextStyle(fontFamily: 'Manrope', color: Colors.red, fontSize: 12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: dateOfBirthFocusNode1?.hasFocus ?? false
                      ? Colors.blue.withOpacity(0.1)
                      : Colors.grey.withOpacity(0.1),
                  contentPadding: const EdgeInsetsDirectional.fromSTEB(16, 20, 16, 20),
                ),
                validator: (val) => dateOfBirthTextController1Validator!(context, val),
                inputFormatters: [dateOfBirthMask1],
              ),
              const SizedBox(height: 12),

              // Date of Birth Input 2
              TextFormField(
                controller: dateOfBirthTextController2,
                focusNode: dateOfBirthFocusNode2,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Date of Birth',
                  labelStyle: TextStyle(fontFamily: 'Manrope', letterSpacing: 0.0),
                  hintStyle: TextStyle(fontFamily: 'Manrope', letterSpacing: 0.0),
                  errorStyle: TextStyle(fontFamily: 'Manrope', color: Colors.red, fontSize: 12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: dateOfBirthFocusNode2?.hasFocus ?? false
                      ? Colors.blue.withOpacity(0.1)
                      : Colors.grey.withOpacity(0.1),
                  contentPadding: const EdgeInsetsDirectional.fromSTEB(16, 20, 16, 20),
                ),
                inputFormatters: [dateOfBirthMask2],
              ),
              const SizedBox(height: 12),

              // Drop Down for Order Status
              DropdownButtonFormField<String>(
                value: dropDownValue3,
                decoration: InputDecoration(
                  labelText: 'Status',
                  labelStyle: TextStyle(fontFamily: 'Manrope'),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
                onChanged: (val) {
                  setState(() {
                    dropDownValue3 = val;
                  });
                },
                items: [
                  DropdownMenuItem(child: Text('Menunggu'), value: 'Menunggu'),
                  DropdownMenuItem(child: Text('Sedang diproses..'), value: 'Sedang diproses..'),
                  DropdownMenuItem(child: Text('Selesai'), value: 'Selesai'),
                  DropdownMenuItem(child: Text('Batal'), value: 'Batal'),
                ],
              ),
              const SizedBox(height: 12),

              // Update Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Handle form submission
                    print('Form Valid');
                    // Navigate to orders_admin page, for example:
                    // Navigator.pushNamed(context, '/orders_admin');
                  }
                },
                child: const Text('Update'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: TextStyle(fontFamily: 'Manrope', fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
