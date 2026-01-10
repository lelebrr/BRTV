package z9;

import androidx.leanback.widget.o;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.util.concurrent.TimeUnit;
import x9.t;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11697a;

    /* renamed from: b, reason: collision with root package name */
    public static final long f11698b;

    /* renamed from: c, reason: collision with root package name */
    public static final int f11699c;
    public static final int d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f11700e;
    public static final f f;

    /* renamed from: g, reason: collision with root package name */
    public static final o f11701g;

    /* renamed from: h, reason: collision with root package name */
    public static final o f11702h;

    static {
        String property;
        int i6 = t.f11131a;
        try {
            property = System.getProperty("kotlinx.coroutines.scheduler.default.name");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            property = "DefaultDispatcher";
        }
        f11697a = property;
        f11698b = x9.a.h("kotlinx.coroutines.scheduler.resolution.ns", SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US, 1L, Long.MAX_VALUE);
        int i10 = t.f11131a;
        if (i10 < 2) {
            i10 = 2;
        }
        f11699c = x9.a.i("kotlinx.coroutines.scheduler.core.pool.size", i10, 1, 0, 8);
        d = x9.a.i("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4);
        f11700e = TimeUnit.SECONDS.toNanos(x9.a.h("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 1L, Long.MAX_VALUE));
        f = f.f11692a;
        f11701g = new o(0);
        f11702h = new o(1);
    }
}
