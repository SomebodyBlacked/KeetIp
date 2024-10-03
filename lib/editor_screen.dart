// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class EditorScreen extends StatelessWidget {
  EditorScreen({super.key});

  final QuillController _controller = QuillController.basic();

  Future<void> _saveDocument() async {
    final json = _controller.document.toDelta().toJson();
    print(json);
    print("aweeawew");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editor'),
        actions: [
          IconButton(
            onPressed: () {
              _saveDocument();
            },
            icon: const Icon(Icons.save),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: QuillEditor.basic(
                controller: _controller,
                configurations: const QuillEditorConfigurations(),
              ),
            ),
            QuillSimpleToolbar(
              controller: _controller,
              configurations: const QuillSimpleToolbarConfigurations(
                // true
                showBoldButton: true,
                showItalicButton: true,
                showUnderLineButton: true,
                showUndo: true,
                showRedo: true,

                // false
                showSearchButton: false,
                showBackgroundColorButton: false,
                showAlignmentButtons: false,
                showLeftAlignment: false,
                showRightAlignment: false,
                showCenterAlignment: false,
                showHeaderStyle: false,
                showFontFamily: false,
                showFontSize: false,
                showCodeBlock: false,
                showClearFormat: false,
                showClipboardCopy: false,
                showClipboardCut: false,
                showClipboardPaste: false,
                showColorButton: false,
                showDirection: false,
                showDividers: false,
                showIndent: false,
                showInlineCode: false,
                showJustifyAlignment: false,
                showLineHeightButton: false,
                showLink: false,
                showListBullets: false,
                showListCheck: false,
                showListNumbers: false,
                showQuote: false,
                showSmallButton: false,
                showStrikeThrough: false,
                showSubscript: false,
                showSuperscript: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
