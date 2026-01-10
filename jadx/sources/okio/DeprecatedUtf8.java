package okio;

import j9.i;

/* compiled from: MyApplication */
/* renamed from: okio.-DeprecatedUtf8, reason: invalid class name */
/* loaded from: classes.dex */
public final class DeprecatedUtf8 {
    public static final DeprecatedUtf8 INSTANCE = new DeprecatedUtf8();

    private DeprecatedUtf8() {
    }

    public final long size(String str) {
        i.f(str, "string");
        return Utf8.size$default(str, 0, 0, 3, null);
    }

    public final long size(String str, int i6, int i10) {
        i.f(str, "string");
        return Utf8.size(str, i6, i10);
    }
}
