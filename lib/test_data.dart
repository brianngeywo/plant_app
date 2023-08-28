import 'package:flutter/material.dart';

class TreeModel {
  String name;
  String scientificName;
  TreeModel({required this.name, required this.scientificName});
}

List<TreeModel> treesTypes = [
  TreeModel(name: "Acacia Tree", scientificName: "Acacia spp."),
  TreeModel(name: "Baobab Tree", scientificName: "Adansonia digitata"),
  TreeModel(name: "Mukau Tree", scientificName: "Dalbergia melanoxylon"),
  TreeModel(
      name: "African Olive", scientificName: "Olea europaea subsp. africana"),
  TreeModel(name: "Fever Tree", scientificName: "Vachellia xanthophloea"),
  TreeModel(
      name: "East African Sandalwood", scientificName: "Osyris lanceolata"),
  TreeModel(name: "Camphor Tree", scientificName: "Cinnamomum camphora"),
  TreeModel(name: "Cedar Tree", scientificName: "Juniperus procera"),
  TreeModel(name: "Yellowwood", scientificName: "Podocarpus latifolius"),
  TreeModel(name: "African Fig Tree", scientificName: "Ficus thonningii"),
  TreeModel(name: "Ironwood Tree", scientificName: "Olea capensis"),
  TreeModel(name: "Cape Chestnut", scientificName: "Calodendrum capense"),
  TreeModel(name: "Kenyan Cordia", scientificName: "Cordia africana"),
  TreeModel(name: "African Tulip Tree", scientificName: "Spathodea campanulata"),
  TreeModel(name: "Mvule Tree", scientificName: "Milicia excelsa"),
];

List<String> treeImages = [
  "assets/images/palm-tree-house-plant.png",
  "assets/images/monstera-deliciosa-plant-2.png",
  "assets/images/fiddle-leaf-fig-plant.png",
];

List<IconData> iconList = [
  Icons.home,
  Icons.dashboard,
  Icons.settings,
  Icons.person,
];

List<String> events = [
  "Youth2Farm",
  "Climate Action",
  "Bee Keeping",
];