import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/cusstomTextfield.dart';

class AppProductPage extends StatelessWidget {
  const AppProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _title = TextEditingController();
    final _desc = TextEditingController();
    final _date = TextEditingController();
    final _phone = TextEditingController();
    final _user_name = TextEditingController();
    final _adress = TextEditingController();
    final _price = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppProductPage'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          CustumTextField(
            controller: _title,
            hinText: 'Title',
          ),
          const SizedBox(height: 12),
          CustumTextField(
            controller: _desc,
            hinText: 'Description',
          ),
          const SizedBox(height: 12),
          CustumTextField(
            controller: _date,
            hinText: 'Datetime',
            onTap: () async {
              showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext builder) {
                    return Container(
                      height:
                          MediaQuery.of(context).copyWith().size.height * 0.25,
                      color: Colors.white,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        onDateTimeChanged: (value) {
                          _date.text = value.toString();
                        },
                        initialDateTime: DateTime.now(),
                        minimumYear: 2000,
                        maximumYear: 3000,
                      ),
                    );
                  });
            },
          ),
          const SizedBox(height: 12),
          CustumTextField(
            controller: _phone,
            hinText: 'Phonenumber',
          ),
          const SizedBox(height: 12),
          CustumTextField(
            controller: _user_name,
            hinText: 'User Name',
          ),
          const SizedBox(height: 12),
          CustumTextField(
            controller: _adress,
            hinText: 'Addres',
          ),
          const SizedBox(height: 12),
          CustumTextField(
            controller: _price,
            hinText: 'Price',
          ),
          const SizedBox(height: 12),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.publish),
            label: const Text('Add to firestore'),
          )
        ],
      ),
    );
  }
}
