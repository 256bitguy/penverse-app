
import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_quill/flutter_quill.dart';
// import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:path/path.dart' as path;

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  
  final FocusNode _focusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();
  final List<String> _selectedImages = [];

  @override
  void dispose() {
    _focusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _pickImages() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );

    if (result != null) {
      setState(() {
        _selectedImages.addAll(result.paths.where((path) => path != null).map((path) => path!));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B1E23),
        title: const Text('Create Post'),
        actions: [
          IconButton(
            icon: const Icon(Icons.output),
            tooltip: 'Print Delta JSON to log',
            onPressed: () {
              
            },
          ),
          TextButton(
            onPressed: () {
              // TODO: Implement post publishing
              Navigator.pop(context);
            },
            child: const Text('Publish'),
          ),
        ],
      ),
      body: const Column(
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF1B1E23),
          border: Border(
            top: BorderSide(
              color: Colors.white.withOpacity(0.1),
            ),
          ),
        ),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.image, color: Colors.white70),
              onPressed: _pickImages,
            ),
            IconButton(
              icon: const Icon(Icons.attach_file, color: Colors.white70),
              onPressed: () {
                // TODO: Implement file attachment
              },
            ),
            IconButton(
              icon: const Icon(Icons.tag, color: Colors.white70),
              onPressed: () {
                // TODO: Implement tagging
              },
            ),
            const Spacer(),
            TextButton.icon(
              onPressed: () {
                // TODO: Implement draft saving
              },
              icon: const Icon(Icons.save),
              label: const Text('Save Draft'),
            ),
          ],
        ),
      ),
    );
  }
}