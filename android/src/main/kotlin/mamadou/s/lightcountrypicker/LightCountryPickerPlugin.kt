package mamadou.s.lightcountrypicker

import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.PluginRegistry.Registrar
import java.util.*
import kotlin.collections.HashMap

class LightCountryPickerPlugin(): MethodCallHandler {

  companion object {
    private val CHANNEL = "mamadou.s/light_country_picker"
    private val GET_COUNTRY_NAMES = "getCountryNames"
    
    @JvmStatic
    fun registerWith(registrar: Registrar): Unit {
      val channel = MethodChannel(registrar.messenger(), CHANNEL)
      channel.setMethodCallHandler(LightCountryPickerPlugin())
    }
  }

  override fun onMethodCall(call: MethodCall, result: Result): Unit {
    if (call.method.equals(GET_COUNTRY_NAMES)) {
      result.success(getAllCountryNames(call.argument("isoCodes")))
    } else {
      result.notImplemented()
    }
  }

  private fun getAllCountryNames(isoCodes: ArrayList<String>?): HashMap<String, String> {
    val localCountries = HashMap<String, String>()
    for (isoCode:String in isoCodes!!.filterNotNull()) {
      localCountries[isoCode] = Locale("", isoCode).displayCountry
    }
    return localCountries
  }
}
