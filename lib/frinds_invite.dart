// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pro_flutter/contact_model.dart';

class FriendsInvite extends StatefulWidget {
  const FriendsInvite({Key? key}) : super(key: key);

  @override
  State<FriendsInvite> createState() => _FriendsInviteState();
}

class _FriendsInviteState extends State<FriendsInvite> {
  List<ContactModel> contacts = [
    ContactModel("Alex Lee", "2k Follower", false, "assets/notify.png"),
    ContactModel("Micheal Ul-asi", "56 Follower", false, "assets/notify.png"),
    ContactModel("Christofer", "300 Follower", false, "assets/notify.png"),
    ContactModel("David Silbia", "5K Follower", false, "assets/notify.png"),
    ContactModel("Ashfak sayem", "402 Follower", false, "assets/notify.png"),
    ContactModel(
        "Rocks Velkeinten", "893 Follower", false, "assets/notify.png"),
    ContactModel("Roman Kutepov", "225 Follower", false, "assets/notify.png"),
    ContactModel(
        "Christofer Nolan ", "322 Follower", false, "assets/notify.png"),
    ContactModel("John wike", "2K Follower", false, "assets/notify.png"),
    ContactModel("Jenifer Bolex", "2K Follower", false, "assets/notify.png"),
    ContactModel("Roman Kutepov", "2K Follower", false, "assets/notify.png"),
    ContactModel(
        "Chrostofer Nolan ", "2K Follower", false, "assets/notify.png"),
    ContactModel("John wike", "2K Follower", false, "assets/notify.png"),
    ContactModel("Jenifer Bolex", "2K Follower", false, "assets/notify.png"),
  ];

  List<ContactModel> selectedContacts = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 5,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(16)),
            ),
            SizedBox(height: 20),
            Text(
              "Invite Friend",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
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
            SizedBox(
              height: 700,
              child: ListView.builder(
                itemCount: contacts.length,
                physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return contactItem(
                      contacts[index].name,
                      contacts[index].phoneNumber,
                      contacts[index].isSelected,
                      contacts[index].imgpath,
                      index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget contactItem(String name, String phoneNumber, bool isSelected,
      String imgUrl, int index) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.asset(imgUrl),
      ),
      title: Text(
        name,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      subtitle: Text(phoneNumber),
      trailing: isSelected
          ? Icon(Icons.check_circle, color: Color(0xFF5669FF))
          : Icon(
              Icons.check_circle,
              color: Colors.grey.shade400,
            ),
      onTap: () {
        setState(() {
          contacts[index].isSelected = !contacts[index].isSelected;
          if (contacts[index].isSelected == true) {
            selectedContacts.add(ContactModel(name, phoneNumber, true, imgUrl));
          } else if (contacts[index].isSelected == false) {
            selectedContacts
                .removeWhere((element) => element.name == contacts[index].name);
          }
        });
      },
    );
  }
}
