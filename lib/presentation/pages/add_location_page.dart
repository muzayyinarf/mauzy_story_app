import 'package:flutter/material.dart';

import 'package:mauzy_story_app/core.dart';
import 'package:geocoding/geocoding.dart' as geo;

class AddLocationPage extends StatefulWidget {
  const AddLocationPage({super.key});

  @override
  State<AddLocationPage> createState() => _AddLocationPageState();
}

class _AddLocationPageState extends State<AddLocationPage> {
  GoogleMapController? mapController;
  LatLng? saveCoordinate;
  final Set<Marker> markers = {};
  String? address;
  final dicodingOffice = const LatLng(-6.8957473, 107.6337669);
  MapType selectedMapType = MapType.normal;
  geo.Placemark? placemark;

  @override
  void initState() {
    super.initState();
    onMyLocationButtonPress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
        actions: [
          IconButton(
            onPressed: () async {
              if (saveCoordinate != null) {
                context.read<AddLocationBloc>().add(
                    AddLocationEvent.setLocation(saveCoordinate!.latitude,
                        saveCoordinate!.longitude, address));
                context.pop();
              }
            },
            icon: const Icon(Icons.save),
          ),
          const SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            (saveCoordinate == null)
                ? Container(
                    color: whiteColor,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: const Center(
                      child: SizedBox(
                        width: 40,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  )
                : GoogleMap(
                    mapType: selectedMapType,
                    initialCameraPosition: CameraPosition(
                      zoom: 18,
                      target: saveCoordinate!,
                    ),
                    onMapCreated: (controller) async {
                      onMyLocationButtonPress();

                      setState(() {
                        mapController = controller;
                      });
                    },
                    onLongPress: (LatLng latLng) {
                      saveCoordinate = latLng;
                      onLongPressGoogleMap(latLng);
                    },
                    markers: markers,
                    myLocationEnabled: true,
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    mapToolbarEnabled: false,
                  ),
            Positioned(
                bottom: 150,
                right: 16,
                child: Column(
                  children: [
                    FloatingActionButton.small(
                      heroTag: "zoom-in",
                      onPressed: () {
                        mapController?.animateCamera(
                          CameraUpdate.zoomIn(),
                        );
                      },
                      child: const Icon(Icons.add),
                    ),
                    FloatingActionButton.small(
                      heroTag: "zoom-out",
                      onPressed: () {
                        mapController?.animateCamera(
                          CameraUpdate.zoomOut(),
                        );
                      },
                      child: const Icon(Icons.remove),
                    ),
                  ],
                )),
            Positioned(
              top: 16,
              left: 16,
              child: FloatingActionButton.small(
                heroTag: "map-type",
                onPressed: null,
                child: PopupMenuButton<MapType>(
                  offset: const Offset(0, 54),
                  icon: const Icon(Icons.layers_outlined),
                  onSelected: (MapType item) {
                    setState(() {
                      selectedMapType = item;
                    });
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<MapType>>[
                    const PopupMenuItem<MapType>(
                      value: MapType.normal,
                      child: Text('Normal'),
                    ),
                    const PopupMenuItem<MapType>(
                      value: MapType.satellite,
                      child: Text('Satellite'),
                    ),
                    const PopupMenuItem<MapType>(
                      value: MapType.terrain,
                      child: Text('Terrain'),
                    ),
                    const PopupMenuItem<MapType>(
                      value: MapType.hybrid,
                      child: Text('Hybrid'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: FloatingActionButton(
                child: const Icon(Icons.my_location),
                onPressed: () async {
                  onMyLocationButtonPress();
                },
              ),
            ),
            if (placemark == null)
              const SizedBox()
            else
              Positioned(
                bottom: 16,
                right: 16,
                left: 16,
                child: PlacemarkWidget(
                  placemark: placemark!,
                ),
              ),
          ],
        ),
      ),
    );
  }

  void defineMarker(LatLng latLng, String street, String address) {
    final marker = Marker(
      markerId: const MarkerId("source"),
      position: latLng,
      infoWindow: InfoWindow(
        title: street,
        snippet: address,
      ),
    );
    setState(() {
      markers.clear();
      markers.add(marker);
    });
  }

  void onMyLocationButtonPress() async {
    final Location location = Location();
    late bool serviceEnabled;
    late PermissionStatus permissionGranted;
    late LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        debugPrint("Location services is not available");
        return;
      }
    }
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        debugPrint("Location permission is denied");
        return;
      }
    }
    locationData = await location.getLocation();

    final latLng = LatLng(locationData.latitude!, locationData.longitude!);
    final info =
        await geo.placemarkFromCoordinates(latLng.latitude, latLng.longitude);
    final place = info.first;
    final street = place.street!;
    final List<String> addressComponents = [];
    if (place.subLocality != "") addressComponents.add(place.subLocality!);
    if (place.locality != "") addressComponents.add(place.locality!);
    if (place.postalCode != "") addressComponents.add(place.postalCode!);
    if (place.country != "") addressComponents.add(place.country!);

    address = addressComponents.join(', ');
    setState(() {
      placemark = place;
    });
    saveCoordinate = latLng;
    defineMarker(latLng, street, address!);
    mapController?.animateCamera(
      CameraUpdate.newLatLng(latLng),
    );
  }

  void onLongPressGoogleMap(LatLng latLng) async {
    final info =
        await geo.placemarkFromCoordinates(latLng.latitude, latLng.longitude);
    final place = info.first;
    final street = place.street;
    final List<String> addressComponents = [];
    if (place.subLocality != "") addressComponents.add(place.subLocality!);
    if (place.locality != "") addressComponents.add(place.locality!);
    if (place.postalCode != "") addressComponents.add(place.postalCode!);
    if (place.country != "") addressComponents.add(place.country!);

    address = addressComponents.join(', ');
    setState(() {
      placemark = place;
    });

    defineMarker(latLng, street!, address!);
    mapController?.animateCamera(
      CameraUpdate.newLatLng(latLng),
    );
  }
}
