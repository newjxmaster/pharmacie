import 'package:flutter/material.dart';
import 'package:your_app_name/models/pharmacy.dart';
import 'package:your_app_name/widgets/map_placeholder.dart';
import 'package:your_app_name/widgets/pharmacy_list_item.dart';

class HomeScreen extends StatelessWidget {
  // This is a placeholder list of pharmacies. We'll replace this with actual data later.
  final List<Pharmacy> pharmacies = [
    Pharmacy(
        id: '1',
        name: 'Pharmacy 1',
        town: 'Town 1',
        latitude: 0,
        longitude: 0,
        contact: '1234567890'),
    Pharmacy(
        id: '2',
        name: 'Pharmacy 2',
        town: 'Town 2',
        latitude: 0,
        longitude: 0,
        contact: '1234567890'),
    // Add more pharmacies here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharmacy Finder'),
      ),
      body: Column(
        children: [
          Placeholder(
            // Placeholder for the ad space
            fallbackHeight: 100,
            color: Colors.green,
          ),
          Expanded(
            flex: 3,
            child: MapPlaceholder(),
          ),
          Expanded(
            flex: 2,
            child: ListView(
              children: pharmacies
                  .map((pharmacy) => PharmacyListItem(pharmacy: pharmacy))
                  .toList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FAB pressed');
          // TODO: Implement order placement
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
