package com.example.flutter_grpc_demo

import com.okdots.service.Service

class RunServerTask() : android.os.AsyncTask<Void, Void, String>() {
    override protected fun doInBackground(vararg objects: Void): String {
        
        Service.startServer()
        return ""
    }
}
