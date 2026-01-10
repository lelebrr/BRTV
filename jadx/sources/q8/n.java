package q8;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class n {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f9357a;

    static {
        boolean zEquals = true;
        try {
            String property = System.getProperty("rx3.purge-enabled");
            if (property != null) {
                zEquals = "true".equals(property);
            }
        } catch (Throwable th) {
            com.bumptech.glide.d.G(th);
        }
        f9357a = zEquals;
    }
}
