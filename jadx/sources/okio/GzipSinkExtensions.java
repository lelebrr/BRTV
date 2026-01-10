package okio;

import j9.i;

/* compiled from: MyApplication */
/* renamed from: okio.-GzipSinkExtensions, reason: invalid class name */
/* loaded from: classes.dex */
public final class GzipSinkExtensions {
    public static final GzipSink gzip(Sink sink) {
        i.f(sink, "<this>");
        return new GzipSink(sink);
    }
}
