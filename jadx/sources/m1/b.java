package m1;

import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.media.MediaBrowserServiceCompat;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements IBinder.DeathRecipient {

    /* renamed from: a, reason: collision with root package name */
    public final String f8116a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8117b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8118c;
    public final p d;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f8119e = new HashMap();
    public final /* synthetic */ MediaBrowserServiceCompat f;

    public b(MediaBrowserServiceCompat mediaBrowserServiceCompat, String str, int i6, int i10, p pVar) {
        this.f = mediaBrowserServiceCompat;
        this.f8116a = str;
        this.f8117b = i6;
        this.f8118c = i10;
        if (str == null) {
            throw new NullPointerException("package shouldn't be null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("packageName should be nonempty");
        }
        if (Build.VERSION.SDK_INT >= 28) {
            l0.f.n(i6, i10, str);
        }
        this.d = pVar;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.f.f2036e.post(new a.f(26, this));
    }
}
