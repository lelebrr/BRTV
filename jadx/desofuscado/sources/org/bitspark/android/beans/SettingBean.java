package org.bitspark.android.beans;

import a2.a;
import com.nmmedit.protect.NativeUtil;
import j9.i;

/* loaded from: classes.dex */
public final class SettingBean {
    private int icon;
    private String name;

    static {
        NativeUtil.classesInit0(44);
    }

    public SettingBean(int i6, String str) {
        i.f(str, a.s("A4mPUQ==\n", "bejiNFKxO1o=\n"));
        this.icon = i6;
        this.name = str;
    }

    public static /* synthetic */ SettingBean copy$default(SettingBean settingBean, int i6, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i6 = settingBean.icon;
        }
        if ((i10 & 2) != 0) {
            str = settingBean.name;
        }
        return settingBean.copy(i6, str);
    }

    public final native int component1();

    public final native String component2();

    public final native SettingBean copy(int i6, String str);

    public native boolean equals(Object obj);

    public final native int getIcon();

    public final native String getName();

    public native int hashCode();

    public final native void setIcon(int i6);

    public final native void setName(String str);

    public native String toString();
}
