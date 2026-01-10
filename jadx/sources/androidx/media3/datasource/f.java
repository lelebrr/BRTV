package androidx.media3.datasource;

import androidx.media3.datasource.DefaultHttpDataSource;
import b7.n;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2116a;

    public /* synthetic */ f(int i6) {
        this.f2116a = i6;
    }

    @Override // b7.n
    public final boolean apply(Object obj) {
        switch (this.f2116a) {
            case 0:
                return DefaultHttpDataSource.NullFilteringHeadersMap.lambda$entrySet$1((Map.Entry) obj);
            case 1:
                return DefaultHttpDataSource.NullFilteringHeadersMap.lambda$keySet$0((String) obj);
            default:
                return g.a((String) obj);
        }
    }
}
