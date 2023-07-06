import 'package:flutter/material.dart';
import 'package:your_app_name/models/pharmacy.dart';

class PharmacyListItem extends StatelessWidget {
  final Pharmacy pharmacy;

  PharmacyListItem({required this.pharmacy});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.local_pharmacy),
      title: Text(pharmacy.name),
      subtitle: Text(pharmacy.contact),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        // TODO: Implement navigation to pharmacy details screen
      },
    );
  }
}
