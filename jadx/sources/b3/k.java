package b3;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements v2.e {

    /* renamed from: b, reason: collision with root package name */
    public final o f3201b;

    /* renamed from: c, reason: collision with root package name */
    public final URL f3202c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public String f3203e;
    public URL f;

    /* renamed from: g, reason: collision with root package name */
    public volatile byte[] f3204g;

    /* renamed from: h, reason: collision with root package name */
    public int f3205h;

    public k(URL url) {
        o oVar = l.f3206a;
        r3.f.c(url, "Argument must not be null");
        this.f3202c = url;
        this.d = null;
        r3.f.c(oVar, "Argument must not be null");
        this.f3201b = oVar;
    }

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        if (this.f3204g == null) {
            this.f3204g = c().getBytes(v2.e.f10660a);
        }
        messageDigest.update(this.f3204g);
    }

    public final String c() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        URL url = this.f3202c;
        r3.f.c(url, "Argument must not be null");
        return url.toString();
    }

    public final String d() {
        if (TextUtils.isEmpty(this.f3203e)) {
            String string = this.d;
            if (TextUtils.isEmpty(string)) {
                URL url = this.f3202c;
                r3.f.c(url, "Argument must not be null");
                string = url.toString();
            }
            this.f3203e = Uri.encode(string, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f3203e;
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return c().equals(kVar.c()) && this.f3201b.equals(kVar.f3201b);
    }

    @Override // v2.e
    public final int hashCode() {
        if (this.f3205h == 0) {
            int iHashCode = c().hashCode();
            this.f3205h = iHashCode;
            this.f3205h = this.f3201b.f3209b.hashCode() + (iHashCode * 31);
        }
        return this.f3205h;
    }

    public final String toString() {
        return c();
    }

    public k(String str) {
        o oVar = l.f3206a;
        this.f3202c = null;
        if (!TextUtils.isEmpty(str)) {
            this.d = str;
            r3.f.c(oVar, "Argument must not be null");
            this.f3201b = oVar;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }
}
