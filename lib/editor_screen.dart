import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class EditorScreen extends StatelessWidget {
  EditorScreen({super.key});

  final QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editor'),
      ),
      body: Column(
        children: [
          QuillSimpleToolbar(
            controller: _controller,
            configurations: const QuillSimpleToolbarConfigurations(),
          ),
          Expanded(
            child: QuillEditor.basic(
              controller: _controller,
              configurations: const QuillEditorConfigurations(),
            ),
          ),
        ],
      ),
    );
  }
}
