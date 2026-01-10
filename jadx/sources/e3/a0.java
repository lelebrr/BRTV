package e3;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import java.io.File;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 implements x2.x {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6485a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6486b;

    public /* synthetic */ a0(int i6, Object obj) {
        this.f6485a = i6;
        this.f6486b = obj;
    }

    @Override // x2.x
    public final int a() {
        switch (this.f6485a) {
            case 0:
                return r3.n.c((Bitmap) this.f6486b);
            case 1:
                return ((byte[]) this.f6486b).length;
            case 2:
                return r3.n.d(Bitmap.Config.ARGB_8888) * ((AnimatedImageDrawable) this.f6486b).getIntrinsicHeight() * ((AnimatedImageDrawable) this.f6486b).getIntrinsicWidth() * 2;
            default:
                return 1;
        }
    }

    @Override // x2.x
    public final Class c() {
        switch (this.f6485a) {
            case 0:
                return Bitmap.class;
            case 1:
                return byte[].class;
            case 2:
                return Drawable.class;
            default:
                return ((File) this.f6486b).getClass();
        }
    }

    @Override // x2.x
    public final void d() {
        switch (this.f6485a) {
            case 2:
                ((AnimatedImageDrawable) this.f6486b).stop();
                ((AnimatedImageDrawable) this.f6486b).clearAnimationCallbacks();
                break;
        }
    }

    @Override // x2.x
    public final Object get() {
        switch (this.f6485a) {
            case 0:
                return (Bitmap) this.f6486b;
            case 1:
                return (byte[]) this.f6486b;
            case 2:
                return (AnimatedImageDrawable) this.f6486b;
            default:
                return (File) this.f6486b;
        }
    }

    public a0(byte[] bArr) {
        this.f6485a = 1;
        r3.f.c(bArr, "Argument must not be null");
        this.f6486b = bArr;
    }

    public a0(File file) {
        this.f6485a = 3;
        r3.f.c(file, "Argument must not be null");
        this.f6486b = file;
    }

    private final void b() {
    }

    private final void e() {
    }

    private final void f() {
    }
}
