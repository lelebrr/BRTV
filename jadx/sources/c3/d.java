package c3;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import b3.t;
import b3.u;
import v2.h;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements u {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3386a;

    /* renamed from: b, reason: collision with root package name */
    public final u f3387b;

    /* renamed from: c, reason: collision with root package name */
    public final u f3388c;
    public final Class d;

    public d(Context context, u uVar, u uVar2, Class cls) {
        this.f3386a = context.getApplicationContext();
        this.f3387b = uVar;
        this.f3388c = uVar2;
        this.d = cls;
    }

    @Override // b3.u
    public final t a(Object obj, int i6, int i10, h hVar) {
        Uri uri = (Uri) obj;
        return new t(new q3.d(uri), new c(this.f3386a, this.f3387b, this.f3388c, uri, i6, i10, hVar, this.d));
    }

    @Override // b3.u
    public final boolean b(Object obj) {
        return Build.VERSION.SDK_INT >= 29 && com.bumptech.glide.c.i((Uri) obj);
    }
}
