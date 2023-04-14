// import 'package:flutter/material.dart';
// import 'package:pro_flutter/contact_model.dart';
// class ListBuilder extends StatefulWidget {
//   const ListBuilder({Key? key}) : super(key: key);
//
//   @override
//   State<ListBuilder> createState() => _ListBuilderState();
// }
//
// class _ListBuilderState extends State<ListBuilder> {
//   List<ContactModel> contacts = [
//     ContactModel("Zaman", "7888241546", false),
//     ContactModel("madna khurde", "7888241546", false),
//     ContactModel("radhadas   sdba", "7888241546", false),
//     ContactModel("Zaman", "7888241546", false),
//     ContactModel("Zaman", "7888241546", false),
//   ];
//
//   List<ContactModel> selectedContacts = [];
//   @override
//   Widget build(BuildContext context) {
//     return  ListView.builder(
//       itemCount: contacts.length,
//       itemBuilder: (context, index) {
//         return ContactItem(contacts[index].name, contacts[index].phoneNumber,
//             contacts[index].isSelected, index,contacts[index].imgUrl);
//       },
//     );
//   }
//   Widget ContactItem(
//       String name, String phoneNumber, bool isSelected, int index, String imgUrl) {
//     return ListTile(
//       leading: CircleAvatar(
//         child: Image.asset("assets/notify.png"),
//       ),
//       title: Text(
//         name,
//         style: TextStyle(
//           color: Colors.black,
//         ),
//       ),
//       subtitle: Text(phoneNumber),
//       trailing: isSelected
//           ? Icon(Icons.check_circle, color: Colors.green)
//           : Icon(
//         Icons.check_circle_outline,
//         color: Colors.grey,
//       ),
//       onTap: () {
//         setState(() {
//           contacts[index].isSelected = ! contacts[index].isSelected;
//           if(contacts[index].isSelected ==true ){
//             selectedContacts.add(ContactModel(name, phoneNumber,true,imgUrl));
//           }else if (contacts[index].isSelected==false){
//             selectedContacts.removeWhere((element) => element.name == contacts[index].name);
//           }
//         });
//       },
//     );
//   }
// }
