package b3;

import java.io.File;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f0 implements u {

    /* renamed from: b, reason: collision with root package name */
    public static final f0 f3184b = new f0(0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3185a;

    public /* synthetic */ f0(int i6) {
        this.f3185a = i6;
    }

    @Override // b3.u
    public final t a(Object obj, int i6, int i10, v2.h hVar) {
        switch (this.f3185a) {
            case 0:
                return new t(new q3.d(obj), new e(1, obj));
            case 1:
                File file = (File) obj;
                return new t(new q3.d(file), new e(0, file));
            default:
                return null;
        }
    }

    @Override // b3.u
    public final boolean b(Object obj) {
        switch (this.f3185a) {
            case 0:
                return true;
            case 1:
                return true;
            default:
                return false;
        }
    }
}
