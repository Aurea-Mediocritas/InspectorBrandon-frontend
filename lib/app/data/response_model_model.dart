class ResponseModel {
  bool? success;
  BrandRating? brandRating;

  ResponseModel({this.success, this.brandRating});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    brandRating = json['brand_rating'] != null
        ? BrandRating?.fromJson(json['brand_rating'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['success'] = success;
    if (brandRating != null) {
      data['brand_rating'] = brandRating?.toJson();
    }
    return data;
  }
}

class BrandRating {
  String? companyName;
  int? accountNumber;
  String? country;
  int? reportingYear;
  String? tickerSymbol;
  String? iSIN;
  double? disclosureScore;
  String? performanceBand;
  String? responseStatus;
  double? scope1MetricTonnesCO2e;
  double? scope2MetricTonnesCO2e;
  String? countryLocation;

  BrandRating(
      {this.companyName,
      this.accountNumber,
      this.country,
      this.reportingYear,
      this.tickerSymbol,
      this.iSIN,
      this.disclosureScore,
      this.performanceBand,
      this.responseStatus,
      this.scope1MetricTonnesCO2e,
      this.scope2MetricTonnesCO2e,
      this.countryLocation});

  BrandRating.fromJson(Map<String, dynamic> json) {
    companyName = json['Company_Name_'];
    accountNumber = json['Account_Number'];
    country = json['Country_'];
    reportingYear = json['Reporting_Year'];
    tickerSymbol = json['Ticker_Symbol_'];
    iSIN = json['ISIN_'];
    disclosureScore = json['Disclosure_Score'];
    performanceBand = json['Performance_Band'];
    responseStatus = json['Response_Status'];
    scope1MetricTonnesCO2e = json['Scope_1__metric_tonnes_CO2e_'];
    scope2MetricTonnesCO2e = json['Scope_2__metric_tonnes_CO2e_'];
    countryLocation = json['Country_Location'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Company_Name_'] = companyName;
    data['Account_Number'] = accountNumber;
    data['Country_'] = country;
    data['Reporting_Year'] = reportingYear;
    data['Ticker_Symbol_'] = tickerSymbol;
    data['ISIN_'] = iSIN;
    data['Disclosure_Score'] = disclosureScore;
    data['Performance_Band'] = performanceBand;
    data['Response_Status'] = responseStatus;
    data['Scope_1__metric_tonnes_CO2e_'] = scope1MetricTonnesCO2e;
    data['Scope_2__metric_tonnes_CO2e_'] = scope2MetricTonnesCO2e;
    data['Country_Location'] = countryLocation;
    return data;
  }
}
