package com.example.flutter_grpc_demo

import com.okdots.service.Service

class StopServerTask(): android.os.AsyncTask<Void, Void, String>() {
    override protected fun doInBackground(vararg params: Void?): String {
        Service.stopServer()
        return ""
    }
}
