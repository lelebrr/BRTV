package v4;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class o {

    /* renamed from: a, reason: collision with root package name */
    public final b f10704a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10705b;

    /* renamed from: c, reason: collision with root package name */
    public a1.b f10706c;
    public final List d;

    public o(String str) {
        a.c(str);
        this.f10705b = str;
        this.f10704a = new b("MediaControlChannel", null);
        this.d = Collections.synchronizedList(new ArrayList());
    }

    public final void a(n nVar) {
        this.d.add(nVar);
    }

    public final long b() {
        a1.b bVar = this.f10706c;
        if (bVar != null) {
            return ((AtomicLong) bVar.f48c).getAndIncrement();
        }
        b bVar2 = this.f10704a;
        Log.e(bVar2.f10671a, bVar2.d("Attempt to generate requestId without a sink", new Object[0]));
        return 0L;
    }

    public final void c(long j10, String str) {
        int i6 = 1;
        Object[] objArr = {str, null};
        b bVar = this.f10704a;
        bVar.getClass();
        boolean zEquals = Build.TYPE.equals("user");
        String str2 = bVar.f10671a;
        if (!zEquals && bVar.f10672b && Log.isLoggable(str2, 2)) {
            Log.v(str2, bVar.d("Sending text message: %s to: %s", objArr));
        }
        a1.b bVar2 = this.f10706c;
        if (bVar2 == null) {
            Log.e(str2, bVar.d("Attempt to send text message without a sink", new Object[0]));
            return;
        }
        p4.o oVar = (p4.o) bVar2.f47b;
        if (oVar == null) {
            throw new IllegalStateException("Device is not connected");
        }
        String str3 = this.f10705b;
        a.c(str3);
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        }
        if (str.length() > 524288) {
            b bVar3 = p4.o.F;
            Log.w(bVar3.f10671a, bVar3.d("Message send failed. Message exceeds maximum size", new Object[0]));
            throw new IllegalArgumentException("Message exceeds maximum size524288");
        }
        c6.c cVarC = c6.c.c();
        cVarC.f3394c = new p4.k(oVar, str3, str, i6);
        cVarC.f3392a = 8405;
        w5.g gVarC = oVar.c(1, cVarC.b());
        androidx.recyclerview.widget.c cVar = new androidx.recyclerview.widget.c(bVar2, j10);
        gVarC.getClass();
        gVarC.f10821b.h(new w5.f(w5.e.f10816a, cVar));
        gVarC.g();
    }
}
