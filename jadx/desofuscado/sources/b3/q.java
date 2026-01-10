package b3;

import android.content.Context;
import android.net.Uri;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q implements u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3214a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f3215b;

    public q(Context context, int i6) {
        this.f3214a = i6;
        switch (i6) {
            case 1:
                this.f3215b = context.getApplicationContext();
                break;
            case 2:
                this.f3215b = context.getApplicationContext();
                break;
            default:
                this.f3215b = context;
                break;
        }
    }

    @Override // b3.u
    public final t a(Object obj, int i6, int i10, v2.h hVar) {
        Long l9;
        switch (this.f3214a) {
            case 0:
                Uri uri = (Uri) obj;
                return new t(new q3.d(uri), new p(this.f3215b, 0, uri));
            case 1:
                Uri uri2 = (Uri) obj;
                if (i6 == Integer.MIN_VALUE || i10 == Integer.MIN_VALUE || i6 > 512 || i10 > 384) {
                    return null;
                }
                q3.d dVar = new q3.d(uri2);
                Context context = this.f3215b;
                return new t(dVar, f.c(context, uri2, new w2.a(context.getContentResolver(), 0)));
            default:
                Uri uri3 = (Uri) obj;
                if (i6 == Integer.MIN_VALUE || i10 == Integer.MIN_VALUE || i6 > 512 || i10 > 384 || (l9 = (Long) hVar.c(e3.f0.d)) == null || l9.longValue() != -1) {
                    return null;
                }
                q3.d dVar2 = new q3.d(uri3);
                Context context2 = this.f3215b;
                return new t(dVar2, f.c(context2, uri3, new w2.a(context2.getContentResolver(), 1)));
        }
    }

    @Override // b3.u
    public final boolean b(Object obj) {
        switch (this.f3214a) {
            case 0:
                return com.bumptech.glide.c.i((Uri) obj);
            case 1:
                Uri uri = (Uri) obj;
                return com.bumptech.glide.c.i(uri) && !uri.getPathSegments().contains("video");
            default:
                Uri uri2 = (Uri) obj;
                return com.bumptech.glide.c.i(uri2) && uri2.getPathSegments().contains("video");
        }
    }
}
