import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  String filePath;
  AddPage({super.key, required this.filePath});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String filePath = '';

  List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filePath = widget.filePath;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('글쓰기'),
        centerTitle: true,
      ),
      body: Form(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: controllers[0],
              maxLength: 500,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('title'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: TextFormField(
                controller: controllers[1],
                maxLength: 500,
                maxLines: 10,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('contents'),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                var title = controllers[0].text;
                print(title);
                Navigator.pop(context, 'OK');
              },
              child: const Text('저장'),
            ),
          ],
        ),
      )),
    );
  }
}
