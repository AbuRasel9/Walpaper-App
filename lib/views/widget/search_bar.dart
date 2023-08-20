import 'package:flutter/material.dart';

class search extends StatelessWidget {
  final String text;

  search({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black26)),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: text,
                    // hintStyle: TextStyle(color: Colors.black),

                ),
              ),
            ),
            InkWell(onTap: (){},child: const Icon(Icons.search,size: 30,color: Colors.black54,))
          ],
        ));
  }
}
