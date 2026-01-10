package b4;

import android.content.Context;
import i4.i;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements d4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3238a;

    /* renamed from: b, reason: collision with root package name */
    public final d4.c f3239b;

    public /* synthetic */ e(d4.c cVar, int i6) {
        this.f3238a = i6;
        this.f3239b = cVar;
    }

    @Override // v8.a
    public final Object get() {
        switch (this.f3238a) {
            case 0:
                return new d((Context) this.f3239b.f6058a, new u6.e(19), new x4.e(18));
            case 1:
                String packageName = ((Context) this.f3239b.f6058a).getPackageName();
                if (packageName != null) {
                    return packageName;
                }
                throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
            default:
                return new i((Context) this.f3239b.f6058a, Integer.valueOf(i.d).intValue(), "com.google.android.datatransport.events");
        }
    }
}
