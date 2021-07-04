import 'package:flutter/foundation.dart';

class Currency {
  final String symbol;
  final String name;
  final String symbolNative;
  final int decimalDigits;
  final double rounding;
  final String code;
  final String namePlural;

  const Currency({
    @required this.symbol,
    @required this.name,
    @required this.symbolNative,
    @required this.decimalDigits,
    @required this.rounding,
    @required this.code,
    @required this.namePlural,
  });

  @override
  bool operator ==(o) =>
      o is Currency &&
      o.symbol == this.symbol &&
      o.name == this.name &&
      o.symbolNative == this.symbolNative &&
      o.decimalDigits == this.decimalDigits &&
      o.rounding == this.rounding &&
      o.namePlural == this.namePlural &&
      o.code == this.code;

  int get hashCode {
    int hash = 7;
    hash = 31 * hash + this.symbol.hashCode;
    hash = 31 * hash + this.name.hashCode;
    hash = 31 * hash + this.symbolNative.hashCode;
    hash = 31 * hash + this.decimalDigits.hashCode;
    hash = 31 * hash + this.rounding.hashCode;
    hash = 31 * hash + this.namePlural.hashCode;
    hash = 31 * hash + this.code.hashCode;
    return hash;
  }

  static const Currency USD = Currency(
    symbol: "\$",
    name: "US Dollar",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "USD",
    namePlural: "US dollars",
  );

  static const Currency CAD = Currency(
    symbol: "CA\$",
    name: "Canadian Dollar",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "CAD",
    namePlural: "Canadian dollars",
  );

  static const Currency EUR = Currency(
    symbol: "€",
    name: "Euro",
    symbolNative: "€",
    decimalDigits: 2,
    rounding: 0.0,
    code: "EUR",
    namePlural: "euros",
  );

  static const Currency AED = Currency(
    symbol: "AED",
    name: "United Arab Emirates Dirham",
    symbolNative: "د.إ.‏",
    decimalDigits: 2,
    rounding: 0.0,
    code: "AED",
    namePlural: "UAE dirhams",
  );

  static const Currency AFN = Currency(
    symbol: "AF",
    name: "Afghan Afghani",
    symbolNative: "؋",
    decimalDigits: 0,
    rounding: 0.0,
    code: "AFN",
    namePlural: "Afghan Afghanis",
  );

  static const Currency ALL = Currency(
    symbol: "ALL",
    name: "Albanian Lek",
    symbolNative: "Lek",
    decimalDigits: 0,
    rounding: 0.0,
    code: "ALL",
    namePlural: "Albanian lekë",
  );

  static const Currency AMD = Currency(
    symbol: "AMD",
    name: "Armenian Dram",
    symbolNative: "դր.",
    decimalDigits: 0,
    rounding: 0.0,
    code: "AMD",
    namePlural: "Armenian drams",
  );

  static const Currency ARS = Currency(
    symbol: "AR\$",
    name: "Argentine Peso",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "ARS",
    namePlural: "Argentine pesos",
  );

  static const Currency AUD = Currency(
    symbol: "AU\$",
    name: "Australian Dollar",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "AUD",
    namePlural: "Australian dollars",
  );

  static const Currency AZN = Currency(
    symbol: "man.",
    name: "Azerbaijani Manat",
    symbolNative: "ман.",
    decimalDigits: 2,
    rounding: 0.0,
    code: "AZN",
    namePlural: "Azerbaijani manats",
  );

  static const Currency BAM = Currency(
    symbol: "KM",
    name: "Bosnia-Herzegovina Convertible Mark",
    symbolNative: "KM",
    decimalDigits: 2,
    rounding: 0.0,
    code: "BAM",
    namePlural: "Bosnia-Herzegovina Convertible Mark",
  );

  static const Currency BDT = Currency(
    symbol: "Tk",
    name: "Bangladeshi Taka",
    symbolNative: "৳",
    decimalDigits: 2,
    rounding: 0.0,
    code: "BDT",
    namePlural: "Bangladeshi takas",
  );

  static const Currency BGN = Currency(
    symbol: "Tk",
    name: "Bulgarian Lev",
    symbolNative: "лв.",
    decimalDigits: 2,
    rounding: 0.0,
    code: "BGN",
    namePlural: "Bulgarian leva",
  );

  static const Currency BHD = Currency(
    symbol: "BD",
    name: "Bahraini Dinar",
    symbolNative: "د.ب.‏",
    decimalDigits: 3,
    rounding: 0.0,
    code: "BHD",
    namePlural: "Bahraini dinars",
  );

  static const Currency BIF = Currency(
    symbol: "FBu",
    name: "Burundian Franc",
    symbolNative: "FBu",
    decimalDigits: 0,
    rounding: 0.0,
    code: "BIF",
    namePlural: "Burundian francs",
  );

  static const Currency BND = Currency(
    symbol: "BN\$",
    name: "Brunei Dollar",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "BND",
    namePlural: "Brunei dollars",
  );

  static const Currency BOB = Currency(
    symbol: "Bs",
    name: "Bolivian Boliviano",
    symbolNative: "Bs",
    decimalDigits: 2,
    rounding: 0.0,
    code: "BOB",
    namePlural: "Bolivian bolivianos",
  );

  static const Currency BRL = Currency(
    symbol: "R\$",
    name: "Brazilian Real",
    symbolNative: "R\4",
    decimalDigits: 2,
    rounding: 0.0,
    code: "BRL",
    namePlural: "Brazilian reals",
  );

  static const Currency BWP = Currency(
    symbol: "BWP",
    name: "Botswanan Pula",
    symbolNative: "P",
    decimalDigits: 2,
    rounding: 0.0,
    code: "BWP",
    namePlural: "Botswanan pulas",
  );

  static const Currency BYN = Currency(
    symbol: "BR",
    name: "Belarusian Ruble",
    symbolNative: "руб.",
    decimalDigits: 2,
    rounding: 0.0,
    code: "BYN",
    namePlural: "Belarusian rubles",
  );

  static const Currency BZD = Currency(
    symbol: "BZ\$",
    name: "Belize Dollar",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "BZD",
    namePlural: "Belize dollars",
  );

  static const Currency CDF = Currency(
    symbol: "CDF",
    name: "Congolese Franc",
    symbolNative: "FrCD",
    decimalDigits: 2,
    rounding: 0.0,
    code: "CDF",
    namePlural: "Congolese francs",
  );

  static const Currency CHF = Currency(
    symbol: "CHF",
    name: "Swiss Franc",
    symbolNative: "CHF",
    decimalDigits: 2,
    rounding: 0.05,
    code: "CDF",
    namePlural: "Swiss francs",
  );

  static const Currency CLF = Currency(
    symbol: "CL\$",
    name: "Chilean Peso",
    symbolNative: "\$",
    decimalDigits: 0,
    rounding: 0.0,
    code: "CLP",
    namePlural: "Chilean pesos",
  );

  static const Currency CNY = Currency(
    symbol: "CN¥",
    name: "Chinese Yuan",
    symbolNative: "CN¥",
    decimalDigits: 2,
    rounding: 0.0,
    code: "CNY",
    namePlural: "Chinese yuan",
  );

  static const Currency COP = Currency(
    symbol: "CO\$",
    name: "Colombian Peso",
    symbolNative: "\$",
    decimalDigits: 0,
    rounding: 0.0,
    code: "COP",
    namePlural: "Colombian pesos",
  );

  static const Currency CRC = Currency(
    symbol: "₡",
    name: "Costa Rican Colón",
    symbolNative: "₡",
    decimalDigits: 0,
    rounding: 0.0,
    code: "CRC",
    namePlural: "Costa Rican colóns",
  );

  static const Currency CVE = Currency(
    symbol: "CV\$",
    name: "Cape Verdean Escudo",
    symbolNative: "CV\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "CVE",
    namePlural: "Cape Verdean escudos",
  );

  static const Currency CZK = Currency(
    symbol: "Kč",
    name: "Czech Republic Koruna",
    symbolNative: "Kč",
    decimalDigits: 2,
    rounding: 0.0,
    code: "CZK",
    namePlural: "Czech Republic korunas",
  );

  static const Currency DJF = Currency(
    symbol: "Fdj",
    name: "Djiboutian Franc",
    symbolNative: "Fdj",
    decimalDigits: 0,
    rounding: 0.0,
    code: "DJF",
    namePlural: "Djiboutian francs",
  );

  static const Currency DKK = Currency(
    symbol: "Dkr",
    name: "Danish Krone",
    symbolNative: "kr",
    decimalDigits: 2,
    rounding: 0.0,
    code: "DKK",
    namePlural: "Danish kroner",
  );

  static const Currency DOP = Currency(
    symbol: "RD\$",
    name: "Dominican Peso",
    symbolNative: "RD\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "DOP",
    namePlural: "Dominican pesos",
  );

  static const Currency DZD = Currency(
    symbol: "DA",
    name: "Algerian Dinar",
    symbolNative: "د.ج.‏",
    decimalDigits: 2,
    rounding: 0.0,
    code: "DZD",
    namePlural: "Algerian dinars",
  );

  static const Currency EEK = Currency(
    symbol: "Ekr",
    name: "Estonian Kroon",
    symbolNative: "kr",
    decimalDigits: 2,
    rounding: 0.0,
    code: "EEK",
    namePlural: "Estonian kroons",
  );

  static const Currency EGP = Currency(
    symbol: "EGP",
    name: "Egyptian Pound",
    symbolNative: "ج.م.‏",
    decimalDigits: 2,
    rounding: 0.0,
    code: "EGP",
    namePlural: "Egyptian pounds",
  );

  static const Currency ERN = Currency(
    symbol: "Nfk",
    name: "Eritrean Nakfa",
    symbolNative: "Nfk",
    decimalDigits: 2,
    rounding: 0.0,
    code: "ERN",
    namePlural: "Eritrean nakfas",
  );

  static const Currency ETB = Currency(
    symbol: "Br",
    name: "Ethiopian Birr",
    symbolNative: "Br",
    decimalDigits: 2,
    rounding: 0.0,
    code: "ETB",
    namePlural: "Ethiopian birrs",
  );

  static const Currency GBP = Currency(
    symbol: "£",
    name: "British Pound Sterling",
    symbolNative: "£",
    decimalDigits: 2,
    rounding: 0.0,
    code: "GBP",
    namePlural: "British pounds sterling",
  );

  static const Currency GEL = Currency(
    symbol: "GEL",
    name: "Georgian Lari",
    symbolNative: "GEL",
    decimalDigits: 2,
    rounding: 0.0,
    code: "GEL",
    namePlural: "Georgian laris",
  );

  static const Currency GHS = Currency(
    symbol: "GH₵",
    name: "Ghanaian Cedi",
    symbolNative: "GH₵",
    decimalDigits: 2,
    rounding: 0.0,
    code: "GHS",
    namePlural: "Ghanaian cedis",
  );

  static const Currency GNF = Currency(
    symbol: "FG",
    name: "Guinean Franc",
    symbolNative: "FG",
    decimalDigits: 0,
    rounding: 0.0,
    code: "GNF",
    namePlural: "Guinean francs",
  );

  static const Currency GTQ = Currency(
    symbol: "GTQ",
    name: "Guatemalan Quetzal",
    symbolNative: "Q",
    decimalDigits: 2,
    rounding: 0.0,
    code: "GTQ",
    namePlural: "Guatemalan quetzals",
  );

  static const Currency HKD = Currency(
    symbol: "HK\$",
    name: "Hong Kong Dollar",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "HKD",
    namePlural: "Hong Kong dollars",
  );

  static const Currency HNL = Currency(
    symbol: "HNL",
    name: "Honduran Lempira",
    symbolNative: "L",
    decimalDigits: 2,
    rounding: 0.0,
    code: "HNL",
    namePlural: "Honduran lempiras",
  );

  static const Currency HRK = Currency(
    symbol: "kn",
    name: "Croatian Kuna",
    symbolNative: "kn",
    decimalDigits: 2,
    rounding: 0.0,
    code: "HRK",
    namePlural: "Croatian kunas",
  );

  static const Currency HUF = Currency(
    symbol: "Ft",
    name: "Hungarian Forint",
    symbolNative: "Ft",
    decimalDigits: 0,
    rounding: 0.0,
    code: "HUF",
    namePlural: "Hungarian forints",
  );

  static const Currency IDR = Currency(
    symbol: "Rp",
    name: "Indonesian Rupiah",
    symbolNative: "Rp",
    decimalDigits: 0,
    rounding: 0.0,
    code: "IDR",
    namePlural: "Indonesian rupiahs",
  );

  static const Currency ILS = Currency(
    symbol: "₪",
    name: "Israeli New Sheqel",
    symbolNative: "₪",
    decimalDigits: 2,
    rounding: 0.0,
    code: "ILS",
    namePlural: "Israeli new sheqels",
  );

  static const Currency INR = Currency(
    symbol: "₹",
    name: "Indian Rupee",
    symbolNative: "টকা",
    decimalDigits: 2,
    rounding: 0.0,
    code: "INR",
    namePlural: "Indian rupees",
  );

  static const Currency IQD = Currency(
    symbol: "IQD",
    name: "Iraqi Dinar",
    symbolNative: "د.ع.‏",
    decimalDigits: 0,
    rounding: 0.0,
    code: "IQD",
    namePlural: "Iraqi dinars",
  );

  static const Currency IRR = Currency(
    symbol: "IRR",
    name: "Iranian Rial",
    symbolNative: "﷼",
    decimalDigits: 0,
    rounding: 0.0,
    code: "IRR",
    namePlural: "Iranian rials",
  );

  static const Currency ISK = Currency(
    symbol: "Ikr",
    name: "Icelandic Króna",
    symbolNative: "kr",
    decimalDigits: 0,
    rounding: 0.0,
    code: "ISK",
    namePlural: "Icelandic krónur",
  );

  static const Currency JMD = Currency(
    symbol: "J\$",
    name: "Jamaican Dollar",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "JMD",
    namePlural: "Jamaican dollars",
  );

  static const Currency JOD = Currency(
    symbol: "JD",
    name: "Jordanian Dinar",
    symbolNative: "د.أ.‏",
    decimalDigits: 3,
    rounding: 0.0,
    code: "JOD",
    namePlural: "Jordanian dinars",
  );

  static const Currency JPY = Currency(
    symbol: "¥",
    name: "Japanese Yen",
    symbolNative: "￥",
    decimalDigits: 0,
    rounding: 0.0,
    code: "JPY",
    namePlural: "Japanese yen",
  );

  static const Currency KES = Currency(
    symbol: "Ksh",
    name: "Kenyan Shilling",
    symbolNative: "Ksh",
    decimalDigits: 2,
    rounding: 0.0,
    code: "KES",
    namePlural: "Kenyan shillings",
  );

  static const Currency KHR = Currency(
    symbol: "KHR",
    name: "Cambodian Riel",
    symbolNative: "៛",
    decimalDigits: 2,
    rounding: 0.0,
    code: "KHR",
    namePlural: "Cambodian riels",
  );

  static const Currency KMF = Currency(
    symbol: "CF",
    name: "Comorian Franc",
    symbolNative: "FC",
    decimalDigits: 0,
    rounding: 0.0,
    code: "KMF",
    namePlural: "Comorian francs",
  );

  static const Currency KRW = Currency(
    symbol: "₩",
    name: "South Korean Won",
    symbolNative: "₩",
    decimalDigits: 0,
    rounding: 0.0,
    code: "KRW",
    namePlural: "South Korean won",
  );

  static const Currency KWD = Currency(
    symbol: "KD",
    name: "Kuwaiti Dinar",
    symbolNative: "د.ك.‏",
    decimalDigits: 3,
    rounding: 0.0,
    code: "KWD",
    namePlural: "Kuwaiti dinars",
  );

  static const Currency KZT = Currency(
    symbol: "KZT",
    name: "Kazakhstani Tenge",
    symbolNative: "тңг.",
    decimalDigits: 2,
    rounding: 0.0,
    code: "KZT",
    namePlural: "Kazakhstani tenges",
  );

  static const Currency LBP = Currency(
    symbol: "LB£",
    name: "Lebanese Pound",
    symbolNative: "ل.ل.‏",
    decimalDigits: 0,
    rounding: 0.0,
    code: "LBP",
    namePlural: "Lebanese pounds",
  );

  static const Currency LKR = Currency(
    symbol: "SLRs",
    name: "Sri Lankan Rupee",
    symbolNative: "SL Re",
    decimalDigits: 2,
    rounding: 0.0,
    code: "LKR",
    namePlural: "Sri Lankan rupees",
  );

  static const Currency LTL = Currency(
    symbol: "SLRs",
    name: "Lithuanian Litas",
    symbolNative: "Lt",
    decimalDigits: 2,
    rounding: 0.0,
    code: "LTL",
    namePlural: "Lithuanian litai",
  );

  static const Currency LVL = Currency(
    symbol: "Ls",
    name: "Latvian Lats",
    symbolNative: "Ls",
    decimalDigits: 2,
    rounding: 0.0,
    code: "LVL",
    namePlural: "Latvian lati",
  );

  static const Currency LYD = Currency(
    symbol: "LD",
    name: "Libyan Dinar",
    symbolNative: "د.ل.‏",
    decimalDigits: 3,
    rounding: 0.0,
    code: "LYD",
    namePlural: "Libyan dinars",
  );

  static const Currency MAD = Currency(
    symbol: "MAD",
    name: "Moroccan Dirham",
    symbolNative: "د.م.‏",
    decimalDigits: 2,
    rounding: 0.0,
    code: "MAD",
    namePlural: "Libyan dinars",
  );

  static const Currency MDL = Currency(
    symbol: "MDL",
    name: "Moldovan Leu",
    symbolNative: "MDL",
    decimalDigits: 2,
    rounding: 0.0,
    code: "MDL",
    namePlural: "Moldovan lei",
  );

  static const Currency MGA = Currency(
    symbol: "MGA",
    name: "Malagasy Ariary",
    symbolNative: "MGA",
    decimalDigits: 2,
    rounding: 0.0,
    code: "MGA",
    namePlural: "Malagasy Ariaries",
  );

  static const Currency MKD = Currency(
    symbol: "MKD",
    name: "Macedonian Denar",
    symbolNative: "MKD",
    decimalDigits: 2,
    rounding: 0.0,
    code: "MKD",
    namePlural: "Macedonian denari",
  );

  static const Currency MMK = Currency(
    symbol: "MMK",
    name: "Myanma Kyat",
    symbolNative: "K",
    decimalDigits: 0,
    rounding: 0.0,
    code: "MMK",
    namePlural: "Myanma kyats",
  );

  static const Currency MOP = Currency(
    symbol: "MOP\$",
    name: "Macanese Pataca",
    symbolNative: "MOP\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "MOP",
    namePlural: "Macanese patacas",
  );

  static const Currency MUR = Currency(
    symbol: "MURs",
    name: "Mauritian Rupee",
    symbolNative: "MURs",
    decimalDigits: 0,
    rounding: 0.0,
    code: "MOP",
    namePlural: "Mauritian rupees",
  );

  static const Currency MVR = Currency(
    symbol: "Rf.",
    name: "Maldivian Rufiyaa",
    symbolNative: ".ރ",
    decimalDigits: 2,
    rounding: 0.0,
    code: "MVR",
    namePlural: "Maldivian Rufiyaa",
  );

  static const Currency MXN = Currency(
    symbol: "MX\$",
    name: "Mexican Peso",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "MXN",
    namePlural: "Mexican pesos",
  );

  static const Currency MYR = Currency(
    symbol: "RM",
    name: "Malaysian Ringgit",
    symbolNative: "RM",
    decimalDigits: 2,
    rounding: 0.0,
    code: "MYR",
    namePlural: "Malaysian ringgits",
  );

  static const Currency MZN = Currency(
    symbol: "MTn",
    name: "Mozambican Metical",
    symbolNative: "MTn",
    decimalDigits: 2,
    rounding: 0.0,
    code: "MZN",
    namePlural: "Mozambican meticals",
  );

  static const Currency NAD = Currency(
    symbol: "N\$",
    name: "Namibian Dollar",
    symbolNative: "N\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "NAD",
    namePlural: "Namibian dollars",
  );

  static const Currency NGN = Currency(
    symbol: "₦",
    name: "Nigerian Naira",
    symbolNative: "₦",
    decimalDigits: 2,
    rounding: 0.0,
    code: "NGN",
    namePlural: "Nigerian nairas",
  );

  static const Currency NIO = Currency(
    symbol: "C\$",
    name: "Nicaraguan Córdoba",
    symbolNative: "C\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "NIO",
    namePlural: "Nicaraguan córdobas",
  );

  static const Currency NOK = Currency(
    symbol: "Nkr",
    name: "Norwegian Krone",
    symbolNative: "kr",
    decimalDigits: 2,
    rounding: 0.0,
    code: "NOK",
    namePlural: "Norwegian kroner",
  );

  static const Currency NPR = Currency(
    symbol: "NPRs",
    name: "Nepalese Rupee",
    symbolNative: "नेरू",
    decimalDigits: 2,
    rounding: 0.0,
    code: "NPR",
    namePlural: "Nepalese rupees",
  );

  static const Currency NZD = Currency(
    symbol: "NZ\$",
    name: "New Zealand Dollar",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "NZD",
    namePlural: "New Zealand dollars",
  );

  static const Currency OMR = Currency(
    symbol: "OMR",
    name: "Omani Rial",
    symbolNative: "ر.ع.‏",
    decimalDigits: 3,
    rounding: 0.0,
    code: "OMR",
    namePlural: "Omani rials",
  );

  static const Currency PAB = Currency(
    symbol: "B/.",
    name: "Panamanian Balboa",
    symbolNative: "B/.",
    decimalDigits: 2,
    rounding: 0.0,
    code: "PAB",
    namePlural: "Omani rials",
  );

  static const Currency PEN = Currency(
    symbol: "S/.",
    name: "Peruvian Nuevo Sol",
    symbolNative: "S/.",
    decimalDigits: 2,
    rounding: 0.0,
    code: "PEN",
    namePlural: "Peruvian nuevos soles",
  );

  static const Currency PHP = Currency(
    symbol: "₱",
    name: "Philippine Peso",
    symbolNative: "₱",
    decimalDigits: 2,
    rounding: 0.0,
    code: "PHP",
    namePlural: "Philippine pesos",
  );

  static const Currency PKR = Currency(
    symbol: "PKRs",
    name: "Pakistani Rupee",
    symbolNative: "₨",
    decimalDigits: 0,
    rounding: 0.0,
    code: "PKR",
    namePlural: "Pakistani rupees",
  );

  static const Currency PLN = Currency(
      symbol: "zł",
      name: "Polish Zloty",
      symbolNative: "zł",
      decimalDigits: 2,
      rounding: 0.0,
      code: "PLN",
      namePlural: "Polish zlotys");

  static const Currency PYG = Currency(
      symbol: "₲",
      name: "Paraguayan Guarani",
      symbolNative: "₲",
      decimalDigits: 0,
      rounding: 0.0,
      code: "PYG",
      namePlural: "Paraguayan guaranis");

  static const Currency QAR = Currency(
    symbol: "QR",
    name: "Qatari Rial",
    symbolNative: "ر.ق.‏",
    decimalDigits: 2,
    rounding: 0.0,
    code: "QAR",
    namePlural: "Qatari rials",
  );

  static const Currency RON = Currency(
    symbol: "RON",
    name: "Romanian Leu",
    symbolNative: "RON‏",
    decimalDigits: 2,
    rounding: 0.0,
    code: "RON",
    namePlural: "Romanian lei",
  );

  static const Currency RSD = Currency(
    symbol: "din.",
    name: "Serbian Dinar",
    symbolNative: "дин.",
    decimalDigits: 0,
    rounding: 0.0,
    code: "RSD",
    namePlural: "Serbian dinars",
  );

  static const Currency RUB = Currency(
    symbol: "RUB",
    name: "Russian Ruble",
    symbolNative: "₽.",
    decimalDigits: 2,
    rounding: 0.0,
    code: "RUB",
    namePlural: "Russian rubles",
  );

  static const Currency RWF = Currency(
    symbol: "RWF",
    name: "Rwandan Franc",
    symbolNative: "FR",
    decimalDigits: 0,
    rounding: 0.0,
    code: "RWF",
    namePlural: "Rwandan francs",
  );

  static const Currency SAR = Currency(
    symbol: "SR",
    name: "Saudi Riyal",
    symbolNative: "ر.س.‏",
    decimalDigits: 2,
    rounding: 0.0,
    code: "SAR",
    namePlural: "Saudi riyals",
  );

  static const Currency SDG = Currency(
    symbol: "SDG",
    name: "Sudanese Pound",
    symbolNative: "SDG",
    decimalDigits: 2,
    rounding: 0.0,
    code: "SDG",
    namePlural: "Sudanese Pound",
  );

  static const Currency SEK = Currency(
    symbol: "Skr",
    name: "Swedish Krona",
    symbolNative: "kr",
    decimalDigits: 2,
    rounding: 0.0,
    code: "SEK",
    namePlural: "Swedish kronor",
  );

  static const Currency SGD = Currency(
    symbol: "S\$",
    name: "Singapore Dollar",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "SGD",
    namePlural: "Singapore dollars",
  );

  static const Currency SOS = Currency(
    symbol: "Ssh",
    name: "Somali Shilling",
    symbolNative: "Ssh",
    decimalDigits: 0,
    rounding: 0.0,
    code: "SOS",
    namePlural: "Somali shillings",
  );

  static const Currency SYP = Currency(
    symbol: "SY£",
    name: "Syrian Pound",
    symbolNative: "ل.س.‏",
    decimalDigits: 0,
    rounding: 0.0,
    code: "SYP",
    namePlural: "Syrian pounds",
  );

  static const Currency THB = Currency(
    symbol: "฿",
    name: "Thai Baht",
    symbolNative: "฿",
    decimalDigits: 2,
    rounding: 0.0,
    code: "THB",
    namePlural: "Thai baht",
  );

  static const Currency TND = Currency(
    symbol: "DT",
    name: "Tunisian Dinar",
    symbolNative: "د.ت.‏",
    decimalDigits: 3,
    rounding: 0.0,
    code: "TND",
    namePlural: "Tunisian dinars",
  );

  static const Currency TOP = Currency(
    symbol: "T\$",
    name: "Tongan Paʻanga",
    symbolNative: "T\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "TOP",
    namePlural: "Tongan paʻanga",
  );

  static const Currency TRY = Currency(
    symbol: "TL",
    name: "Turkish Lira",
    symbolNative: "TL",
    decimalDigits: 2,
    rounding: 0.0,
    code: "TRY",
    namePlural: "Turkish Lira",
  );

  static const Currency TTD = Currency(
    symbol: "TT\$",
    name: "Trinidad and Tobago Dollar",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "TTD",
    namePlural: "Trinidad and Tobago dollars",
  );

  static const Currency TWD = Currency(
    symbol: "NT\$",
    name: "Tanzanian Shilling",
    symbolNative: "TSh",
    decimalDigits: 2,
    rounding: 0.0,
    code: "TWD",
    namePlural: "New Taiwan dollars",
  );

  static const Currency TZS = Currency(
    symbol: "TSh",
    name: "New Taiwan Dollar",
    symbolNative: "TSh",
    decimalDigits: 0,
    rounding: 0.0,
    code: "TZS",
    namePlural: "Tanzanian shillings",
  );

  static const Currency UAH = Currency(
    symbol: "₴",
    name: "Ukrainian Hryvnia",
    symbolNative: "₴",
    decimalDigits: 2,
    rounding: 0.0,
    code: "UAH",
    namePlural: "Ukrainian hryvnias",
  );

  static const Currency UGX = Currency(
    symbol: "USh",
    name: "Ugandan Shilling",
    symbolNative: "USh",
    decimalDigits: 0,
    rounding: 0.0,
    code: "UGX",
    namePlural: "Ugandan shillings",
  );

  static const Currency UYU = Currency(
    symbol: "\$U",
    name: "Uruguayan Peso",
    symbolNative: "\$",
    decimalDigits: 2,
    rounding: 0.0,
    code: "UYU",
    namePlural: "Uruguayan Peso",
  );

  static const Currency UZS = Currency(
    symbol: "UZS",
    name: "Uzbekistan Som",
    symbolNative: "Bs.F.",
    decimalDigits: 0,
    rounding: 0.0,
    code: "UZS",
    namePlural: "Uzbekistan som",
  );

  static const Currency VEF = Currency(
    symbol: "Bs.F.",
    name: "Venezuelan Bolívar",
    symbolNative: "Bs.F.",
    decimalDigits: 2,
    rounding: 0.0,
    code: "VEF",
    namePlural: "Venezuelan bolívars",
  );

  static const Currency VND = Currency(
    symbol: "₫",
    name: "Vietnamese Dong",
    symbolNative: "₫",
    decimalDigits: 0,
    rounding: 0.0,
    code: "VND",
    namePlural: "Vietnamese dong",
  );

  static const Currency XAF = Currency(
    symbol: "FCFA",
    name: "CFA Franc BEAC",
    symbolNative: "FCFA",
    decimalDigits: 0,
    rounding: 0.0,
    code: "XAF",
    namePlural: "CFA francs BEAC",
  );

  static const Currency XOF = Currency(
    symbol: "CFA",
    name: "CFA Franc BCEAO",
    symbolNative: "CFA",
    decimalDigits: 0,
    rounding: 0.0,
    code: "XOF",
    namePlural: "CFA francs BCEAO",
  );

  static const Currency YER = Currency(
    symbol: "YR",
    name: "Yemeni Rial",
    symbolNative: "ر.ي.‏",
    decimalDigits: 0,
    rounding: 0.0,
    code: "YER",
    namePlural: "Yemeni rials",
  );

  static const Currency ZAR = Currency(
    symbol: "R",
    name: "South African Rand",
    symbolNative: "R",
    decimalDigits: 2,
    rounding: 0.0,
    code: "ZAR",
    namePlural: "South African rand",
  );

  static const Currency ZMK = Currency(
    symbol: "ZK",
    name: "Zambian Kwacha",
    symbolNative: "ZK",
    decimalDigits: 0,
    rounding: 0.0,
    code: "ZMK",
    namePlural: "Zambian kwachas",
  );

  static const Currency ZWL = Currency(
    symbol: "ZWL\$",
    name: "Zambian Kwacha",
    symbolNative: "ZWL\$",
    decimalDigits: 0,
    rounding: 0.0,
    code: "ZWL",
    namePlural: "Zimbabwean Dollar",
  );
}
