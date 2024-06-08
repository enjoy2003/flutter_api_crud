import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _UsersPageState();
  }
}

class _UsersPageState extends State<UsersPage> {
  List<dynamic> _users = [];

  @override
  void initState() {
    super.initState();
    _fetchUsers();
  }

  Future<void> _fetchUsers() async {
    final response = await http
        .get(Uri.parse('https://5913-184-22-228-38.ngrok-free.app/data'));
    setState(() {
      _users = json.decode(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pijitra 6505462'),
        ),
        body: ListView.builder(
          itemCount: _users.length,
          itemBuilder: (context, index) {
            final user = _users[index];
            return ListTile(
              leading: SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Image.network(user['avatar']),
              ),
              title: Text(user['fname']),
              subtitle: Text(
                user['detail'],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            );
          },
        ));
  }
}
