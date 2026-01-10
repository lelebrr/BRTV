package x4;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.media3.common.C;
import com.google.android.gms.internal.cast.x0;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g extends x0 {

    /* renamed from: b, reason: collision with root package name */
    public final Context f11008b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f11009c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(b bVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper(), 4);
        this.f11009c = bVar;
        this.f11008b = context.getApplicationContext();
    }

    @Override // com.google.android.gms.internal.cast.x0, android.os.Handler
    public final void handleMessage(Message message) throws Resources.NotFoundException, PackageManager.NameNotFoundException {
        PendingIntent activity;
        int i6 = message.what;
        if (i6 != 1) {
            Log.w("GoogleApiAvailability", "Don't know how to handle this message: " + i6);
            return;
        }
        int i10 = c.f10998a;
        b bVar = this.f11009c;
        Context context = this.f11008b;
        int iB = bVar.b(context, i10);
        AtomicBoolean atomicBoolean = d.f11000a;
        if (iB == 1 || iB == 2 || iB == 3 || iB == 9) {
            Intent intentA = bVar.a(context, iB, "n");
            if (intentA == null) {
                activity = null;
            } else {
                activity = PendingIntent.getActivity(context, 0, intentA, Build.VERSION.SDK_INT >= 23 ? 201326592 : C.BUFFER_FLAG_FIRST_SAMPLE);
            }
            bVar.f(context, iB, activity);
        }
    }
}
