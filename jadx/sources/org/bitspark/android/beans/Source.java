package org.bitspark.android.beans;

import a2.a;
import androidx.annotation.Keep;
import com.nmmedit.protect.NativeUtil;
import j9.f;
import j9.i;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public final class Source implements ISeletor {
    private int _id;
    private final String address;
    private boolean isSelected;
    private boolean isWatched;
    private int seasonIndex;
    private String short_title;
    private final List<Subtitles> subtitles;

    static {
        NativeUtil.classesInit0(32);
    }

    public Source(int i6, String str, String str2, List<Subtitles> list, boolean z7, int i10, boolean z10) {
        i.f(str, a.s("vJuYE8yrnQ==\n", "3f/8YanY7lU=\n"));
        i.f(str2, a.s("dfv5OvAuccNy//M=\n", "BpOWSIRxBao=\n"));
        this._id = i6;
        this.address = str;
        this.short_title = str2;
        this.subtitles = list;
        this.isWatched = z7;
        this.seasonIndex = i10;
        this.isSelected = z10;
    }

    public static /* synthetic */ Source copy$default(Source source, int i6, String str, String str2, List list, boolean z7, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i6 = source._id;
        }
        if ((i11 & 2) != 0) {
            str = source.address;
        }
        String str3 = str;
        if ((i11 & 4) != 0) {
            str2 = source.short_title;
        }
        String str4 = str2;
        if ((i11 & 8) != 0) {
            list = source.subtitles;
        }
        List list2 = list;
        if ((i11 & 16) != 0) {
            z7 = source.isWatched;
        }
        boolean z11 = z7;
        if ((i11 & 32) != 0) {
            i10 = source.seasonIndex;
        }
        int i12 = i10;
        if ((i11 & 64) != 0) {
            z10 = source.isSelected;
        }
        return source.copy(i6, str3, str4, list2, z11, i12, z10);
    }

    public final native int component1();

    public final native String component2();

    public final native String component3();

    public final native List<Subtitles> component4();

    public final native boolean component5();

    public final native int component6();

    public final native boolean component7();

    public final native Source copy(int i6, String str, String str2, List<Subtitles> list, boolean z7, int i10, boolean z10);

    public native boolean equals(Object obj);

    public final native String getAddress();

    public final native String getIndexName();

    public final native int getSeasonIndex();

    public final native String getShort_title();

    public final native List<Subtitles> getSubtitles();

    public final native int get_id();

    public native int hashCode();

    @Override // org.bitspark.android.beans.ISeletor
    public native boolean isSelected();

    public final native boolean isWatched();

    public final native void setSeasonIndex(int i6);

    @Override // org.bitspark.android.beans.ISeletor
    public native void setSelected(boolean z7);

    public final native void setShort_title(String str);

    public final native void setWatched(boolean z7);

    public final native void set_id(int i6);

    public native String toString();

    public /* synthetic */ Source(int i6, String str, String str2, List list, boolean z7, int i10, boolean z10, int i11, f fVar) {
        this(i6, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? "" : str2, list, (i11 & 16) != 0 ? false : z7, (i11 & 32) != 0 ? 0 : i10, (i11 & 64) != 0 ? false : z10);
    }

    public static /* synthetic */ void getSeasonIndex$annotations() {
    }

    public static /* synthetic */ void isSelected$annotations() {
    }
}
