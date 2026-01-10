package a4;

import java.io.Closeable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public v8.a f134a;

    /* renamed from: b, reason: collision with root package name */
    public d4.c f135b;

    /* renamed from: c, reason: collision with root package name */
    public v8.a f136c;
    public v8.a d;

    /* renamed from: e, reason: collision with root package name */
    public v8.a f137e;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((i4.g) ((i4.d) this.d.get())).close();
    }
}
