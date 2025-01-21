import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.manropeTextTheme(),
      ),
      home: AddOrderPage(),
    );
  }
}

class AddOrderPage extends StatefulWidget {
  @override
  _AddOrderPageState createState() => _AddOrderPageState();
}

class _AddOrderPageState extends State<AddOrderPage> {
  final formKey = GlobalKey<FormState>();

  // State fields for DropDown widget
  String? dropDownValue1;
  String? dropDownValue2;
  String? dropDownValue3;

  // State fields for Date of Birth widgets
  final dateOfBirthFocusNode1 = FocusNode();
  final dateOfBirthTextController1 = TextEditingController();
  final dateOfBirthMask1 = MaskTextInputFormatter(mask: '##/##/####');

  final dateOfBirthFocusNode2 = FocusNode();
  final dateOfBirthTextController2 = TextEditingController();
  final dateOfBirthMask2 = MaskTextInputFormatter(mask: '##/##/####');

  String? _dateOfBirthTextController1Validator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth';
    }
    return null;
  }

  @override
  void dispose() {
    dateOfBirthFocusNode1.dispose();
    dateOfBirthTextController1.dispose();
    dateOfBirthFocusNode2.dispose();
    dateOfBirthTextController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Order')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: dateOfBirthTextController1,
                focusNode: dateOfBirthFocusNode1,
                decoration: InputDecoration(
                  labelText: 'Date of Birth 1',
                  labelStyle: TextStyle(fontFamily: 'Manrope'),
                  hintText: 'DD/MM/YYYY',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: dateOfBirthFocusNode1.hasFocus
                      ? Colors.blue[50]
                      : Colors.grey[200],
                  contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                ),
                inputFormatters: [dateOfBirthMask1],
                validator: _dateOfBirthTextController1Validator,
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: dateOfBirthTextController2,
                focusNode: dateOfBirthFocusNode2,
                decoration: InputDecoration(
                  labelText: 'Date of Birth 2',
                  labelStyle: TextStyle(fontFamily: 'Manrope'),
                  hintText: 'DD/MM/YYYY',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: dateOfBirthFocusNode2.hasFocus
                      ? Colors.blue[50]
                      : Colors.grey[200],
                  contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                ),
                inputFormatters: [dateOfBirthMask2],
                validator: _dateOfBirthTextController1Validator,
              ),
              SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: dropDownValue1,
                decoration: InputDecoration(
                  labelText: 'Dropdown 1',
                  labelStyle: TextStyle(fontFamily: 'Manrope'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: ['Option 1', 'Option 2', 'Option 3']
                    .map((e) => DropdownMenuItem<String>(
                  value: e,
                  child: Text(e),
                ))
                    .toList(),
                onChanged: (val) => setState(() => dropDownValue1 = val),
                validator: (val) => val == null ? 'Please select an option' : null,
              ),
              SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: dropDownValue2,
                decoration: InputDecoration(
                  labelText: 'Dropdown 2',
                  labelStyle: TextStyle(fontFamily: 'Manrope'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: ['Option 1', 'Option 2', 'Option 3']
                    .map((e) => DropdownMenuItem<String>(
                  value: e,
                  child: Text(e),
                ))
                    .toList(),
                onChanged: (val) => setState(() => dropDownValue2 = val),
                validator: (val) => val == null ? 'Please select an option' : null,
              ),
              SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: dropDownValue3,
                decoration: InputDecoration(
                  labelText: 'Dropdown 3',
                  labelStyle: TextStyle(fontFamily: 'Manrope'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: ['Status 1', 'Status 2', 'Status 3']
                    .map((e) => DropdownMenuItem<String>(
                  value: e,
                  child: Text(e),
                ))
                    .toList(),
                onChanged: (val) => setState(() => dropDownValue3 = val),
                validator: (val) => val == null ? 'Please select an option' : null,
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState?.validate() ?? false) {
                    // Handle form submission
                  }
                },
                child: Text('Place Order'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 48), backgroundColor: Colors.blue,
                  textStyle: TextStyle(fontFamily: 'Manrope', color: Colors.white),
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
