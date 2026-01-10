package g2;

import android.net.Uri;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements f {

    /* renamed from: a, reason: collision with root package name */
    public final w8.i f7075a;

    /* renamed from: b, reason: collision with root package name */
    public final w8.i f7076b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f7077c;

    public i(w8.i iVar, w8.i iVar2, boolean z7) {
        this.f7075a = iVar;
        this.f7076b = iVar2;
        this.f7077c = z7;
    }

    @Override // g2.f
    public final g a(Object obj, m2.m mVar) {
        Uri uri = (Uri) obj;
        if (j9.i.a(uri.getScheme(), "http") || j9.i.a(uri.getScheme(), "https")) {
            return new l(uri.toString(), mVar, this.f7075a, this.f7076b, this.f7077c);
        }
        return null;
    }
}
