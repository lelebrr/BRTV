package u7;

import com.youth.banner.config.BannerConfig;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final String f10449a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10450b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10451c;
    public final long d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10452e;
    public final String f;

    public f(String str, long j10) {
        this.f10449a = str;
        this.f10450b = 1;
        this.f10451c = Math.max(-1, BannerConfig.SCROLL_TIME);
        this.d = j10;
        this.f10452e = 0;
        this.f = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f10449a.equals(fVar.f10449a) && this.f10450b == fVar.f10450b && this.f10451c == fVar.f10451c && this.d == fVar.d;
    }

    public final String toString() {
        return String.format(Locale.getDefault(), "{type:%s, value:%s, source:%s, server:%s, timestamp:%d, ttl:%d}", Integer.valueOf(this.f10450b), this.f10449a, Integer.valueOf(this.f10452e), this.f, Long.valueOf(this.d), Integer.valueOf(this.f10451c));
    }

    public f(String str, int i6, int i10, long j10, int i11, String str2) {
        this.f10449a = str;
        this.f10450b = i6;
        this.f10451c = i10 < 600 ? BannerConfig.SCROLL_TIME : i10;
        this.d = j10;
        this.f10452e = i11;
        this.f = str2;
    }
}
