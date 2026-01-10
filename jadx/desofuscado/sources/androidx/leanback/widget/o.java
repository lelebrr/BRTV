package androidx.leanback.widget;

import com.google.android.gms.cast.MediaStatus;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    public final int f1866a;

    public boolean a(int i6) {
        return (this.f1866a & i6) == i6;
    }

    public boolean b() {
        return !(!a(32) || a(64) || a(128)) || a(64);
    }

    public boolean c() {
        return b() || a(128);
    }

    public o(MediaStatus mediaStatus) {
        this.f1866a = mediaStatus.f3741e;
    }
}
