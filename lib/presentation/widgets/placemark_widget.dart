import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:mauzy_story_app/core.dart';

class PlacemarkWidget extends StatelessWidget {
  const PlacemarkWidget({super.key, required this.placemark});
  final geo.Placemark placemark;

  @override
  Widget build(BuildContext context) {
    final List<String> addressComponents = [];
    if (placemark.subLocality != "") {
      addressComponents.add(placemark.subLocality!);
    }
    if (placemark.locality != "") addressComponents.add(placemark.locality!);
    if (placemark.postalCode != "") {
      addressComponents.add(placemark.postalCode!);
    }
    if (placemark.country != "") addressComponents.add(placemark.country!);
    final address = addressComponents.join(', ');
    return Container(
      padding: const EdgeInsets.all(16),
      constraints: const BoxConstraints(maxWidth: 700),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 20,
            offset: Offset.zero,
            color: Colors.white.withOpacity(0.8),
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  placemark.street!,
                  style: blackTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  address,
                  style: blackTextStyle.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
