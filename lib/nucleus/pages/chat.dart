import 'package:flutter/material.dart';

class chat extends StatefulWidget {
  @override
  _MessagingScreenState createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<chat> {
  List<Message> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messaging'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index].text),
                  subtitle: Text(_messages[index].timestamp),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration:
                        InputDecoration(labelText: 'Type your message...'),
                    onSubmitted: (message) {
                      setState(() {
                        _messages.add(Message(
                            text: message,
                            timestamp: DateTime.now().toString()));
                      });
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Implement send message logic
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final String timestamp;

  Message({required this.text, required this.timestamp});
}
