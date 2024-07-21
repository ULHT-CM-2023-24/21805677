import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:projeto_flutter_21805677/Models/gira_listing.dart';
import 'package:projeto_flutter_21805677/Models/gira_marker.dart';
import 'package:projeto_flutter_21805677/Models/park.dart';
import 'package:projeto_flutter_21805677/Models/gira.dart';
import 'package:projeto_flutter_21805677/Models/park_listing.dart';
import 'package:projeto_flutter_21805677/Models/park_marker.dart';

abstract class IParksRepository{

  Future<List<Park>> getParks();
  Future<Park?> getPark(String parkId);

  Future<void> insertPark(Park park);
  Future<void> deleteParks();

  Future<List<ParkMarker>> getParkMarker();
  Future<List<ParkListing>> parkListing();

  Future<List<Gira>> getGiras();
  Future<Gira?> getGira(String giraId);

  Future<void> insertGira(Gira gira);
  Future<void> deleteGira();

  Future<List<GiraMarker>> getGiraMarker(String giraId);
  Future<List<GiraListing>> giraListing();

}