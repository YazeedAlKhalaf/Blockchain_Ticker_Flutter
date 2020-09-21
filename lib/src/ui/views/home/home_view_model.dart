import 'package:blockchain_ticker/src/app/generated/locator/locator.dart';
import 'package:blockchain_ticker/src/app/models/blockchain_ticker.model.dart';
import 'package:blockchain_ticker/src/app/services/api_service.dart';
import 'package:blockchain_ticker/src/ui/global/custom_base_view_model.dart';

class HomeViewModel extends CustomBaseViewModel {
  final ApiService _apiService = locator<ApiService>();

  BlockchainTicker _blockchainTicker;
  BlockchainTicker get blockchainTicker => _blockchainTicker;
  void setBlockchainTicker(BlockchainTicker newValue) {
    _blockchainTicker = newValue;
    notifyListeners();
  }

  Future initialize() async {
    await getTickerData();
  }

  Future getTickerData() async {
    // setBusy(true);
    BlockchainTicker blockchainTicker = await _apiService.getTickerData();
    setBlockchainTicker(blockchainTicker);
    // setBusy(false);
    return blockchainTicker;
  }
}
