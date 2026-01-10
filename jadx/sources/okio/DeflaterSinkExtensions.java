package okio;

import j9.i;
import java.util.zip.Deflater;

/* compiled from: MyApplication */
/* renamed from: okio.-DeflaterSinkExtensions, reason: invalid class name */
/* loaded from: classes.dex */
public final class DeflaterSinkExtensions {
    public static final DeflaterSink deflate(Sink sink, Deflater deflater) {
        i.f(sink, "<this>");
        i.f(deflater, "deflater");
        return new DeflaterSink(sink, deflater);
    }

    public static /* synthetic */ DeflaterSink deflate$default(Sink sink, Deflater deflater, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            deflater = new Deflater();
        }
        i.f(sink, "<this>");
        i.f(deflater, "deflater");
        return new DeflaterSink(sink, deflater);
    }
}
