package mamadou.s.lightcountrypicker

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.PluginRegistry.Registrar
import java.util.*
import kotlin.collections.HashMap

class LightCountryPickerPlugin(): FlutterPlugin, MethodCallHandler {

  companion object {
    private val CHANNEL = "mamadou.s/light_country_picker"
    private val GET_COUNTRY_NAMES = "getCountryNames"
    
    @JvmStatic
    fun registerWith(registrar: Registrar): Unit {
      val channel = MethodChannel(registrar.messenger(), CHANNEL)
      channel.setMethodCallHandler(LightCountryPickerPlugin())
    }
  }

    /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "mamadou.s/light_country_picker")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result): Unit{
    if (call.method.equals(GET_COUNTRY_NAMES)) {
      result.success(getAllCountryNames(call.argument("isoCodes")))
    }else if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  /*override fun onMethodCall(call: MethodCall, result: Result): Unit {
    if (call.method.equals(GET_COUNTRY_NAMES)) {
      result.success(getAllCountryNames(call.argument("isoCodes")))
    } else {
      result.notImplemented()
    }
  }*/

  private fun getAllCountryNames(isoCodes: ArrayList<String>?): HashMap<String, String> {
    val localCountries = HashMap<String, String>()
    for (isoCode:String in isoCodes!!.filterNotNull()) {
      localCountries[isoCode] = Locale("", isoCode).displayCountry
    }
    return localCountries
  }
}
