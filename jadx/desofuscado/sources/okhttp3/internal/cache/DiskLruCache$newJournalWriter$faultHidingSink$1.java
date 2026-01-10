package okhttp3.internal.cache;

import i9.l;
import j9.i;
import j9.j;
import java.io.IOException;
import okhttp3.internal.Util;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class DiskLruCache$newJournalWriter$faultHidingSink$1 extends j implements l {
    final /* synthetic */ DiskLruCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$newJournalWriter$faultHidingSink$1(DiskLruCache diskLruCache) {
        super(1);
        this.this$0 = diskLruCache;
    }

    @Override // i9.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((IOException) obj);
        return w8.l.f10832a;
    }

    public final void invoke(IOException iOException) {
        i.f(iOException, "it");
        DiskLruCache diskLruCache = this.this$0;
        if (!Util.assertionsEnabled || Thread.holdsLock(diskLruCache)) {
            this.this$0.hasJournalErrors = true;
            return;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + diskLruCache);
    }
}
