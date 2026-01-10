package okio;

import j9.i;
import java.util.zip.Inflater;

/* compiled from: MyApplication */
/* renamed from: okio.-InflaterSourceExtensions, reason: invalid class name */
/* loaded from: classes.dex */
public final class InflaterSourceExtensions {
    public static final InflaterSource inflate(Source source, Inflater inflater) {
        i.f(source, "<this>");
        i.f(inflater, "inflater");
        return new InflaterSource(source, inflater);
    }

    public static /* synthetic */ InflaterSource inflate$default(Source source, Inflater inflater, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            inflater = new Inflater();
        }
        i.f(source, "<this>");
        i.f(inflater, "inflater");
        return new InflaterSource(source, inflater);
    }
}
