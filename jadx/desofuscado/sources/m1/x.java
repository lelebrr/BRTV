package m1;

import android.media.VolumeProvider;
import android.os.Build;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class x {

    /* renamed from: a, reason: collision with root package name */
    public final int f8153a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8154b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8155c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public w f8156e;
    public VolumeProvider f;

    public x(int i6, String str, int i10, int i11) {
        this.f8153a = i6;
        this.f8154b = i10;
        this.d = i11;
        this.f8155c = str;
    }

    public final VolumeProvider a() {
        if (this.f == null) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.f = new t(this, this.f8153a, this.f8154b, this.d, this.f8155c);
            } else {
                this.f = new u(this, this.f8153a, this.f8154b, this.d);
            }
        }
        return this.f;
    }
}
