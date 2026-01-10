package n0;

import android.text.TextUtils;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c0 extends c1.c {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f8301e;

    public c0(int i6, Class cls, int i10, int i11, int i12) {
        this.f8301e = i12;
        this.f3334a = i6;
        this.d = cls;
        this.f3336c = i10;
        this.f3335b = i11;
    }

    @Override // c1.c
    public final Object b(View view) {
        switch (this.f8301e) {
            case 0:
                return Boolean.valueOf(l0.d(view));
            case 1:
                return l0.b(view);
            case 2:
                return n0.b(view);
            default:
                return Boolean.valueOf(l0.c(view));
        }
    }

    @Override // c1.c
    public final void c(View view, Object obj) {
        switch (this.f8301e) {
            case 0:
                l0.j(view, ((Boolean) obj).booleanValue());
                break;
            case 1:
                l0.h(view, (CharSequence) obj);
                break;
            case 2:
                n0.e(view, (CharSequence) obj);
                break;
            default:
                l0.g(view, ((Boolean) obj).booleanValue());
                break;
        }
    }

    @Override // c1.c
    public final boolean e(Object obj, Object obj2) {
        switch (this.f8301e) {
            case 0:
                Boolean bool = (Boolean) obj;
                Boolean bool2 = (Boolean) obj2;
                return !((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue()));
            case 1:
                return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
            case 2:
                return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
            default:
                Boolean bool3 = (Boolean) obj;
                Boolean bool4 = (Boolean) obj2;
                return !((bool3 != null && bool3.booleanValue()) == (bool4 != null && bool4.booleanValue()));
        }
    }
}
