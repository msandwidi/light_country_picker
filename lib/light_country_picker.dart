library light_country_picker;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:diacritic/diacritic.dart';
import 'package:light_country_picker/country_entity.dart';

const _platform = const MethodChannel('mamadou.s/light_country_picker');
Future<List<CountryEntity>> _fetchLocalizedCountryNames() async {
  List<CountryEntity> renamed = new List();
  Map result;
  try {
    var isoCodes = <String>[];
    CountryEntity.ALL.forEach((CountryEntity country) {
      isoCodes.add(country.isoCode);
    });
    result = await _platform.invokeMethod(
        'getCountryNames', <String, dynamic>{'isoCodes': isoCodes});
  } on PlatformException catch (e) {
    return CountryEntity.ALL;
  }

  for (var country in CountryEntity.ALL) {
    renamed.add(country.copyWith(name: result[country.isoCode]));
  }
  renamed.sort((CountryEntity a, CountryEntity b) =>
      removeDiacritics(a.name).compareTo(b.name));

  return renamed;
}

/// The country picker widget exposes an dialog to select a country from a
/// pre defined list, see [Country.ALL]
class LightCountryPicker extends StatelessWidget {
  const LightCountryPicker({
    Key key,
    this.selectedCountry,
    @required this.onChanged,
    this.dense = false,
    this.showFlag = true,
    this.showDialingCode = false,
    this.showName = true,
    this.showCurrency = false,
    this.showCurrencyISO = false,
    this.disabled = false,
    this.nameTextStyle,
    this.dialingCodeTextStyle,
    this.currencyTextStyle,
    this.currencyISOTextStyle,
  }) : super(key: key);

  final CountryEntity selectedCountry;
  final ValueChanged<CountryEntity> onChanged;
  final bool disabled;
  final bool dense;
  final bool showFlag;
  final bool showDialingCode;
  final bool showName;
  final bool showCurrency;
  final bool showCurrencyISO;
  final TextStyle nameTextStyle;
  final TextStyle dialingCodeTextStyle;
  final TextStyle currencyTextStyle;
  final TextStyle currencyISOTextStyle;

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    CountryEntity displayCountry = selectedCountry;

    if (displayCountry == null) {
      displayCountry = CountryEntity.findByIsoCode(
          Localizations.localeOf(context).countryCode);
    }

    return dense
        ? _renderDenseDisplay(context, displayCountry)
        : _renderDefaultDisplay(context, displayCountry);
  }

  _renderDefaultDisplay(
    BuildContext context,
    CountryEntity displayCountry,
  ) {
    return InkWell(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          if (showFlag)
            Container(
                child: Image.asset(
              displayCountry.asset,
              package: "light_country_picker",
              height: 32.0,
              fit: BoxFit.fitWidth,
            )),
          if (showName)
            Container(
                child: Text(
              " ${displayCountry.name}",
              style: nameTextStyle,
            )),
          if (showDialingCode && !showCurrency)
            Container(
                child: Text(
              " (+${displayCountry.dialingCode})",
              style: dialingCodeTextStyle,
            )),
          if (showCurrency)
            Container(
                child: Text(
              " ${displayCountry.currency.code} (${displayCountry.currency.symbol})",
              style: currencyTextStyle,
            )),
          if (showCurrencyISO && !showCurrency)
            Container(
                child: Text(
              " ${displayCountry.currency.code}",
              style: currencyISOTextStyle,
            )),
          if(!disabled)
          Icon(Icons.arrow_drop_down,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey.shade700
                  : Colors.white70),
        ],
      ),
      onTap: disabled
          ? null
          : () {
              _selectCountry(context, displayCountry, showCurrency);
            },
    );
  }

  _renderDenseDisplay(
    BuildContext context,
    CountryEntity displayCountry,
  ) {
    return InkWell(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            displayCountry.asset,
            package: "light_country_picker",
            height: 24.0,
            fit: BoxFit.fitWidth,
          ),
          Icon(Icons.arrow_drop_down,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey.shade700
                  : Colors.white70),
        ],
      ),
      onTap: disabled
          ? null
          : () {
              _selectCountry(context, displayCountry, showCurrency);
            },
    );
  }

  Future<Null> _selectCountry(
    BuildContext context,
    CountryEntity defaultCountry,
    bool showCurrency,
  ) async {
    final CountryEntity picked = await showCountryPicker(
      context: context,
      defaultCountry: defaultCountry,
      showCurrency: showCurrency,
    );

    if (picked != null && picked != selectedCountry) onChanged(picked);
  }
}

/// Display a [Dialog] with the country list to selection
/// you can pass and [defaultCountry], see [Country.findByIsoCode]
Future<CountryEntity> showCountryPicker({
  BuildContext context,
  CountryEntity defaultCountry,
  bool showCurrency,
}) async {
  assert(CountryEntity.findByIsoCode(defaultCountry.isoCode) != null);

  return await showDialog<CountryEntity>(
    context: context,
    builder: (BuildContext context) => _CountryPickerDialog(
      defaultCountry: defaultCountry,
      showCurrency: showCurrency,
    ),
  );
}

class _CountryPickerDialog extends StatefulWidget {
  final bool showCurrency;
  final CountryEntity defaultCountry;
  const _CountryPickerDialog({
    Key key,
    this.defaultCountry,
    this.showCurrency,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CountryPickerDialogState();
}

class _CountryPickerDialogState extends State<_CountryPickerDialog> {
  TextEditingController controller = new TextEditingController();
  String filter;
  List<CountryEntity> countries;

  @override
  void initState() {
    super.initState();

    countries = CountryEntity.ALL;

    _fetchLocalizedCountryNames().then((renamed) {
      setState(() {
        countries = renamed;
      });
    });

    controller.addListener(() {
      setState(() {
        filter = controller.text;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Dialog(
        child: Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                hintText: MaterialLocalizations.of(context).searchFieldLabel,
                prefixIcon: Icon(Icons.search),
                suffixIcon: filter == null || filter == ""
                    ? Container(
                        height: 0.0,
                        width: 0.0,
                      )
                    : InkWell(
                        child: Icon(Icons.clear),
                        onTap: () {
                          controller.clear();
                        },
                      ),
              ),
              controller: controller,
            ),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: countries.length,
                  itemBuilder: (BuildContext context, int index) {
                    CountryEntity country = countries[index];
                    if (filter == null ||
                        filter == "" ||
                        country.name
                            .toLowerCase()
                            .contains(filter.toLowerCase()) ||
                        country.isoCode.contains(filter)) {
                      return InkWell(
                        child: ListTile(
                          trailing: widget.showCurrency
                              ? Text(
                                  "${country.currency.code} (${country.currency.symbol})")
                              : Text("+ ${country.dialingCode}"),
                          title: Row(
                            children: <Widget>[
                              Image.asset(
                                country.asset,
                                package: "light_country_picker",
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    country.name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context, country);
                        },
                      );
                    }
                    return Container();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
