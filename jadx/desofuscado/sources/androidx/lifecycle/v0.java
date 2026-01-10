package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class v0 {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f2007a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f2008b = new LinkedHashSet();

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f2009c = false;

    public static void a(Object obj) throws IOException {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e5) {
                throw new RuntimeException(e5);
            }
        }
    }

    public void b() {
    }
}
