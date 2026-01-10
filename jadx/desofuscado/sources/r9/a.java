package r9;

import java.nio.charset.Charset;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f9611a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile Charset f9612b;

    /* renamed from: c, reason: collision with root package name */
    public static volatile Charset f9613c;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        j9.i.e(charsetForName, "forName(...)");
        f9611a = charsetForName;
        j9.i.e(Charset.forName("UTF-16"), "forName(...)");
        j9.i.e(Charset.forName("UTF-16BE"), "forName(...)");
        j9.i.e(Charset.forName("UTF-16LE"), "forName(...)");
        j9.i.e(Charset.forName("US-ASCII"), "forName(...)");
        j9.i.e(Charset.forName("ISO-8859-1"), "forName(...)");
    }
}
