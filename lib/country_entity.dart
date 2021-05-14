import 'package:flutter/foundation.dart';

import './currency.dart';

/// A country definition with image asset, dialing code and localized name.
class CountryEntity {
  /// the flag image asset name
  final String asset;

  /// the dialing code
  final String dialingCode;

  /// the 2-letter ISO code
  final String isoCode;

  /// the localized / English country name
  final String name;

  final Currency currency;

  /// Instantiates a [CountryEntity] with the specified [asset], [dialingCode] and [isoCode]
  const CountryEntity({
    @required this.asset,
    @required this.dialingCode,
    @required this.isoCode,
    @required this.currency,
    this.name = "",
  });

  @override
  bool operator ==(o) =>
      o is CountryEntity &&
      o.dialingCode == this.dialingCode &&
      o.isoCode == this.isoCode &&
      o.asset == this.asset &&
      o.name == this.name &&
      o.currency == this.currency;

  int get hashCode {
    int hash = 7;
    hash = 31 * hash + this.dialingCode.hashCode;
    hash = 31 * hash + this.asset.hashCode;
    hash = 31 * hash + this.name.hashCode;
    hash = 31 * hash + this.isoCode.hashCode;
    hash = 31 * hash + this.currency.hashCode;
    return hash;
  }

  static const CountryEntity AD = CountryEntity(
    asset: "assets/flags/ad_flag.png",
    dialingCode: "376",
    isoCode: "AD",
    name: "Andorra",
    currency: Currency.EUR,
  );

  static const CountryEntity AE = CountryEntity(
    asset: "assets/flags/ae_flag.png",
    dialingCode: "971",
    isoCode: "AE",
    name: "United Arab Emirates",
    currency: Currency.AED,
  );

  static const CountryEntity AF = CountryEntity(
    asset: "assets/flags/af_flag.png",
    dialingCode: "93",
    isoCode: "AF",
    name: "Afghanistan",
    currency: Currency.AFN,
  );

  static const CountryEntity AL = CountryEntity(
    asset: "assets/flags/al_flag.png",
    dialingCode: "355",
    isoCode: "AL",
    name: "Albania",
    currency: Currency.ALL,
  );

  static const CountryEntity AM = CountryEntity(
    asset: "assets/flags/am_flag.png",
    dialingCode: "374",
    isoCode: "AM",
    name: "Armenia",
    currency: Currency.AMD,
  );

  static const CountryEntity AQ = CountryEntity(
    asset: "assets/flags/aq_flag.png",
    dialingCode: "672",
    isoCode: "AQ",
    name: "Antarctica",
    currency: Currency.USD,
  );

  static const CountryEntity AR = CountryEntity(
    asset: "assets/flags/ar_flag.png",
    dialingCode: "54",
    isoCode: "AR",
    name: "Argentina",
    currency: Currency.ARS,
  );

  static const CountryEntity AS = CountryEntity(
    asset: "assets/flags/as_flag.png",
    dialingCode: "1",
    isoCode: "AS",
    name: "American Samoa",
    currency: Currency.USD,
  );

  static const CountryEntity AT = CountryEntity(
    asset: "assets/flags/at_flag.png",
    dialingCode: "43",
    isoCode: "AT",
    name: "Austria",
    currency: Currency.EUR,
  );

  static const CountryEntity AU = CountryEntity(
    asset: "assets/flags/au_flag.png",
    dialingCode: "61",
    isoCode: "AU",
    name: "Australia",
    currency: Currency.AUD,
  );

  static const CountryEntity AX = CountryEntity(
    asset: "assets/flags/ax_flag.png",
    dialingCode: "358",
    isoCode: "AX",
    name: "Aaland Islands",
    currency: Currency.EUR,
  );

  static const CountryEntity AZ = CountryEntity(
    asset: "assets/flags/az_flag.png",
    dialingCode: "994",
    isoCode: "AZ",
    name: "Azerbaijan",
    currency: Currency.AZN,
  );

  static const CountryEntity BA = CountryEntity(
    asset: "assets/flags/ba_flag.png",
    dialingCode: "387",
    isoCode: "BA",
    name: "Bosnia and Herzegowina",
    currency: Currency.BHD,
  );

  static const CountryEntity BD = CountryEntity(
    asset: "assets/flags/bd_flag.png",
    dialingCode: "880",
    isoCode: "BD",
    name: "Bangladesh",
    currency: Currency.BDT,
  );

  static const CountryEntity BE = CountryEntity(
    asset: "assets/flags/be_flag.png",
    dialingCode: "32",
    isoCode: "BE",
    name: "Belgium",
    currency: Currency.EUR,
  );

  static const CountryEntity BF = CountryEntity(
    asset: "assets/flags/bf_flag.png",
    dialingCode: "226",
    isoCode: "BF",
    name: "Burkina Faso",
    currency: Currency.XOF,
  );

  static const CountryEntity BG = CountryEntity(
    asset: "assets/flags/bg_flag.png",
    dialingCode: "359",
    isoCode: "BG",
    name: "Bulgaria",
    currency: Currency.BGN,
  );

  static const CountryEntity BI = CountryEntity(
    asset: "assets/flags/bi_flag.png",
    dialingCode: "257",
    isoCode: "BI",
    name: "Burundi",
    currency: Currency.BIF,
  );

  static const CountryEntity BJ = CountryEntity(
    asset: "assets/flags/bj_flag.png",
    dialingCode: "229",
    isoCode: "BJ",
    name: "Benin",
    currency: Currency.XOF,
  );

  static const CountryEntity BL = CountryEntity(
    asset: "assets/flags/bl_flag.png",
    dialingCode: "590",
    isoCode: "BL",
    name: "Saint-Barthélemy",
    currency: Currency.EUR,
  );

  static const CountryEntity BN = CountryEntity(
    asset: "assets/flags/bn_flag.png",
    dialingCode: "673",
    isoCode: "BN",
    name: "Brunei Darussalam",
    currency: Currency.BND,
  );

  static const CountryEntity BO = CountryEntity(
    asset: "assets/flags/bo_flag.png",
    dialingCode: "591",
    isoCode: "BO",
    name: "Bolivia",
    currency: Currency.BOB,
  );

  static const CountryEntity BQ = CountryEntity(
    asset: "assets/flags/bq_flag.png",
    dialingCode: "599",
    isoCode: "BQ",
    name: "Bonaire, Sint Eustatius and Saba",
    currency: Currency.USD,
  );

  static const CountryEntity BR = CountryEntity(
    asset: "assets/flags/br_flag.png",
    dialingCode: "55",
    isoCode: "BR",
    name: "Brazil",
    currency: Currency.BRL,
  );

  static const CountryEntity BV = CountryEntity(
    asset: "assets/flags/bv_flag.png",
    dialingCode: "55",
    isoCode: "BV",
    name: "Bouvet Island",
    currency: Currency.NOK,
  );

  static const CountryEntity BW = CountryEntity(
    asset: "assets/flags/bw_flag.png",
    dialingCode: "267",
    isoCode: "BW",
    name: "Botswana",
    currency: Currency.BWP,
  );

  static const CountryEntity BY = CountryEntity(
    asset: "assets/flags/by_flag.png",
    dialingCode: "375",
    isoCode: "BY",
    name: "Belarus",
    currency: Currency.BYN,
  );

  static const CountryEntity BZ = CountryEntity(
    asset: "assets/flags/bz_flag.png",
    dialingCode: "501",
    isoCode: "BZ",
    name: "Belize",
    currency: Currency.BZD,
  );

  static const CountryEntity CA = CountryEntity(
    asset: "assets/flags/ca_flag.png",
    dialingCode: "1",
    isoCode: "CA",
    name: "Canada",
    currency: Currency.CAD,
  );

  static const CountryEntity CC = CountryEntity(
    asset: "assets/flags/cc_flag.png",
    dialingCode: "891",
    isoCode: "CC",
    name: "Cocos (Keeling) Islands",
    currency: Currency.AUD,
  );

  static const CountryEntity CD = CountryEntity(
    asset: "assets/flags/cd_flag.png",
    dialingCode: "243",
    isoCode: "CD",
    name: "Democratic Republic of the Congo",
    currency: Currency.CDF,
  );

  static const CountryEntity CF = CountryEntity(
    asset: "assets/flags/cf_flag.png",
    dialingCode: "236",
    isoCode: "CF",
    name: "Central African Republic",
    currency: Currency.XAF,
  );

  static const CountryEntity CG = CountryEntity(
    asset: "assets/flags/cg_flag.png",
    dialingCode: "242",
    isoCode: "CG",
    name: "Republic of the Congo",
    currency: Currency.CDF,
  );

  static const CountryEntity CH = CountryEntity(
    asset: "assets/flags/ch_flag.png",
    dialingCode: "41",
    isoCode: "CH",
    name: "Switzerland",
    currency: Currency.CHF,
  );

  static const CountryEntity CI = CountryEntity(
    asset: "assets/flags/ci_flag.png",
    dialingCode: "225",
    isoCode: "CI",
    name: "Cote D'ivoire",
    currency: Currency.XOF,
  );

  static const CountryEntity CK = CountryEntity(
    asset: "assets/flags/ck_flag.png",
    dialingCode: "682",
    isoCode: "CK",
    name: "Cook Islands",
    currency: Currency.NZD,
  );

  static const CountryEntity CL = CountryEntity(
    asset: "assets/flags/cl_flag.png",
    dialingCode: "56",
    isoCode: "CL",
    name: "Chile",
    currency: Currency.CLF,
  );

  static const CountryEntity CM = CountryEntity(
    asset: "assets/flags/cm_flag.png",
    dialingCode: "237",
    isoCode: "CM",
    name: "Cameroon",
    currency: Currency.XAF,
  );

  static const CountryEntity CN = CountryEntity(
    asset: "assets/flags/cn_flag.png",
    dialingCode: "86",
    isoCode: "CN",
    name: "China",
    currency: Currency.CNY,
  );

  static const CountryEntity CO = CountryEntity(
    asset: "assets/flags/co_flag.png",
    dialingCode: "57",
    isoCode: "CO",
    name: "Colombia",
    currency: Currency.COP,
  );

  static const CountryEntity CR = CountryEntity(
    asset: "assets/flags/cr_flag.png",
    dialingCode: "506",
    isoCode: "CR",
    name: "Costa Rica",
    currency: Currency.CRC,
  );

  static const CountryEntity CV = CountryEntity(
    asset: "assets/flags/cv_flag.png",
    dialingCode: "238",
    isoCode: "CV",
    name: "Cape Verde",
    currency: Currency.CVE,
  );

  static const CountryEntity CW = CountryEntity(
    asset: "assets/flags/cw_flag.png",
    dialingCode: "599",
    isoCode: "CW",
    name: "Curaçao",
    currency: Currency.USD,
  );

  static const CountryEntity CX = CountryEntity(
    asset: "assets/flags/cx_flag.png",
    dialingCode: "61",
    isoCode: "CX",
    name: "Christmas Island",
    currency: Currency.AUD,
  );

  static const CountryEntity CY = CountryEntity(
    asset: "assets/flags/cy_flag.png",
    dialingCode: "357",
    isoCode: "CY",
    name: "Cyprus",
    currency: Currency.EUR,
  );

  static const CountryEntity CZ = CountryEntity(
    asset: "assets/flags/cz_flag.png",
    dialingCode: "420",
    isoCode: "CZ",
    name: "Czech Republic",
    currency: Currency.CZK,
  );

  static const CountryEntity DE = CountryEntity(
    asset: "assets/flags/de_flag.png",
    dialingCode: "49",
    isoCode: "DE",
    name: "Germany",
    currency: Currency.EUR,
  );

  static const CountryEntity DJ = CountryEntity(
    asset: "assets/flags/dj_flag.png",
    dialingCode: "253",
    isoCode: "DJ",
    name: "Djibouti",
    currency: Currency.DJF,
  );

  static const CountryEntity DK = CountryEntity(
    asset: "assets/flags/dk_flag.png",
    dialingCode: "45",
    isoCode: "DK",
    name: "Denmark",
    currency: Currency.DKK,
  );

  static const CountryEntity DZ = CountryEntity(
    asset: "assets/flags/dz_flag.png",
    dialingCode: "213",
    isoCode: "DZ",
    name: "Algeria",
    currency: Currency.DZD,
  );

  static const CountryEntity EC = CountryEntity(
    asset: "assets/flags/ec_flag.png",
    dialingCode: "593",
    isoCode: "EC",
    name: "Ecuador",
    currency: Currency.USD,
  );

  static const CountryEntity EE = CountryEntity(
    asset: "assets/flags/ee_flag.png",
    dialingCode: "372",
    isoCode: "EE",
    name: "Estonia",
    currency: Currency.EUR,
  );

  static const CountryEntity EG = CountryEntity(
    asset: "assets/flags/eg_flag.png",
    dialingCode: "20",
    isoCode: "EG",
    name: "Egypt",
    currency: Currency.EGP,
  );

  static const CountryEntity EH = CountryEntity(
    asset: "assets/flags/eh_flag.png",
    dialingCode: "212",
    isoCode: "EH",
    name: "Western Sahara",
    currency: Currency.MAD,
  );

  static const CountryEntity ER = CountryEntity(
    asset: "assets/flags/er_flag.png",
    dialingCode: "291",
    isoCode: "ER",
    name: "Eritrea",
    currency: Currency.ERN,
  );

  static const CountryEntity ES = CountryEntity(
    asset: "assets/flags/es_flag.png",
    dialingCode: "34",
    isoCode: "ES",
    name: "Spain",
    currency: Currency.EUR,
  );

  static const CountryEntity ET = CountryEntity(
    asset: "assets/flags/et_flag.png",
    dialingCode: "251",
    isoCode: "ET",
    name: "Ethiopia",
    currency: Currency.ETB,
  );

  static const CountryEntity FI = CountryEntity(
    asset: "assets/flags/fi_flag.png",
    dialingCode: "358",
    isoCode: "FI",
    name: "Finland",
    currency: Currency.EUR,
  );

  static const CountryEntity FM = CountryEntity(
    asset: "assets/flags/fm_flag.png",
    dialingCode: "691",
    isoCode: "FM",
    name: "Federated States Of Micronesia",
    currency: Currency.USD,
  );

  static const CountryEntity FO = CountryEntity(
    asset: "assets/flags/fo_flag.png",
    dialingCode: "298",
    isoCode: "FO",
    name: "Faroe Islands",
    currency: Currency.DKK,
  );

  static const CountryEntity FR = CountryEntity(
    asset: "assets/flags/fr_flag.png",
    dialingCode: "33",
    isoCode: "FR",
    name: "France",
    currency: Currency.EUR,
  );

  static const CountryEntity GA = CountryEntity(
    asset: "assets/flags/ga_flag.png",
    dialingCode: "241",
    isoCode: "GA",
    name: "Gabon",
    currency: Currency.XAF,
  );

  static const CountryEntity GB = CountryEntity(
    asset: "assets/flags/gb_flag.png",
    dialingCode: "44",
    isoCode: "GB",
    name: "United Kingdom",
    currency: Currency.GBP,
  );

  static const CountryEntity GE = CountryEntity(
    asset: "assets/flags/ge_flag.png",
    dialingCode: "995",
    isoCode: "GE",
    name: "Georgia",
    currency: Currency.GEL,
  );

  static const CountryEntity GF = CountryEntity(
    asset: "assets/flags/gf_flag.png",
    dialingCode: "594",
    isoCode: "GF",
    name: "French Guiana",
    currency: Currency.EUR,
  );

  static const CountryEntity GG = CountryEntity(
    asset: "assets/flags/gg_flag.png",
    dialingCode: "44",
    isoCode: "GG",
    name: "Guernsey",
    currency: Currency.GBP,
  );

  static const CountryEntity GH = CountryEntity(
    asset: "assets/flags/gh_flag.png",
    dialingCode: "233",
    isoCode: "GH",
    name: "Ghana",
    currency: Currency.GHS,
  );

  static const CountryEntity GL = CountryEntity(
    asset: "assets/flags/gl_flag.png",
    dialingCode: "299",
    isoCode: "GL",
    name: "Greenland",
    currency: Currency.DKK,
  );

  static const CountryEntity GN = CountryEntity(
    asset: "assets/flags/gn_flag.png",
    dialingCode: "224",
    isoCode: "GN",
    name: "Guinea",
    currency: Currency.GNF,
  );

  static const CountryEntity GP = CountryEntity(
    asset: "assets/flags/gp_flag.png",
    dialingCode: "590",
    isoCode: "GP",
    name: "Guadeloupe",
    currency: Currency.EUR,
  );

  static const CountryEntity GQ = CountryEntity(
    asset: "assets/flags/gq_flag.png",
    dialingCode: "240",
    isoCode: "GQ",
    name: "Equatorial Guinea",
    currency: Currency.XAF,
  );

  static const CountryEntity GR = CountryEntity(
    asset: "assets/flags/gr_flag.png",
    dialingCode: "30",
    isoCode: "GR",
    name: "Greece",
    currency: Currency.EUR,
  );

  static const CountryEntity GS = CountryEntity(
      asset: "assets/flags/gs_flag.png",
      dialingCode: "500",
      isoCode: "GS",
      name: "South Georgia and The South Sandwich Islands",
      currency: Currency.GEL);

  static const CountryEntity GT = CountryEntity(
    asset: "assets/flags/gt_flag.png",
    dialingCode: "502",
    isoCode: "GT",
    name: "Guatemala",
    currency: Currency.GTQ,
  );

  static const CountryEntity GU = CountryEntity(
    asset: "assets/flags/gu_flag.png",
    dialingCode: "1",
    isoCode: "GU",
    name: "Guam",
    currency: Currency.USD,
  );

  static const CountryEntity GW = CountryEntity(
    asset: "assets/flags/gw_flag.png",
    dialingCode: "245",
    isoCode: "GW",
    name: "Guinea-bissau",
    currency: Currency.XOF,
  );

  static const CountryEntity HK = CountryEntity(
    asset: "assets/flags/hk_flag.png",
    dialingCode: "852",
    isoCode: "HK",
    name: "Hong Kong",
    currency: Currency.HKD,
  );

  static const CountryEntity HM = CountryEntity(
    asset: "assets/flags/hm_flag.png",
    dialingCode: "61",
    isoCode: "HM",
    name: "Heard and Mc Donald Islands",
    currency: Currency.AUD,
  );

  static const CountryEntity HN = CountryEntity(
    asset: "assets/flags/hn_flag.png",
    dialingCode: "504",
    isoCode: "HN",
    name: "Honduras",
    currency: Currency.HNL,
  );

  static const CountryEntity HR = CountryEntity(
    asset: "assets/flags/hr_flag.png",
    dialingCode: "385",
    isoCode: "HR",
    name: "Croatia (Local Name: Hrvatska)",
    currency: Currency.HRK,
  );

  static const CountryEntity HU = CountryEntity(
    asset: "assets/flags/hu_flag.png",
    dialingCode: "36",
    isoCode: "HU",
    name: "Hungary",
    currency: Currency.HUF,
  );

  static const CountryEntity ID = CountryEntity(
    asset: "assets/flags/id_flag.png",
    dialingCode: "62",
    isoCode: "ID",
    name: "Indonesia",
    currency: Currency.IDR,
  );

  static const CountryEntity IE = CountryEntity(
    asset: "assets/flags/ie_flag.png",
    dialingCode: "353",
    isoCode: "IE",
    name: "Ireland",
    currency: Currency.EUR,
  );

  static const CountryEntity IL = CountryEntity(
    asset: "assets/flags/il_flag.png",
    dialingCode: "972",
    isoCode: "IL",
    name: "Israel",
    currency: Currency.ILS,
  );

  static const CountryEntity IN = CountryEntity(
    asset: "assets/flags/in_flag.png",
    dialingCode: "91",
    isoCode: "IN",
    name: "India",
    currency: Currency.INR,
  );

  static const CountryEntity IO = CountryEntity(
    asset: "assets/flags/io_flag.png",
    dialingCode: "246",
    isoCode: "IO",
    name: "British Indian Ocean Territory",
    currency: Currency.GBP,
  );

  static const CountryEntity IQ = CountryEntity(
    asset: "assets/flags/iq_flag.png",
    dialingCode: "964",
    isoCode: "IQ",
    name: "Iraq",
    currency: Currency.IQD,
  );

  static const CountryEntity IR = CountryEntity(
    asset: "assets/flags/ir_flag.png",
    dialingCode: "98",
    isoCode: "IR",
    name: "Iran (Islamic Republic Of)",
    currency: Currency.IRR,
  );

  static const CountryEntity IS = CountryEntity(
    asset: "assets/flags/is_flag.png",
    dialingCode: "354",
    isoCode: "IS",
    name: "Iceland",
    currency: Currency.ISK,
  );

  static const CountryEntity IT = CountryEntity(
    asset: "assets/flags/it_flag.png",
    dialingCode: "39",
    isoCode: "IT",
    name: "Italy",
    currency: Currency.EUR,
  );

  static const CountryEntity JE = CountryEntity(
    asset: "assets/flags/je_flag.png",
    dialingCode: "44",
    isoCode: "JE",
    name: "Jersey",
    currency: Currency.GBP,
  );

  static const CountryEntity JM = CountryEntity(
    asset: "assets/flags/jm_flag.png",
    dialingCode: "1",
    isoCode: "JM",
    name: "Jamaica",
    currency: Currency.JMD,
  );

  static const CountryEntity JO = CountryEntity(
    asset: "assets/flags/jo_flag.png",
    dialingCode: "962",
    isoCode: "JO",
    name: "Jordan",
    currency: Currency.JOD,
  );

  static const CountryEntity JP = CountryEntity(
    asset: "assets/flags/jp_flag.png",
    dialingCode: "81",
    isoCode: "JP",
    name: "Japan",
    currency: Currency.JPY,
  );

  static const CountryEntity KE = CountryEntity(
    asset: "assets/flags/ke_flag.png",
    dialingCode: "254",
    isoCode: "KE",
    name: "Kenya",
    currency: Currency.KES,
  );

  static const CountryEntity KH = CountryEntity(
    asset: "assets/flags/kh_flag.png",
    dialingCode: "855",
    isoCode: "KH",
    name: "Cambodia",
    currency: Currency.KHR,
  );

  static const CountryEntity KI = CountryEntity(
    asset: "assets/flags/ki_flag.png",
    dialingCode: "686",
    isoCode: "KI",
    name: "Kiribati",
    currency: Currency.AUD,
  );

  static const CountryEntity KM = CountryEntity(
    asset: "assets/flags/km_flag.png",
    dialingCode: "269",
    isoCode: "KM",
    name: "Comoros",
    currency: Currency.KMF,
  );

  static const CountryEntity KR = CountryEntity(
    asset: "assets/flags/kr_flag.png",
    dialingCode: "82",
    isoCode: "KR",
    name: "Republic Of Korea",
    currency: Currency.KRW,
  );

  static const CountryEntity KW = CountryEntity(
    asset: "assets/flags/kw_flag.png",
    dialingCode: "965",
    isoCode: "KW",
    name: "Kuwait",
    currency: Currency.KWD,
  );

  static const CountryEntity KY = CountryEntity(
    asset: "assets/flags/ky_flag.png",
    dialingCode: "965",
    isoCode: "KY",
    name: "Cayman Islands",
    currency: Currency.AUD,
  );

  static const CountryEntity LB = CountryEntity(
    asset: "assets/flags/lb_flag.png",
    dialingCode: "961",
    isoCode: "LB",
    name: "Lebanon",
    currency: Currency.LBP,
  );

  static const CountryEntity LI = CountryEntity(
    asset: "assets/flags/li_flag.png",
    dialingCode: "423",
    isoCode: "LI",
    name: "Liechtenstein",
    currency: Currency.CHF,
  );

  static const CountryEntity LK = CountryEntity(
    asset: "assets/flags/lk_flag.png",
    dialingCode: "94",
    isoCode: "LK",
    name: "Sri Lanka",
    currency: Currency.LKR,
  );

  static const CountryEntity LT = CountryEntity(
    asset: "assets/flags/lt_flag.png",
    dialingCode: "370",
    isoCode: "LT",
    name: "Lithuania",
    currency: Currency.EUR,
  );

  static const CountryEntity LU = CountryEntity(
    asset: "assets/flags/lu_flag.png",
    dialingCode: "352",
    isoCode: "LU",
    name: "Luxembourg",
    currency: Currency.EUR,
  );

  static const CountryEntity LV = CountryEntity(
    asset: "assets/flags/lv_flag.png",
    dialingCode: "371",
    isoCode: "LV",
    name: "Latvia",
    currency: Currency.EUR,
  );

  static const CountryEntity LY = CountryEntity(
    asset: "assets/flags/ly_flag.png",
    dialingCode: "218",
    isoCode: "LY",
    name: "Libyan Arab Jamahiriya",
    currency: Currency.LYD,
  );

  static const CountryEntity MA = CountryEntity(
    asset: "assets/flags/ma_flag.png",
    dialingCode: "212",
    isoCode: "MA",
    name: "Morocco",
    currency: Currency.MAD,
  );

  static const CountryEntity MC = CountryEntity(
    asset: "assets/flags/mc_flag.png",
    dialingCode: "377",
    isoCode: "MC",
    name: "Monaco",
    currency: Currency.EUR,
  );

  static const CountryEntity MD = CountryEntity(
    asset: "assets/flags/md_flag.png",
    dialingCode: "373",
    isoCode: "MD",
    name: "Moldova, Republic Of",
    currency: Currency.MDL,
  );

  static const CountryEntity ME = CountryEntity(
    asset: "assets/flags/me_flag.png",
    dialingCode: "382",
    isoCode: "ME",
    name: "Montenegro",
    currency: Currency.EUR,
  );

  static const CountryEntity MF = CountryEntity(
    asset: "assets/flags/mf_flag.png",
    dialingCode: "1",
    isoCode: "MF",
    name: "Saint-Martin",
    currency: Currency.EUR,
  );

  static const CountryEntity MG = CountryEntity(
    asset: "assets/flags/mg_flag.png",
    dialingCode: "261",
    isoCode: "MG",
    name: "Madagascar",
    currency: Currency.MGA,
  );

  static const CountryEntity MH = CountryEntity(
    asset: "assets/flags/mh_flag.png",
    dialingCode: "692",
    isoCode: "MH",
    name: "Marshall Islands",
    currency: Currency.USD,
  );

  static const CountryEntity MK = CountryEntity(
    asset: "assets/flags/mk_flag.png",
    dialingCode: "389",
    isoCode: "MK",
    name: "Macedonia, The Former Yugoslav Republic Of",
    currency: Currency.MKD,
  );

  static const CountryEntity ML = CountryEntity(
    asset: "assets/flags/ml_flag.png",
    dialingCode: "223",
    isoCode: "ML",
    name: "Mali",
    currency: Currency.XOF,
  );

  static const CountryEntity MM = CountryEntity(
    asset: "assets/flags/mm_flag.png",
    dialingCode: "95",
    isoCode: "MM",
    name: "Myanmar",
    currency: Currency.MMK,
  );

  static const CountryEntity MO = CountryEntity(
    asset: "assets/flags/mo_flag.png",
    dialingCode: "853",
    isoCode: "MO",
    name: "Macau",
    currency: Currency.MOP,
  );

  static const CountryEntity MP = CountryEntity(
    asset: "assets/flags/mp_flag.png",
    dialingCode: "1",
    isoCode: "MP",
    name: "Northern Mariana Islands",
    currency: Currency.USD,
  );

  static const CountryEntity MQ = CountryEntity(
    asset: "assets/flags/mq_flag.png",
    dialingCode: "596",
    isoCode: "MQ",
    name: "Martinique",
    currency: Currency.EUR,
  );

  static const CountryEntity MR = CountryEntity(
    asset: "assets/flags/mr_flag.png",
    dialingCode: "222",
    isoCode: "MR",
    name: "Mauritania",
    currency: Currency.EUR,
  );

  static const CountryEntity MT = CountryEntity(
    asset: "assets/flags/mt_flag.png",
    dialingCode: "356",
    isoCode: "MT",
    name: "Malta",
    currency: Currency.EUR,
  );

  static const CountryEntity MU = CountryEntity(
    asset: "assets/flags/mu_flag.png",
    dialingCode: "230",
    isoCode: "MU",
    name: "Mauritius",
    currency: Currency.MUR,
  );

  static const CountryEntity MX = CountryEntity(
    asset: "assets/flags/mx_flag.png",
    dialingCode: "52",
    isoCode: "MX",
    name: "Mexico",
    currency: Currency.MXN,
  );

  static const CountryEntity MY = CountryEntity(
    asset: "assets/flags/my_flag.png",
    dialingCode: "60",
    isoCode: "MY",
    name: "Malaysia",
    currency: Currency.MYR,
  );

  static const CountryEntity MZ = CountryEntity(
    asset: "assets/flags/mz_flag.png",
    dialingCode: "258",
    isoCode: "MZ",
    name: "Mozambique",
    currency: Currency.MZN,
  );

  static const CountryEntity NA = CountryEntity(
    asset: "assets/flags/na_flag.png",
    dialingCode: "264",
    isoCode: "NA",
    name: "Namibia",
    currency: Currency.NAD,
  );

  static const CountryEntity NE = CountryEntity(
    asset: "assets/flags/ne_flag.png",
    dialingCode: "227",
    isoCode: "NE",
    name: "Niger",
    currency: Currency.XOF,
  );

  static const CountryEntity NG = CountryEntity(
    asset: "assets/flags/ng_flag.png",
    dialingCode: "234",
    isoCode: "NG",
    name: "Nigeria",
    currency: Currency.NGN,
  );

  static const CountryEntity NI = CountryEntity(
    asset: "assets/flags/ni_flag.png",
    dialingCode: "505",
    isoCode: "NI",
    name: "Nicaragua",
    currency: Currency.NIO,
  );

  static const CountryEntity NL = CountryEntity(
    asset: "assets/flags/nl_flag.png",
    dialingCode: "31",
    isoCode: "NL",
    name: "Netherlands",
    currency: Currency.EUR,
  );

  static const CountryEntity NO = CountryEntity(
    asset: "assets/flags/no_flag.png",
    dialingCode: "47",
    isoCode: "NO",
    name: "Norway",
    currency: Currency.NOK,
  );

  static const CountryEntity NP = CountryEntity(
    asset: "assets/flags/np_flag.png",
    dialingCode: "977",
    isoCode: "NP",
    name: "Nepal",
    currency: Currency.NPR,
  );

  static const CountryEntity NR = CountryEntity(
    asset: "assets/flags/nr_flag.png",
    dialingCode: "674",
    isoCode: "NR",
    name: "Nauru",
    currency: Currency.AUD,
  );

  static const CountryEntity NU = CountryEntity(
    asset: "assets/flags/nu_flag.png",
    dialingCode: "683",
    isoCode: "NU",
    name: "Niue",
    currency: Currency.AUD,
  );

  static const CountryEntity NZ = CountryEntity(
    asset: "assets/flags/nz_flag.png",
    dialingCode: "64",
    isoCode: "NZ",
    name: "New Zealand",
    currency: Currency.NZD,
  );

  static const CountryEntity OM = CountryEntity(
    asset: "assets/flags/om_flag.png",
    dialingCode: "968",
    isoCode: "OM",
    name: "Oman",
    currency: Currency.OMR,
  );

  static const CountryEntity PA = CountryEntity(
    asset: "assets/flags/pa_flag.png",
    dialingCode: "507",
    isoCode: "PA",
    name: "Panama",
    currency: Currency.PAB,
  );

  static const CountryEntity PE = CountryEntity(
    asset: "assets/flags/pe_flag.png",
    dialingCode: "51",
    isoCode: "PE",
    name: "Peru",
    currency: Currency.PEN,
  );

  static const CountryEntity PF = CountryEntity(
    asset: "assets/flags/pf_flag.png",
    dialingCode: "689",
    isoCode: "PF",
    name: "French Polynesia",
    currency: Currency.EUR,
  );

  static const CountryEntity PH = CountryEntity(
    asset: "assets/flags/ph_flag.png",
    dialingCode: "63",
    isoCode: "PH",
    name: "Philippines",
    currency: Currency.PHP,
  );

  static const CountryEntity PK = CountryEntity(
    asset: "assets/flags/pk_flag.png",
    dialingCode: "92",
    isoCode: "PK",
    name: "Pakistan",
    currency: Currency.PKR,
  );

  static const CountryEntity PL = CountryEntity(
    asset: "assets/flags/pl_flag.png",
    dialingCode: "48",
    isoCode: "PL",
    name: "Poland",
    currency: Currency.PLN,
  );

  static const CountryEntity PM = CountryEntity(
    asset: "assets/flags/pm_flag.png",
    dialingCode: "508",
    isoCode: "PM",
    name: "Saint Pierre and Miquelon",
    currency: Currency.EUR,
  );

  static const CountryEntity PR = CountryEntity(
    asset: "assets/flags/pr_flag.png",
    dialingCode: "1",
    isoCode: "PR",
    name: "Puerto Rico",
    currency: Currency.USD,
  );

  static const CountryEntity PS = CountryEntity(
    asset: "assets/flags/ps_flag.png",
    dialingCode: "970",
    isoCode: "PS",
    name: "Palestinian Territory, Occupied",
    currency: Currency.ILS,
  );

  static const CountryEntity PT = CountryEntity(
    asset: "assets/flags/pt_flag.png",
    dialingCode: "351",
    isoCode: "PT",
    name: "Portugal",
    currency: Currency.EUR,
  );

  static const CountryEntity PW = CountryEntity(
    asset: "assets/flags/pw_flag.png",
    dialingCode: "680",
    isoCode: "PW",
    name: "Palau",
    currency: Currency.USD,
  );

  static const CountryEntity PY = CountryEntity(
    asset: "assets/flags/py_flag.png",
    dialingCode: "595",
    isoCode: "PY",
    name: "Paraguay",
    currency: Currency.PYG,
  );

  static const CountryEntity QA = CountryEntity(
    asset: "assets/flags/qa_flag.png",
    dialingCode: "974",
    isoCode: "QA",
    name: "Qatar",
    currency: Currency.QAR,
  );

  static const CountryEntity RE = CountryEntity(
    asset: "assets/flags/re_flag.png",
    dialingCode: "262",
    isoCode: "RE",
    name: "Reunion",
    currency: Currency.EUR,
  );

  static const CountryEntity RO = CountryEntity(
    asset: "assets/flags/ro_flag.png",
    dialingCode: "40",
    isoCode: "RO",
    name: "Romania",
    currency: Currency.RON,
  );

  static const CountryEntity RS = CountryEntity(
    asset: "assets/flags/rs_flag.png",
    dialingCode: "381",
    isoCode: "RS",
    name: "Serbia",
    currency: Currency.RSD,
  );

  static const CountryEntity RU = CountryEntity(
    asset: "assets/flags/ru_flag.png",
    dialingCode: "7",
    isoCode: "RU",
    name: "Russian Federation",
    currency: Currency.RUB,
  );

  static const CountryEntity RW = CountryEntity(
    asset: "assets/flags/rw_flag.png",
    dialingCode: "250",
    isoCode: "RW",
    name: "Rwanda",
    currency: Currency.RWF,
  );

  static const CountryEntity SA = CountryEntity(
    asset: "assets/flags/sa_flag.png",
    dialingCode: "966",
    isoCode: "SA",
    name: "Saudi Arabia",
    currency: Currency.SAR,
  );

  static const CountryEntity SD = CountryEntity(
    asset: "assets/flags/sd_flag.png",
    dialingCode: "249",
    isoCode: "SD",
    name: "Sudan",
    currency: Currency.SDG,
  );

  static const CountryEntity SE = CountryEntity(
    asset: "assets/flags/se_flag.png",
    dialingCode: "46",
    isoCode: "SE",
    name: "Sweden",
    currency: Currency.SEK,
  );

  static const CountryEntity SG = CountryEntity(
    asset: "assets/flags/sg_flag.png",
    dialingCode: "65",
    isoCode: "SG",
    name: "Singapore",
    currency: Currency.SGD,
  );

  static const CountryEntity SH = CountryEntity(
    asset: "assets/flags/sh_flag.png",
    dialingCode: "290",
    isoCode: "SH",
    name: "Saint Helena",
    currency: Currency.GBP,
  );

  static const CountryEntity SI = CountryEntity(
    asset: "assets/flags/si_flag.png",
    dialingCode: "386",
    isoCode: "SI",
    name: "Slovenia",
    currency: Currency.EUR,
  );

  static const CountryEntity SJ = CountryEntity(
    asset: "assets/flags/sj_flag.png",
    dialingCode: "47",
    isoCode: "SJ",
    name: "Svalbard and Jan Mayen Islands",
    currency: Currency.NOK,
  );

  static const CountryEntity SK = CountryEntity(
    asset: "assets/flags/sk_flag.png",
    dialingCode: "421",
    isoCode: "SK",
    name: "Slovakia",
    currency: Currency.EUR,
  );

  static const CountryEntity SM = CountryEntity(
    asset: "assets/flags/sm_flag.png",
    dialingCode: "378",
    isoCode: "SM",
    name: "San Marino",
    currency: Currency.EUR,
  );

  static const CountryEntity SN = CountryEntity(
    asset: "assets/flags/sn_flag.png",
    dialingCode: "221",
    isoCode: "SN",
    name: "Senegal",
    currency: Currency.XOF,
  );

  static const CountryEntity SO = CountryEntity(
    asset: "assets/flags/so_flag.png",
    dialingCode: "252",
    isoCode: "SO",
    name: "Somalia",
    currency: Currency.SOS,
  );

  static const CountryEntity SV = CountryEntity(
    asset: "assets/flags/sv_flag.png",
    dialingCode: "503",
    isoCode: "SV",
    name: "El Salvador",
    currency: Currency.USD,
  );

  static const CountryEntity SX = CountryEntity(
    asset: "assets/flags/sx_flag.png",
    dialingCode: "1",
    isoCode: "SX",
    name: "Sint Maarten",
    currency: Currency.EUR,
  );

  static const CountryEntity TC = CountryEntity(
    asset: "assets/flags/tc_flag.png",
    dialingCode: "1",
    isoCode: "TC",
    name: "Turks and Caicos Islands",
    currency: Currency.USD,
  );

  static const CountryEntity TD = CountryEntity(
    asset: "assets/flags/td_flag.png",
    dialingCode: "235",
    isoCode: "TD",
    name: "Chad",
    currency: Currency.XAF,
  );

  static const CountryEntity TF = CountryEntity(
    asset: "assets/flags/tf_flag.png",
    dialingCode: "262",
    isoCode: "TF",
    name: "French Southern Territories",
    currency: Currency.EUR,
  );

  static const CountryEntity TG = CountryEntity(
    asset: "assets/flags/tg_flag.png",
    dialingCode: "228",
    isoCode: "TG",
    name: "Togo",
    currency: Currency.XOF,
  );

  static const CountryEntity TH = CountryEntity(
    asset: "assets/flags/th_flag.png",
    dialingCode: "66",
    isoCode: "TH",
    name: "Thailand",
    currency: Currency.THB,
  );

  static const CountryEntity TK = CountryEntity(
    asset: "assets/flags/tk_flag.png",
    dialingCode: "690",
    isoCode: "TK",
    name: "Tokelau",
    currency: Currency.NIO,
  );

  static const CountryEntity TL = CountryEntity(
    asset: "assets/flags/tl_flag.png",
    dialingCode: "670",
    isoCode: "TL",
    name: "Timor-leste",
    currency: Currency.USD,
  );

  static const CountryEntity TN = CountryEntity(
    asset: "assets/flags/tn_flag.png",
    dialingCode: "216",
    isoCode: "TN",
    name: "Tunisia",
    currency: Currency.TWD,
  );

  static const CountryEntity TO = CountryEntity(
    asset: "assets/flags/to_flag.png",
    dialingCode: "676",
    isoCode: "TO",
    name: "Tonga",
    currency: Currency.TOP,
  );

  static const CountryEntity TR = CountryEntity(
    asset: "assets/flags/tr_flag.png",
    dialingCode: "90",
    isoCode: "TR",
    name: "Turkey",
    currency: Currency.TRY,
  );

  static const CountryEntity TT = CountryEntity(
    asset: "assets/flags/tt_flag.png",
    dialingCode: "1",
    isoCode: "TT",
    name: "Trinidad and Tobago",
    currency: Currency.TTD,
  );

  static const CountryEntity TV = CountryEntity(
    asset: "assets/flags/tv_flag.png",
    dialingCode: "688",
    isoCode: "TV",
    name: "Tuvalu",
    currency: Currency.AUD,
  );

  static const CountryEntity TW = CountryEntity(
    asset: "assets/flags/tw_flag.png",
    dialingCode: "886",
    isoCode: "TW",
    name: "Taiwan",
    currency: Currency.TWD,
  );

  static const CountryEntity TZ = CountryEntity(
    asset: "assets/flags/tz_flag.png",
    dialingCode: "255",
    isoCode: "TZ",
    name: "Tanzania, United Republic Of",
    currency: Currency.TZS,
  );

  static const CountryEntity UA = CountryEntity(
    asset: "assets/flags/ua_flag.png",
    dialingCode: "380",
    isoCode: "UA",
    name: "Ukraine",
    currency: Currency.UAH,
  );

  static const CountryEntity UG = CountryEntity(
    asset: "assets/flags/ug_flag.png",
    dialingCode: "256",
    isoCode: "UG",
    name: "Uganda",
    currency: Currency.UGX,
  );

  static const CountryEntity UM = CountryEntity(
    asset: "assets/flags/um_flag.png",
    dialingCode: "1",
    isoCode: "UM",
    name: "United States Minor Outlying Islands",
    currency: Currency.USD,
  );

  static const CountryEntity US = CountryEntity(
    asset: "assets/flags/us_flag.png",
    dialingCode: "1",
    isoCode: "US",
    name: "United States",
    currency: Currency.USD,
  );

  static const CountryEntity UY = CountryEntity(
    asset: "assets/flags/uy_flag.png",
    dialingCode: "598",
    isoCode: "UY",
    name: "Uruguay",
    currency: Currency.UYU,
  );

  static const CountryEntity UZ = CountryEntity(
    asset: "assets/flags/uz_flag.png",
    dialingCode: "998",
    isoCode: "UZ",
    name: "Uzbekistan",
    currency: Currency.UZS,
  );

  static const CountryEntity VA = CountryEntity(
    asset: "assets/flags/va_flag.png",
    dialingCode: "379",
    isoCode: "VA",
    name: "Vatican City State (Holy See)",
    currency: Currency.EUR,
  );

  static const CountryEntity VE = CountryEntity(
    asset: "assets/flags/ve_flag.png",
    dialingCode: "58",
    isoCode: "VE",
    name: "Venezuela",
    currency: Currency.VEF,
  );

  static const CountryEntity VG = CountryEntity(
    asset: "assets/flags/vg_flag.png",
    dialingCode: "1",
    isoCode: "VG",
    name: "Virgin Islands (British)",
    currency: Currency.GBP,
  );

  static const CountryEntity VI = CountryEntity(
    asset: "assets/flags/vi_flag.png",
    dialingCode: "1",
    isoCode: "VI",
    name: "Virgin Islands (U.S.)",
    currency: Currency.USD,
  );

  static const CountryEntity VN = CountryEntity(
    asset: "assets/flags/vn_flag.png",
    dialingCode: "84",
    isoCode: "VN",
    name: "Vietnam",
    currency: Currency.VND,
  );

  static const CountryEntity YE = CountryEntity(
    asset: "assets/flags/ye_flag.png",
    dialingCode: "967",
    isoCode: "YE",
    name: "Yemen",
    currency: Currency.YER,
  );

  static const CountryEntity YT = CountryEntity(
    asset: "assets/flags/yt_flag.png",
    dialingCode: "262",
    isoCode: "YT",
    name: "Mayotte",
    currency: Currency.EUR,
  );

  static const CountryEntity ZA = CountryEntity(
    asset: "assets/flags/za_flag.png",
    dialingCode: "27",
    isoCode: "ZA",
    name: "South Africa",
    currency: Currency.ZAR,
  );

  static const CountryEntity ZW = CountryEntity(
    asset: "assets/flags/zw_flag.png",
    dialingCode: "263",
    isoCode: "ZW",
    name: "Zimbabwe",
    currency: Currency.USD,
  );

  static const CountryEntity MV = CountryEntity(
    asset: "assets/flags/mv_flag.png",
    dialingCode: "960",
    isoCode: "MV",
    name: "Maldives",
    currency: Currency.MVR,
  );

  /// All the countries in the picker list
  static const ALL = <CountryEntity>[
    AD,
    AE,
    AF,
    AL,
    AM,
    AQ,
    AR,
    AS,
    AT,
    AU,
    AX,
    AZ,
    BA,
    BD,
    BE,
    BF,
    BG,
    BI,
    BJ,
    BL,
    BN,
    BO,
    BQ,
    BR,
    BV,
    BW,
    BY,
    BZ,
    CA,
    CC,
    CD,
    CF,
    CG,
    CH,
    CI,
    CK,
    CL,
    CM,
    CN,
    CO,
    CR,
    CV,
    CW,
    CX,
    CY,
    CZ,
    DE,
    DJ,
    DK,
    DZ,
    EC,
    EE,
    EG,
    EH,
    ER,
    ES,
    ET,
    FI,
    FM,
    FO,
    FR,
    GA,
    GB,
    GE,
    GF,
    GG,
    GH,
    GL,
    GN,
    GP,
    GQ,
    GR,
    GS,
    GT,
    GU,
    GW,
    HK,
    HM,
    HN,
    HR,
    HU,
    ID,
    IE,
    IL,
    IN,
    IO,
    IQ,
    IR,
    IS,
    IT,
    JE,
    JM,
    JO,
    JP,
    KE,
    KH,
    KI,
    KM,
    KR,
    KW,
    KY,
    LB,
    LI,
    LK,
    LT,
    LU,
    LV,
    LY,
    MA,
    MC,
    MD,
    ME,
    MF,
    MG,
    MH,
    MK,
    ML,
    MM,
    MO,
    MP,
    MQ,
    MR,
    MT,
    MU,
    MX,
    MY,
    MZ,
    NA,
    NE,
    NG,
    NI,
    NL,
    NO,
    NP,
    NR,
    NU,
    NZ,
    OM,
    PA,
    PE,
    PF,
    PH,
    PK,
    PL,
    PM,
    PR,
    PS,
    PT,
    PW,
    PY,
    QA,
    RE,
    RO,
    RS,
    RU,
    RW,
    SA,
    SD,
    SE,
    SG,
    SH,
    SI,
    SJ,
    SK,
    SM,
    SN,
    SO,
    SV,
    SX,
    TC,
    TD,
    TF,
    TG,
    TH,
    TK,
    TL,
    TN,
    TO,
    TR,
    TT,
    TV,
    TW,
    TZ,
    UA,
    UG,
    UM,
    US,
    UY,
    UZ,
    VA,
    VE,
    VG,
    VI,
    VN,
    YE,
    YT,
    ZA,
    ZW,
  ];

  /// returns a country with the specified [isoCode] or ```null``` if
  /// none or more than 1 are found
  static findByIsoCode(String isoCode) {
    return ALL.singleWhere(
      (item) => item.isoCode == isoCode,
    );
  }

  /// Creates a copy with modified values
  CountryEntity copyWith({
    String name,
    String isoCode,
    String dialingCode,
    String currency,
    String currencyISO,
  }) {
    return CountryEntity(
      name: name ?? this.name,
      isoCode: isoCode ?? this.isoCode,
      dialingCode: dialingCode ?? this.dialingCode,
      asset: asset ?? this.asset,
      currency: currency ?? this.currency,
    );
  }
}
