import 'package:flutter/material.dart' show ChangeNotifier;
import 'package:aplikasi_absen/models/nft_model.dart';
import 'package:aplikasi_absen/services/nft_service.dart';

class NFTProvider extends ChangeNotifier {
  late NFTModel nftModel = NFTModel();
  final NFTService _NFTService = NFTService();

  tampilkanNFT() async {
    nftModel = await _NFTService.getNFT();
    // ignore: avoid_print
    print(nftModel.data!.length);
    notifyListeners();
  }

  NFTProvider() {
    tampilkanNFT();
  }
}
