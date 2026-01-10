package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import androidx.media3.exoplayer.hls.offline.a;
import java.io.File;
import s2.c;
import t1.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) throws Throwable {
        Bundle extras;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if ("androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
            d.s(context, new a(), new c(1, this), true);
            return;
        }
        if ("androidx.profileinstaller.action.SKIP_FILE".equals(action)) {
            Bundle extras2 = intent.getExtras();
            if (extras2 != null) {
                String string = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
                if (!"WRITE_SKIP_FILE".equals(string)) {
                    if ("DELETE_SKIP_FILE".equals(string)) {
                        new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat").delete();
                        Log.d("ProfileInstaller", "RESULT_DELETE_SKIP_FILE_SUCCESS");
                        setResultCode(11);
                        return;
                    }
                    return;
                }
                c cVar = new c(1, this);
                try {
                    d.e(context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0), context.getFilesDir());
                    cVar.b(10, null);
                    return;
                } catch (PackageManager.NameNotFoundException e5) {
                    cVar.b(7, e5);
                    return;
                }
            }
            return;
        }
        if ("androidx.profileinstaller.action.SAVE_PROFILE".equals(action)) {
            c cVar2 = new c(1, this);
            if (Build.VERSION.SDK_INT < 24) {
                cVar2.b(13, null);
                return;
            } else {
                Process.sendSignal(Process.myPid(), 10);
                cVar2.b(12, null);
                return;
            }
        }
        if (!"androidx.profileinstaller.action.BENCHMARK_OPERATION".equals(action) || (extras = intent.getExtras()) == null) {
            return;
        }
        String string2 = extras.getString("EXTRA_BENCHMARK_OPERATION");
        c cVar3 = new c(1, this);
        if (!"DROP_SHADER_CACHE".equals(string2)) {
            cVar3.b(16, null);
            return;
        }
        int i6 = Build.VERSION.SDK_INT;
        if (d.c(i6 >= 24 ? context.createDeviceProtectedStorageContext().getCodeCacheDir() : i6 >= 23 ? context.getCodeCacheDir() : context.getCacheDir())) {
            cVar3.b(14, null);
        } else {
            cVar3.b(15, null);
        }
    }
}
