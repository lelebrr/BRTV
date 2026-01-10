package b3;

import java.io.File;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3173a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3174b;

    public /* synthetic */ d(int i6, Object obj) {
        this.f3173a = i6;
        this.f3174b = obj;
    }

    @Override // b3.u
    public final t a(Object obj, int i6, int i10, v2.h hVar) {
        switch (this.f3173a) {
            case 0:
                byte[] bArr = (byte[]) obj;
                return new t(new q3.d(bArr), new p(bArr, 1, (c) this.f3174b));
            case 1:
                return new t(new q3.d(obj), new f(0, obj.toString(), (c) this.f3174b));
            default:
                File file = (File) obj;
                return new t(new q3.d(file), new f(1, file, (c) this.f3174b));
        }
    }

    @Override // b3.u
    public final boolean b(Object obj) {
        switch (this.f3173a) {
            case 0:
                return true;
            case 1:
                return obj.toString().startsWith("data:image");
            default:
                return true;
        }
    }
}
