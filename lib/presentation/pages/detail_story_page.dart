import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';
import 'package:geocoding/geocoding.dart' as geo;

class DetailStoryPage extends StatefulWidget {
  final String id;
  const DetailStoryPage({super.key, required this.id});

  @override
  State<DetailStoryPage> createState() => _DetailStoryPageState();
}

class _DetailStoryPageState extends State<DetailStoryPage> {
  late TextEditingController locationController;
  String? dataLocation;

  @override
  void initState() {
    super.initState();
    context.read<DetailStoryBloc>().add(DetailStoryEvent.getDetail(widget.id));
    locationController = TextEditingController();
  }

  @override
  void dispose() {
    locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.detailStory,
          style: blackTextStyle.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
      body: BlocBuilder<DetailStoryBloc, DetailStoryState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => _buildLoading(),
            error: (data) => _buildMessage(data.message),
            loading: (_) => _buildLoading(),
            loaded: (value) => _buildDetail(value.model),
          );
        },
      ),
    );
  }

  Widget _buildDetail(DetailStoryResponseModel model) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImage(context, model.story.photoUrl),
          _buildStoryDetails(model.story),
          if (model.story.lat != null)
            _buildLocationWidget(model.story.lat, model.story.lon),
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context, String photoUrl) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: FadeInImage(
        fit: BoxFit.cover,
        placeholder: const AssetImage(ImagePaths.loading),
        image: NetworkImage(photoUrl),
        imageErrorBuilder: (context, error, stackTrace) {
          return Image.asset(ImagePaths.placeholder);
        },
      ),
    );
  }

  Widget _buildStoryDetails(Story story) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: story.name,
              style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: ' ${story.description}',
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          Text(
            story.createdAt.toRelativeTime(context),
            style: greyTextStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLocationWidget(double lat, double lon) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.postedAt,
            style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          _buildMapContainer(lat, lon),
        ],
      ),
    );
  }

  Widget _buildMapContainer(double lat, double lon) {
    return FutureBuilder(
        future: getAddress(lat, lon),
        builder: (context, snapshot) {
          locationController.text = snapshot.data ?? '';
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }
          return Column(
            children: [
              Container(
                height: 200,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(top: 6),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                    zoom: 18,
                    target: LatLng(lat, lon),
                  ),
                  markers: {
                    Marker(
                        markerId: const MarkerId("source"),
                        position: LatLng(lat, lon),
                        infoWindow: InfoWindow(
                          title: 'Lokasi',
                          snippet: dataLocation,
                        ))
                  },
                  myLocationEnabled: false,
                  myLocationButtonEnabled: false,
                  zoomControlsEnabled: false,
                  mapToolbarEnabled: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextFieldWidget(
                  enabled: false,
                  controller: locationController,
                  maxLines: (locationController.text.length > 40) ? 2 : 1,
                ),
              )
            ],
          );
        });
  }

  Future<String> getAddress(double lat, double lon) async {
    final latLng = LatLng(lat, lon);
    final info =
        await geo.placemarkFromCoordinates(latLng.latitude, latLng.longitude);
    final place = info.first;
    final List<String> addressComponents = [];
    if (place.subLocality != "") addressComponents.add(place.subLocality!);
    if (place.locality != "") addressComponents.add(place.locality!);
    if (place.postalCode != "") addressComponents.add(place.postalCode!);
    if (place.country != "") addressComponents.add(place.country!);
    final address = addressComponents.join(', ');

    dataLocation = address;

    return address;
  }

  Widget _buildMessage(String message) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          message,
          style: greyTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
