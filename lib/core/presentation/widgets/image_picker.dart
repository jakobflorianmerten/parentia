import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';

class ImagePickerWidget extends StatefulWidget {
  final void Function(File)? onImagePicked; // <-- Callback hinzufügen

  const ImagePickerWidget({super.key, this.onImagePicked});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final XFile? picked = await _picker.pickImage(
      source: source,
    );
    if (picked != null) {
      setState(() {
        _image = File(picked.path);
      });
      if (widget.onImagePicked != null) {
        widget.onImagePicked!(_image!);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomClickedElement(
      onPressed: () => _pickImage(ImageSource.gallery),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: _image == null
            ? Center(
                child: Icon(
                  Icons.add,
                  size: 30,
                ),
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.file(
                  _image!,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}
