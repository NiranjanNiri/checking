  import 'dart:io';
  import 'package:flutter/material.dart';
  import 'package:image_picker/image_picker.dart';

  class ImagePickerScreen extends StatefulWidget {
    @override
    _ImagePickerScreenState createState() => _ImagePickerScreenState();
  }

  class _ImagePickerScreenState extends State<ImagePickerScreen> {
    File? _image; // Variable to store the selected image

    final ImagePicker _picker = ImagePicker(); // Initialize image picker

    Future<void> _pickImage(ImageSource source) async {
      final XFile? pickedFile = await _picker.pickImage(source: source); // Pick an image

      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path); // Store the picked image file
        });
      }
    }

    @override
    Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text('Image Picker Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display selected image
              _image != null
                  ? Image.file(
                _image!,
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              )
                  : Text('No image selected'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => _pickImage(ImageSource.camera), // Open camera
                    child: Text('Take Photo'),
                  ),
                  ElevatedButton(
                    onPressed: () => _pickImage(ImageSource.gallery), // Pick from gallery
                    child: Text('Pick from Gallery'),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
