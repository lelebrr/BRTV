package androidx.media3.datasource;

import android.net.Uri;
import java.util.concurrent.Callable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2113a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DataSourceBitmapLoader f2114b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2115c;

    public /* synthetic */ e(DataSourceBitmapLoader dataSourceBitmapLoader, Object obj, int i6) {
        this.f2113a = i6;
        this.f2114b = dataSourceBitmapLoader;
        this.f2115c = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f2113a) {
            case 0:
                return this.f2114b.lambda$decodeBitmap$1((byte[]) this.f2115c);
            default:
                return this.f2114b.lambda$loadBitmap$2((Uri) this.f2115c);
        }
    }
}
