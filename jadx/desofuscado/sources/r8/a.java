package r8;

import com.google.android.gms.internal.cast.w5;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a {
    static {
        new w5("No further exceptions", 1);
    }

    public static NullPointerException a(String str) {
        return new NullPointerException(str.concat(" Null values are generally not allowed in 3.x operators and sources."));
    }

    public static RuntimeException b(Throwable th) {
        if (th instanceof Error) {
            throw ((Error) th);
        }
        return th instanceof RuntimeException ? (RuntimeException) th : new RuntimeException(th);
    }
}
