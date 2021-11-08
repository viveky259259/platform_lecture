package com.example.platform_lecture

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    val methodName:String = "counterMethodChannel";
    var counter:Int =0
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
       val methodChannel:MethodChannel= MethodChannel(flutterEngine.dartExecutor.binaryMessenger,methodName)


        methodChannel.setMethodCallHandler{call:MethodCall, result:MethodChannel.Result->
            if(call.method.compareTo("increment")==0){
                // method call is increment
                counter++
                result.success(counter)
//                result.error("VAR123","No counter variable found","Plesae ensure that you have done correct coding at paltform");
            }

        }

    }
}
