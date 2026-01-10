package b3;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import java.io.InputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3190a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f3191b;

    public /* synthetic */ h(Context context, int i6) {
        this.f3190a = i6;
        this.f3191b = context;
    }

    @Override // b3.v
    public final u a(b0 b0Var) {
        switch (this.f3190a) {
            case 0:
                return new b(this.f3191b, this);
            case 1:
                return new b(this.f3191b, this);
            case 2:
                return new b(this.f3191b, this);
            case 3:
                return new q(this.f3191b, 0);
            case 4:
                return new b(this.f3191b, b0Var.b(Integer.class, AssetFileDescriptor.class));
            case 5:
                return new b(this.f3191b, b0Var.b(Integer.class, InputStream.class));
            case 6:
                return new q(this.f3191b, 1);
            default:
                return new q(this.f3191b, 2);
        }
    }
}
