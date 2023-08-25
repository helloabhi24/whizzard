import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class FilePickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Picker'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => openFilePicker(context),
              child: Text('Pick a File'),
            ),
          ],
        ),
      ),
    );
  }

  // Function to open the file picker
  Future<void> openFilePicker(BuildContext context) async {
    try {
      FilePickerResult? filePath =
          await FilePicker.platform.pickFiles(type: FileType.any);
      if (filePath != null) {
        // Handle the selected file path
        print("File path: ${filePath}");
      } else {
        // User canceled the file picker
        print("File picker canceled.");
      }
    } catch (e) {
      // Handle any error that occurs during the file picking process
      print("Error while picking the file: $e");
    }
  }
}
