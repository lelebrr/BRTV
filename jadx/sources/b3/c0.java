package b3;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import java.io.InputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c0 implements v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3171a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f3172b;

    public /* synthetic */ c0(Resources resources, int i6) {
        this.f3171a = i6;
        this.f3172b = resources;
    }

    @Override // b3.v
    public final u a(b0 b0Var) {
        switch (this.f3171a) {
            case 0:
                return new b(this.f3172b, b0Var.b(Uri.class, AssetFileDescriptor.class));
            case 1:
                return new b(this.f3172b, b0Var.b(Uri.class, InputStream.class));
            default:
                return new b(this.f3172b, f0.f3184b);
        }
    }
}
