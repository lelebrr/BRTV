package org.bitspark.android.beans;

import a2.a;
import com.nmmedit.protect.NativeUtil;
import j9.f;
import j9.i;

/* loaded from: classes.dex */
public class SubtitleMenu extends Menu {
    private int groupIndex;
    private boolean isSelected;
    private String label;
    private String language;
    private int rendererIndex;
    private int trackIndex;

    static {
        NativeUtil.classesInit0(18);
    }

    public /* synthetic */ SubtitleMenu(String str, String str2, int i6, int i10, int i11, boolean z7, int i12, f fVar) {
        this(str, str2, i6, i10, i11, (i12 & 32) != 0 ? false : z7);
    }

    public final native int getGroupIndex();

    public final native String getLabel();

    public final native String getLanguage();

    public final native int getRendererIndex();

    public final native int getTrackIndex();

    @Override // org.bitspark.android.beans.Menu, org.bitspark.android.beans.ISeletor
    public native boolean isSelected();

    public final native void setGroupIndex(int i6);

    public final native void setLabel(String str);

    public final native void setLanguage(String str);

    public final native void setRendererIndex(int i6);

    @Override // org.bitspark.android.beans.Menu, org.bitspark.android.beans.ISeletor
    public native void setSelected(boolean z7);

    public final native void setTrackIndex(int i6);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubtitleMenu(String str, String str2, int i6, int i10, int i11, boolean z7) {
        super(str, z7);
        i.f(str, a.s("6is1whb4/v4=\n", "hkpbpWOZmZs=\n"));
        i.f(str2, a.s("q17OCFw=\n", "xz+sbTC/ET4=\n"));
        this.language = str;
        this.label = str2;
        this.rendererIndex = i6;
        this.groupIndex = i10;
        this.trackIndex = i11;
        this.isSelected = z7;
    }
}
