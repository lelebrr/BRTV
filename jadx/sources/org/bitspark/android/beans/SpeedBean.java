package org.bitspark.android.beans;

import a2.a;
import androidx.annotation.Keep;
import com.nmmedit.protect.NativeUtil;
import j9.i;

@Keep
/* loaded from: classes.dex */
public final class SpeedBean extends Menu {
    private boolean isSelected;
    private String name;
    private float speed;

    static {
        NativeUtil.classesInit0(40);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpeedBean(String str, float f, boolean z7) {
        super(str, z7);
        i.f(str, a.s("jOzmkA==\n", "4o2L9VAv+mc=\n"));
        this.name = str;
        this.speed = f;
        this.isSelected = z7;
    }

    public static /* synthetic */ SpeedBean copy$default(SpeedBean speedBean, String str, float f, boolean z7, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            str = speedBean.name;
        }
        if ((i6 & 2) != 0) {
            f = speedBean.speed;
        }
        if ((i6 & 4) != 0) {
            z7 = speedBean.isSelected;
        }
        return speedBean.copy(str, f, z7);
    }

    public final native String component1();

    public final native float component2();

    public final native boolean component3();

    public final native SpeedBean copy(String str, float f, boolean z7);

    public native boolean equals(Object obj);

    @Override // org.bitspark.android.beans.Menu
    public native String getName();

    public final native float getSpeed();

    public native int hashCode();

    @Override // org.bitspark.android.beans.Menu, org.bitspark.android.beans.ISeletor
    public native boolean isSelected();

    public native void setName(String str);

    @Override // org.bitspark.android.beans.Menu, org.bitspark.android.beans.ISeletor
    public native void setSelected(boolean z7);

    public final native void setSpeed(float f);

    public native String toString();
}
