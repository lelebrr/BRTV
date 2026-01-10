package v2;

import java.nio.charset.Charset;
import java.security.MessageDigest;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface e {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f10660a = Charset.forName("UTF-8");

    void a(MessageDigest messageDigest);

    boolean equals(Object obj);

    int hashCode();
}
