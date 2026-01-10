package n0;

import android.view.ContentInfo;
import android.view.View;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class o0 {
    public static String[] a(View view) {
        return view.getReceiveContentMimeTypes();
    }

    public static g b(View view, g gVar) {
        ContentInfo contentInfoI = gVar.f8317a.i();
        Objects.requireNonNull(contentInfoI);
        ContentInfo contentInfoM = androidx.media3.exoplayer.analytics.b0.m(contentInfoI);
        ContentInfo contentInfoPerformReceiveContent = view.performReceiveContent(contentInfoM);
        if (contentInfoPerformReceiveContent == null) {
            return null;
        }
        return contentInfoPerformReceiveContent == contentInfoM ? gVar : new g(new j7.c(contentInfoPerformReceiveContent));
    }

    public static void c(View view, String[] strArr, t tVar) {
        if (tVar == null) {
            view.setOnReceiveContentListener(strArr, null);
        } else {
            view.setOnReceiveContentListener(strArr, new p0(tVar));
        }
    }
}
