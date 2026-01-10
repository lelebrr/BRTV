package com.google.android.gms.internal.cast;

import com.lzy.okgo.cache.CacheEntity;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class o7 {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f4371a;

    static {
        char[] cArr = new char[80];
        f4371a = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static void a(StringBuilder sb, int i6, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                a(sb, i6, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                a(sb, i6, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        b(sb, i6);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i10 = 1; i10 < str.length(); i10++) {
                char cCharAt = str.charAt(i10);
                if (Character.isUpperCase(cCharAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(cCharAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            w6 w6Var = w6.f4451c;
            sb.append(z0.d(new w6(((String) obj).getBytes(h7.f4214a))));
            sb.append('\"');
            return;
        }
        if (obj instanceof w6) {
            sb.append(": \"");
            sb.append(z0.d((w6) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof c7) {
            sb.append(" {");
            c((c7) obj, sb, i6 + 2);
            sb.append("\n");
            b(sb, i6);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        int i11 = i6 + 2;
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        a(sb, i11, CacheEntity.KEY, entry.getKey());
        a(sb, i11, "value", entry.getValue());
        sb.append("\n");
        b(sb, i6);
        sb.append("}");
    }

    public static void b(StringBuilder sb, int i6) {
        while (i6 > 0) {
            int i10 = 80;
            if (i6 <= 80) {
                i10 = i6;
            }
            sb.append(f4371a, 0, i10);
            i6 -= i10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0200  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void c(com.google.android.gms.internal.cast.c7 r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.o7.c(com.google.android.gms.internal.cast.c7, java.lang.StringBuilder, int):void");
    }
}
