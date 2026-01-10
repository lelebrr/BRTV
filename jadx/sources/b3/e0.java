package b3;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e0 implements v {

    /* renamed from: b, reason: collision with root package name */
    public static final e0 f3179b = new e0(0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3180a;

    public /* synthetic */ e0(int i6) {
        this.f3180a = i6;
    }

    @Override // b3.v
    public final u a(b0 b0Var) {
        switch (this.f3180a) {
            case 0:
                return f0.f3184b;
            case 1:
                return new d(0, new c(0));
            case 2:
                return new d(0, new c(1));
            case 3:
                return new f0(1);
            case 4:
                return new d0(b0Var.b(Uri.class, AssetFileDescriptor.class), 0);
            case 5:
                return new d0(b0Var.b(Uri.class, ParcelFileDescriptor.class), 0);
            case 6:
                return new d0(b0Var.b(Uri.class, InputStream.class), 0);
            default:
                return new i0(b0Var.b(k.class, InputStream.class));
        }
    }
}
