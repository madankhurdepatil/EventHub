// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pro_flutter/contact_model.dart';
import 'package:pro_flutter/widget/list_builder.dart';

class InviteFriendsv extends StatefulWidget {
  const InviteFriendsv({Key? key}) : super(key: key);

  @override
  State<InviteFriendsv> createState() => _InviteFriendsvState();
}

class _InviteFriendsvState extends State<InviteFriendsv> {
  // bool isChecked = false;
  // List items = [
  //   { "image":"assets/notify.png","name": "Alex Lee      ","follower":"2K"},
  //   { "image":"assets/notify.png","name": "Micheal Ul-asi","follower":"56"},
  //   { "image":"assets/notify.png","name": "Cristofer     ","follower":"300"},
  //   { "image":"assets/notify.png","name": "David  Silbia   ","follower":"5K"},
  //   { "image":"assets/notify.png","name": "Roman Kutepov   ","follower":"402"},
  //   { "image":"assets/notify.png","name": "Cristofer Nolan ","follower":"402"},
  //   { "image":"assets/notify.png","name": "Ashfak Sayem",  "follower":"402"},
  // ];
  // List<ContactModel> contacts = [
  //   ContactModel("Zaman", "7888241546", false),
  //   ContactModel("madna khurde", "7888241546", false),
  //   ContactModel("radhadas   sdba", "7888241546", false),
  //   ContactModel("Zaman", "7888241546", false),
  //   ContactModel("Zaman", "7888241546", false),
  //   ContactModel("Zaman", "7888241546", false),
  //   ContactModel("madna khurde", "7888241546", false),
  //   ContactModel("radhadas   sdba", "7888241546", false),
  //   ContactModel("Zaman", "7888241546", false),
  //   ContactModel("Zaman", "7888241546", false),
  //   ContactModel("Zaman", "7888241546", false),
  //   ContactModel("madna khurde", "7888241546", false),
  //   ContactModel("radhadas   sdba", "7888241546", false),
  //   ContactModel("Zaman", "7888241546", false),
  //   ContactModel("Zaman", "7888241546", false),
  // ];

  List<ContactModel> selectedContacts = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: SizedBox(
        height: 750,
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(16)),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Invite Friend",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    suffixIcon:
                        Icon(Icons.search_rounded, color: Color(0xFF5669FF)),
                    contentPadding: EdgeInsets.all(4.0),
                    hintText: "      Search",
                    hintStyle: TextStyle(fontWeight: FontWeight.w100)),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget ContactItem(
      String name, String phoneNumber, bool isSelected, int index) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.asset("assets/notify.png"),
      ),
      title: Text(
        name,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      subtitle: Text(phoneNumber),
      trailing: isSelected
          ? Icon(Icons.check_circle, color: Colors.green)
          : Icon(
        Icons.check_circle_outline,
        color: Colors.grey,
      ),
      onTap: () {
        // setState(() {
        //   contacts[index].isSelected = ! contacts[index].isSelected;
        //   if(contacts[index].isSelected ==true ){
        //     selectedContacts.add(ContactModel(name, phoneNumber, true));
        //   }else if (contacts[index].isSelected==false){
        //     selectedContacts.removeWhere((element) => element.name == contacts[index].name);
        //   }
        // });
      },
    );
  }
}
