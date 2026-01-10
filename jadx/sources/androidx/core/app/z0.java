package androidx.core.app;

import android.app.NotificationManager;
import android.content.Context;
import java.util.HashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z0 {
    public static String d;

    /* renamed from: g, reason: collision with root package name */
    public static y0 f1244g;

    /* renamed from: a, reason: collision with root package name */
    public final Context f1245a;

    /* renamed from: b, reason: collision with root package name */
    public final NotificationManager f1246b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f1242c = new Object();

    /* renamed from: e, reason: collision with root package name */
    public static HashSet f1243e = new HashSet();
    public static final Object f = new Object();

    public z0(Context context) {
        this.f1245a = context;
        this.f1246b = (NotificationManager) context.getSystemService("notification");
    }
}
