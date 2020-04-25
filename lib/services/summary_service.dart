import 'network_helper.dart';

const String apiUrl = 'https://api.covid19api.com';

class SummaryService {
  var _countryData;
  Future getSummaryData() async {
    NetworkHelper network = NetworkHelper(url: '$apiUrl/summary');
    var summaryData = await network.getData();
    return summaryData;
  }

  Future getWorldTotal() async {
    NetworkHelper network = NetworkHelper(url: '$apiUrl/world/total');
    var summaryData = await network.getData();
    return summaryData;
  }

  Future getIndiaSummary() async {
    if (_countryData == null) {
      NetworkHelper network = NetworkHelper(url: '$apiUrl/summary');
      _countryData = await network.getData();
    }
    var countriesSummary = _countryData['Countries'];
    var indiaSummary =
        countriesSummary.where((i) => i['Country'] == 'India').toList();
    return indiaSummary[0];
  }
}
