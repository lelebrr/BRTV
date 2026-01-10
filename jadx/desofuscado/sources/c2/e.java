package c2;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import java.io.File;
import okio.FileSystem;
import okio.Path;
import t9.b0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends j9.j implements i9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3348a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f3349b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(g gVar, int i6) {
        super(0);
        this.f3348a = i6;
        this.f3349b = gVar;
    }

    @Override // i9.a
    public final Object invoke() {
        int largeMemoryClass;
        e2.k kVarA;
        int i6 = 3;
        int i10 = 0;
        switch (this.f3348a) {
            case 0:
                Context context = this.f3349b.f3351a;
                Bitmap.Config[] configArr = r2.f.f9467a;
                double d = 0.2d;
                try {
                    Object objO = u7.d.o(context, ActivityManager.class);
                    j9.i.c(objO);
                    if (((ActivityManager) objO).isLowRamDevice()) {
                        d = 0.15d;
                    }
                } catch (Exception unused) {
                }
                c6.b bVar = new c6.b(3);
                if (d > 0.0d) {
                    Bitmap.Config[] configArr2 = r2.f.f9467a;
                    try {
                        Object objO2 = u7.d.o(context, ActivityManager.class);
                        j9.i.c(objO2);
                        ActivityManager activityManager = (ActivityManager) objO2;
                        largeMemoryClass = (context.getApplicationInfo().flags & ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass();
                    } catch (Exception unused2) {
                        largeMemoryClass = 256;
                    }
                    double d10 = d * largeMemoryClass;
                    double d11 = 1024;
                    i10 = (int) (d10 * d11 * d11);
                }
                return new k2.b(i10 > 0 ? new a7.f(i10, bVar) : new j7.c(i6, bVar), bVar);
            default:
                r2.k kVar = r2.k.f9480a;
                Context context2 = this.f3349b.f3351a;
                synchronized (kVar) {
                    try {
                        kVarA = r2.k.f9481b;
                        if (kVarA == null) {
                            e2.a aVar = new e2.a();
                            aVar.f6445b = FileSystem.SYSTEM;
                            aVar.f6446c = 0.02d;
                            aVar.d = 10485760L;
                            aVar.f6447e = 262144000L;
                            aVar.f = b0.f10181b;
                            Bitmap.Config[] configArr3 = r2.f.f9467a;
                            File cacheDir = context2.getCacheDir();
                            if (cacheDir == null) {
                                throw new IllegalStateException("cacheDir == null");
                            }
                            cacheDir.mkdirs();
                            aVar.f6444a = Path.Companion.get$default(Path.Companion, g9.a.p(cacheDir), false, 1, (Object) null);
                            kVarA = aVar.a();
                            r2.k.f9481b = kVarA;
                        }
                    } finally {
                    }
                }
                return kVarA;
        }
    }
}
