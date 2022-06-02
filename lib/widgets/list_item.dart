import 'package:delgadoluis/model/animals.dart';
import 'package:delgadoluis/screens/body_screen.dart';
import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class ListItem extends StatefulWidget {
  Animal animal;
  ListItem({required this.animal, Key? key}) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BodyScreen(animal: widget.animal),
          ),
        );
      },
      child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          //color: leido ? Colors.white : Colors.blue,
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExtendedImage.network(
                widget.animal.image,
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Id: ${widget.animal.id}',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text('Tipo: ${widget.animal.type}',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text('Edad: ${widget.animal.age}',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Center(
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.65,
                              child: const Divider(color: Colors.blue))),
                    ),
                  ]),
            ),
          ])),
    );
  }
}
