import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(24),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: const Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: const Text(
              "build your carrer with me  marwn saif",
              style: TextStyle(
                color: Color.fromARGB(255, 69, 69, 69),
                fontSize: 18,
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 26,
                )),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "May , 15/5",
            style: TextStyle(color: Colors.grey[700]),
          )
        ],
      ),
    );
  }
}
