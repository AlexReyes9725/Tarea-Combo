import 'package:flutter/material.dart';
import 'dart:math';
import '../models/contact.dart';

class ListContact extends StatelessWidget {
  final List<Contact> contacts;
  ListContact({super.key, required this.contacts});
  final List<String> items =
      List<String>.generate(10, (index) => 'Item $index');
  /*List<String> imagenes = [
        "https://www.nicepng.com/png/detail/608-6080578_png-file-svg-icono-de-persona-png.png",
        "https://www.nicepng.com/png/detail/608-6080578_png-file-svg-icono-de-persona-png.png",
        "https://www.nicepng.com/png/detail/608-6080578_png-file-svg-icono-de-persona-png.png",
        "https://www.nicepng.com/png/detail/608-6080578_png-file-svg-icono-de-persona-png.png"
      ];*/
  //final random = new Random();

//https://blog.logrocket.com/creating-listviews-in-flutter/
//https://material.io/components/cards#behavior
  @override
  Widget build(BuildContext context) {
    //print(contacts.length);
    //print(imagenes[random.nextInt(imagenes.length)]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas en Flutter'),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.black12,
              child: Icon(Icons.mobile_friendly, color: Colors.white),
            ),

            title: Text('${contacts[index].name} ${contacts[index].age}'),
            subtitle: Text('${contacts[index].email}'),
            //trailing: Icon(Icons.arrow_forward_ios, size: 16),
            trailing: const Icon(Icons.view_agenda, size: 16),
          );
        },
      ),
    );
  }
}
