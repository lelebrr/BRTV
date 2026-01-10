package org.bitspark.android.beans;

import a2.a;
import androidx.annotation.Keep;
import com.nmmedit.protect.NativeUtil;
import j9.i;

@Keep
/* loaded from: classes.dex */
public final class VodMenu extends Menu {
    private boolean isEnable;
    private boolean isSelected;
    private String name;

    static {
        NativeUtil.classesInit0(45);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VodMenu(String str, boolean z7, boolean z10) {
        super(str, z7);
        i.f(str, a.s("AOVRig==\n", "boQ8719/lc8=\n"));
        this.name = str;
        this.isSelected = z7;
        this.isEnable = z10;
    }

    public static /* synthetic */ VodMenu copy$default(VodMenu vodMenu, String str, boolean z7, boolean z10, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            str = vodMenu.name;
        }
        if ((i6 & 2) != 0) {
            z7 = vodMenu.isSelected;
        }
        if ((i6 & 4) != 0) {
            z10 = vodMenu.isEnable;
        }
        return vodMenu.copy(str, z7, z10);
    }

    public final native String component1();

    public final native boolean component2();

    public final native boolean component3();

    public final native VodMenu copy(String str, boolean z7, boolean z10);

    public native boolean equals(Object obj);

    @Override // org.bitspark.android.beans.Menu
    public native String getName();

    public native int hashCode();

    public final native boolean isEnable();

    @Override // org.bitspark.android.beans.Menu, org.bitspark.android.beans.ISeletor
    public native boolean isSelected();

    public final native void setEnable(boolean z7);

    public native void setName(String str);

    @Override // org.bitspark.android.beans.Menu, org.bitspark.android.beans.ISeletor
    public native void setSelected(boolean z7);

    public native String toString();
}
