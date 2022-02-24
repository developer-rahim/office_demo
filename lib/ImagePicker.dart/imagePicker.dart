import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePick extends StatefulWidget {
  const ImagePick({Key? key}) : super(key: key);

  @override
  _ImagePickState createState() => _ImagePickState();
}

class _ImagePickState extends State<ImagePick> {
  File? _image;

  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(176, 197, 233, 1),
        appBar: AppBar(
            title: const Text(
              'Image Upload',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(35),
            child: Column(children: [
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
                  child: const Text(
                    'Select An Image',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: _openImagePicker,
                ),
              ),
              const SizedBox(height: 35),
              Container(
                alignment: Alignment.center,
                width: 200,
                height: 300,
                color: Colors.grey[300],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _image == null
                        ? Icon(
                            Icons.upload_file,
                            size: 50,
                          )
                        : Container(),
                    _image != null
                        ? Image.file(_image!, fit: BoxFit.cover)
                        : const Text('Please select an image'),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/dashborh');
                },
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(35)),
                  child: Container(
                    // height: 135,
                    padding: EdgeInsets.all(15),

                    // margin: EdgeInsets.only(bottom: 10),
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 226, 221, 221),
                        borderRadius: BorderRadius.circular(35)),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Upload',
                          style: TextStyle(fontSize: 18, fontFamily: 'rrr'),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
