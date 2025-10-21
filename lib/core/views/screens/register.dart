import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

import '../components/app_dropdownformfield.dart';
import '../components/app_textformfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterScreen> {
  var _image;
  String? selectedGender;
  DateTime? selectedDate;
  DateTime? selectedTime;
  DateTime? selectedDateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register"), leading: Icon(Icons.arrow_back)),
      body: SingleChildScrollView(
        // padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),

            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                backgroundImage: _image != null ? FileImage(_image!) : null,
                child: _image == null
                    ? const Icon(Icons.camera_alt, size: 40, color: Colors.grey)
                    : null,
              ),
            ),
            Row(
              children: [
                Expanded(child: AppTextformfield(label: 'Name')),
                Expanded(child: AppTextformfield(label: 'Surname')),
              ],
            ),
            AppTextformfield(label: 'Email'),
            AppTextformfield(
              label: 'Password',
              isPassword: true,
              icon: Icon(Icons.visibility_off),
            ),
            Row(
              children: [
                Container(
                  child: AppDropdownformfield(
                    label: "Code",
                    items: ["+967", "+966", "+968", "+971", "+20"],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(child: AppTextformfield(label: "Phone")),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),

                color: Colors.grey[100],
              ),
              child: Row(
                children: [
                  const Text(
                    "Gender: ",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: RadioGroup(
                      groupValue: selectedGender,
                      onChanged: (x) {
                        selectedGender = x;
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          Radio(value: "male"),
                          Text("Male"),
                          Radio(value: "female"),
                          SizedBox(height: 20),
                          Text("Female"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ),
            DateTimeField(
              decoration: InputDecoration(
                labelText: 'Select Birthdate',
                filled: true,
                fillColor: Colors.grey[100],
              ),
              value: selectedDate,
              lastDate: DateTime.now(),
              mode: DateTimeFieldPickerMode.date,
              initialPickerDateTime: DateTime.now(),
              onChanged: (DateTime? value) {
                setState(() {
                  selectedDate = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
