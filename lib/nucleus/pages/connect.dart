import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class connect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Map'),
      ),
      body: LiveMap(),
    );
  }
}

class LiveMap extends StatefulWidget {
  @override
  _LiveMapState createState() => _LiveMapState();
}

class _LiveMapState extends State<LiveMap> {
  late GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (controller) {
        _controller = controller;
      },
      initialCameraPosition: CameraPosition(
        target: LatLng(37.7749, -122.4194), // Initial map center
        zoom: 15.0,
      ),
    );
  }
}
