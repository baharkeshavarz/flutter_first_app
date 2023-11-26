import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/toolbar_page.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
const NearbyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: const Toolbar(title: "Nearby"),
      body: FlutterMap(
        options: const MapOptions(
            initialCenter: LatLng(51.509364, -0.128928),
            initialZoom: 10,
        ), 
        children: [
            TileLayer(
               urlTemplate:'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
               userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: const LatLng(51.509364, -0.128928),
                  width: 120,
                  height: 70,
                  child: Column(
                   children: [
                         Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                          child: const Text("Bahar Keshavarz", style: TextStyle(color: Colors.black),),
                          ),
                          SvgPicture.asset("assets/svg/ic_location.svg",
                                       colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                                       ),
                     ],
                  ),
                ),
              ],
             ),
          ],
      ),
      );
  }
}