package r4;

import android.util.LruCache;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v extends LruCache {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f9582a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(a aVar) {
        super(20);
        this.f9582a = aVar;
    }

    @Override // android.util.LruCache
    public final /* bridge */ /* synthetic */ void entryRemoved(boolean z7, Object obj, Object obj2, Object obj3) {
        Integer num = (Integer) obj;
        if (z7) {
            ArrayList arrayList = this.f9582a.f9517g;
            b5.l.e(arrayList);
            arrayList.add(num);
        }
    }
}
