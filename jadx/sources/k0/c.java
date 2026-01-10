package k0;

import android.content.Context;
import java.util.concurrent.Callable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7680a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f7681b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f7682c;
    public final /* synthetic */ c2.b d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f7683e;

    public /* synthetic */ c(String str, Context context, c2.b bVar, int i6, int i10) {
        this.f7680a = i10;
        this.f7681b = str;
        this.f7682c = context;
        this.d = bVar;
        this.f7683e = i6;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f7680a) {
            case 0:
                return f.a(this.f7681b, this.f7682c, this.d, this.f7683e);
            default:
                try {
                    return f.a(this.f7681b, this.f7682c, this.d, this.f7683e);
                } catch (Throwable unused) {
                    return new e(-3);
                }
        }
    }
}
