package e3;

import android.graphics.ImageDecoder;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements v2.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6504a;

    /* renamed from: b, reason: collision with root package name */
    public final c f6505b;

    public g(int i6) {
        this.f6504a = i6;
        switch (i6) {
            case 1:
                this.f6505b = new c();
                break;
            default:
                this.f6505b = new c();
                break;
        }
    }

    @Override // v2.j
    public final x2.x a(Object obj, int i6, int i10, v2.h hVar) {
        switch (this.f6504a) {
            case 0:
                return this.f6505b.c(ImageDecoder.createSource((ByteBuffer) obj), i6, i10, hVar);
            default:
                return this.f6505b.c(ImageDecoder.createSource(r3.a.b((InputStream) obj)), i6, i10, hVar);
        }
    }

    @Override // v2.j
    public final /* bridge */ /* synthetic */ boolean b(Object obj, v2.h hVar) {
        switch (this.f6504a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }
}
