package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.Consumer;
import java.util.concurrent.ExecutorService;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Consumer {
    @Override // androidx.media3.common.util.Consumer, l8.a
    public final void accept(Object obj) {
        ((ExecutorService) obj).shutdown();
    }
}
