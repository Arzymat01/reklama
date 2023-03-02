import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:jarnama/components/image_container.dart';

import '../../components/cusstomTextfield.dart';
import '../../services/date_time.dart';
import '../../services/image_picer_service.dart';

// ignore: must_be_immutable
class AppProductPage extends StatelessWidget {
  AppProductPage({Key? key}) : super(key: key);
  final title = TextEditingController();
  final desc = TextEditingController();
  final date = TextEditingController();
  final phone = TextEditingController();
  final userName = TextEditingController();
  final adress = TextEditingController();
  final price = TextEditingController();
  List<XFile> images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppProductPage'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          CustumTextField(
            controller: title,
            hinText: 'Title',
          ),
          const SizedBox(height: 12),
          CustumTextField(
            controller: desc,
            hinText: 'Description',
            maxLines: 4,
          ),
          const SizedBox(height: 12),
          ImageContainer(
            images: images,
            onPicked: (value) => images = value,
            onDelete: (xfile) => images.remove(xfile),
          ),
          const SizedBox(height: 12),
          CustumTextField(
            controller: date,
            hinText: 'Datetime',
            focusNode: FocusNode(),
            onTap: () async {
              await DateTimeServices.showDateTimePicer(
                context,
                (value) => date.text = DateFormat("d MMM, y").format(value),
              );
            },
          ),
          const SizedBox(height: 12),
          CustumTextField(
            controller: phone,
            hinText: 'Phonenumber',
          ),
          const SizedBox(height: 12),
          CustumTextField(
            controller: userName,
            hinText: 'User Name',
          ),
          const SizedBox(height: 12),
          CustumTextField(
            controller: adress,
            hinText: 'Addres',
          ),
          const SizedBox(height: 12),
          CustumTextField(
            controller: price,
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

// ignore: must_be_immutable
