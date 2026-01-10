package n0;

import android.view.ContentInfo;
import android.view.OnReceiveContentListener;
import android.view.View;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p0 implements OnReceiveContentListener {

    /* renamed from: a, reason: collision with root package name */
    public final t f8345a;

    public p0(t tVar) {
        this.f8345a = tVar;
    }

    @Override // android.view.OnReceiveContentListener
    public final ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
        g gVar = new g(new j7.c(contentInfo));
        g gVarA = ((androidx.core.widget.r) this.f8345a).a(view, gVar);
        if (gVarA == null) {
            return null;
        }
        if (gVarA == gVar) {
            return contentInfo;
        }
        ContentInfo contentInfoI = gVarA.f8317a.i();
        Objects.requireNonNull(contentInfoI);
        return androidx.media3.exoplayer.analytics.b0.m(contentInfoI);
    }
}
