package com.tvbus.engine;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class TVService extends Service {
    static final String TAG = "TVBusService";
    public static boolean bInited;

    /* compiled from: MyApplication */
    public class TVServer implements Runnable {
        private static final String TAG = "TVBusServer";
        TVCore tvcore;

        private TVServer() {
            this.tvcore = TVCore.getInstance();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.tvcore.setPlayPort(8902);
            this.tvcore.setServPort(0);
            this.tvcore.setRunningMode(1);
            int iInit = this.tvcore.init(TVService.this.getApplicationContext());
            TVService.bInited = true;
            if (iInit == 0) {
                this.tvcore.run();
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Thread thread = new Thread(new TVServer());
        thread.setName("tvcore");
        thread.start();
    }

    @Override // android.app.Service
    public void onDestroy() {
        TVCore.getInstance().quit();
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i6, int i10) {
        return 2;
    }
}
