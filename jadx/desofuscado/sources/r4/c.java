package r4;

import androidx.media3.exoplayer.Renderer;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.internal.ResourceProvider;
import com.google.android.gms.internal.cast.q1;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public String f9526a;

    /* renamed from: b, reason: collision with root package name */
    public final q1 f9527b = NotificationOptions.I;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f9528c = NotificationOptions.J;
    public final int d = b("smallIconDrawableResId");

    /* renamed from: e, reason: collision with root package name */
    public final int f9529e = b("stopLiveStreamDrawableResId");
    public final int f = b("pauseDrawableResId");

    /* renamed from: g, reason: collision with root package name */
    public final int f9530g = b("playDrawableResId");

    /* renamed from: h, reason: collision with root package name */
    public final int f9531h = b("skipNextDrawableResId");

    /* renamed from: i, reason: collision with root package name */
    public final int f9532i = b("skipPrevDrawableResId");

    /* renamed from: j, reason: collision with root package name */
    public final int f9533j = b("forwardDrawableResId");

    /* renamed from: k, reason: collision with root package name */
    public final int f9534k = b("forward10DrawableResId");

    /* renamed from: l, reason: collision with root package name */
    public final int f9535l = b("forward30DrawableResId");

    /* renamed from: m, reason: collision with root package name */
    public final int f9536m = b("rewindDrawableResId");

    /* renamed from: n, reason: collision with root package name */
    public final int f9537n = b("rewind10DrawableResId");

    /* renamed from: o, reason: collision with root package name */
    public final int f9538o = b("rewind30DrawableResId");

    /* renamed from: p, reason: collision with root package name */
    public final int f9539p = b("disconnectDrawableResId");

    /* renamed from: q, reason: collision with root package name */
    public final long f9540q = Renderer.DEFAULT_DURATION_TO_PROGRESS_US;

    public static int b(String str) {
        try {
            Map map = ResourceProvider.f3849a;
            Integer num = (Integer) ResourceProvider.class.getMethod("findResourceByName", String.class).invoke(null, str);
            if (num == null) {
                return 0;
            }
            return num.intValue();
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return 0;
        }
    }

    public final NotificationOptions a() {
        return new NotificationOptions(this.f9527b, this.f9528c, this.f9540q, this.f9526a, this.d, this.f9529e, this.f, this.f9530g, this.f9531h, this.f9532i, this.f9533j, this.f9534k, this.f9535l, this.f9536m, this.f9537n, this.f9538o, this.f9539p, b("notificationImageSizeDimenResId"), b("castingToDeviceStringResId"), b("stopLiveStreamStringResId"), b("pauseStringResId"), b("playStringResId"), b("skipNextStringResId"), b("skipPrevStringResId"), b("forwardStringResId"), b("forward10StringResId"), b("forward30StringResId"), b("rewindStringResId"), b("rewind10StringResId"), b("rewind30StringResId"), b("disconnectStringResId"), null, false, false);
    }
}
