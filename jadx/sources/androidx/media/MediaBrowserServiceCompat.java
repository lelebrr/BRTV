package androidx.media;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import androidx.mediarouter.app.c;
import com.bumptech.glide.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import m1.b;
import m1.e;
import m1.g;
import m1.i;
import m1.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {

    /* renamed from: a, reason: collision with root package name */
    public e f2033a;

    /* renamed from: b, reason: collision with root package name */
    public final b f2034b = new b(this, "android.media.session.MediaController", -1, -1, null);

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f2035c = new ArrayList();
    public final p.e d = new p.e(0);

    /* renamed from: e, reason: collision with root package name */
    public final c f2036e = new c(this);

    static {
        Log.isLoggable("MBServiceCompat", 3);
    }

    public abstract d a();

    public abstract void b();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f2033a.f8122b.onBind(intent);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 28) {
            this.f2033a = new j(this);
        } else if (i6 >= 26) {
            this.f2033a = new i(this);
        } else if (i6 >= 23) {
            this.f2033a = new g(this);
        } else {
            this.f2033a = new e(this);
        }
        this.f2033a.a();
    }

    @Override // android.app.Service
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }
}
