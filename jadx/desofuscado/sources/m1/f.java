package m1;

import android.content.Context;
import android.service.media.MediaBrowserService;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class f extends d {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f8124b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(g gVar, Context context) {
        super(gVar, context);
        this.f8124b = gVar;
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadItem(String str, MediaBrowserService.Result result) {
        j7.c cVar = new j7.c(12, result);
        b bVar = this.f8124b.f8125e.f2034b;
        ((MediaBrowserService.Result) cVar.f7444b).sendResult(null);
    }
}
