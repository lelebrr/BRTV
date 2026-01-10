package h4;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.media3.common.n;
import androidx.media3.common.x;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f7248a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a4.j f7249b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7250c;
    public final /* synthetic */ Runnable d;

    public /* synthetic */ f(i iVar, a4.j jVar, int i6, Runnable runnable) {
        this.f7248a = iVar;
        this.f7249b = jVar;
        this.f7250c = i6;
        this.d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a4.j jVar = this.f7249b;
        int i6 = this.f7250c;
        Runnable runnable = this.d;
        i iVar = this.f7248a;
        j4.c cVar = iVar.f;
        try {
            try {
                i4.d dVar = iVar.f7259c;
                Objects.requireNonNull(dVar);
                ((i4.g) cVar).e(new x(12, dVar));
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) iVar.f7257a.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    ((i4.g) cVar).e(new n(iVar, jVar, i6, 2));
                } else {
                    iVar.a(jVar, i6);
                }
            } catch (j4.a unused) {
                iVar.d.a(jVar, i6 + 1, false);
            }
            runnable.run();
        } catch (Throwable th) {
            runnable.run();
            throw th;
        }
    }
}
