package y3;

import a4.m;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a implements m {

    /* renamed from: c, reason: collision with root package name */
    public static final String f11376c;
    public static final Set d;

    /* renamed from: e, reason: collision with root package name */
    public static final a f11377e;

    /* renamed from: a, reason: collision with root package name */
    public final String f11378a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11379b;

    static {
        String strW = com.bumptech.glide.d.w("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f11376c = strW;
        com.bumptech.glide.d.w("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        com.bumptech.glide.d.w("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        d = Collections.unmodifiableSet(new HashSet(Arrays.asList(new x3.b("proto"), new x3.b("json"))));
        f11377e = new a(strW, null);
    }

    public a(String str, String str2) {
        this.f11378a = str;
        this.f11379b = str2;
    }

    public static a a(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote("\\"), 2);
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new a(str2, str3);
    }
}
