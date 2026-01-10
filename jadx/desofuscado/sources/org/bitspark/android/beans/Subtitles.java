package org.bitspark.android.beans;

import androidx.annotation.Keep;
import com.nmmedit.protect.NativeUtil;
import j9.f;

@Keep
/* loaded from: classes.dex */
public final class Subtitles {
    private final String address;
    private final String name;

    static {
        NativeUtil.classesInit0(47);
    }

    public Subtitles() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ Subtitles copy$default(Subtitles subtitles, String str, String str2, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            str = subtitles.address;
        }
        if ((i6 & 2) != 0) {
            str2 = subtitles.name;
        }
        return subtitles.copy(str, str2);
    }

    public final native String component1();

    public final native String component2();

    public final native Subtitles copy(String str, String str2);

    public native boolean equals(Object obj);

    public final native String getAddress();

    public final native String getName();

    public native int hashCode();

    public native String toString();

    public Subtitles(String str, String str2) {
        this.address = str;
        this.name = str2;
    }

    public /* synthetic */ Subtitles(String str, String str2, int i6, f fVar) {
        this((i6 & 1) != 0 ? "" : str, (i6 & 2) != 0 ? "" : str2);
    }
}
