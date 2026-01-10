package okhttp3.internal.cache;

import i9.l;
import j9.i;
import j9.j;
import java.io.IOException;
import okhttp3.internal.cache.DiskLruCache;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class DiskLruCache$Editor$newSink$1$1 extends j implements l {
    final /* synthetic */ DiskLruCache this$0;
    final /* synthetic */ DiskLruCache.Editor this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$Editor$newSink$1$1(DiskLruCache diskLruCache, DiskLruCache.Editor editor) {
        super(1);
        this.this$0 = diskLruCache;
        this.this$1 = editor;
    }

    @Override // i9.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((IOException) obj);
        return w8.l.f10832a;
    }

    public final void invoke(IOException iOException) {
        i.f(iOException, "it");
        DiskLruCache diskLruCache = this.this$0;
        DiskLruCache.Editor editor = this.this$1;
        synchronized (diskLruCache) {
            editor.detach$okhttp();
        }
    }
}
