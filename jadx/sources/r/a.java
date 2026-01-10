package r;

import java.util.concurrent.CancellationException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static final a f9433b;

    /* renamed from: c, reason: collision with root package name */
    public static final a f9434c;

    /* renamed from: a, reason: collision with root package name */
    public final CancellationException f9435a;

    static {
        if (g.d) {
            f9434c = null;
            f9433b = null;
        } else {
            f9434c = new a(false, null);
            f9433b = new a(true, null);
        }
    }

    public a(boolean z7, CancellationException cancellationException) {
        this.f9435a = cancellationException;
    }
}
