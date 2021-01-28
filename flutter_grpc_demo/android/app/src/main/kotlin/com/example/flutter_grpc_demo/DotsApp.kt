package com.example.flutter_grpc_demo

import android.app.Activity
import android.app.Application
import android.content.ComponentCallbacks2
import android.os.Bundle
import android.util.Log
import com.okdots.service.Service
import io.flutter.app.FlutterApplication
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugins.GeneratedPluginRegistrant

class DotsApp: FlutterApplication(),
//  PluginRegistry.PluginRegistrantCallback,
 Application.ActivityLifecycleCallbacks
  {

    var serviceStopped: Boolean = true

    override fun onCreate() {
        super.onCreate()
        registerActivityLifecycleCallbacks(this)
    }

    // override fun registerWith(registry: PluginRegistry) {
    //     GeneratedPluginRegistrant.registerWith(registry)
    // }

    // override fun onTrimMemory(level: Int) {
    //     super.onTrimMemory(level)
    //     Log.i("GoLog", "onTrimMemory Level: $level")
    //     if (level >= ComponentCallbacks2.TRIM_MEMORY_BACKGROUND) {
    //         Log.i("GoLog", "Stopping server in onStop....")
    //         this.serviceStopped = true
    //         StopServerTask().execute()
    //     }
    // }

    override fun onActivityPaused(activity: Activity) {}

    override fun onActivityResumed(activity: Activity) {}

     override fun onActivityStarted(activity: Activity) {
        Log.i("GoLog", "Starting server in onActivityStarted....")
        if (this.serviceStopped) {
            this.serviceStopped = false
            RunServerTask().execute()
        }
    }

     override fun onActivityDestroyed(activity: Activity) {
        Log.i("GoLog", "Stopping server in onActivityDestroyed....")
        this.serviceStopped = true
        StopServerTask().execute()
    }

    override fun onActivitySaveInstanceState(activity: Activity, outState: Bundle) {}

    override fun onActivityStopped(activity: Activity) {}

    override fun onActivityCreated(activity: Activity, savedInstanceState: Bundle?) {}
}