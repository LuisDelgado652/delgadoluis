import 'package:delgadoluis/model/animals.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class BodyScreen extends StatelessWidget {
  final Animal animal;
  const BodyScreen({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.type),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Id: ${animal.id}',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text('Tipo: ${animal.type}',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Center(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: const Divider(color: Colors.blue))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExtendedImage.network(
                animal.image,
                fit: BoxFit.fitHeight,
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.25,
              ),
            ),
            Center(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: const Divider(color: Colors.blue))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Edad: ${animal.age}',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Aceptar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
