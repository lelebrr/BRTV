package org.bitspark.android.beans;

import a2.a;
import androidx.annotation.Keep;
import com.nmmedit.protect.NativeUtil;
import j9.i;

@Keep
/* loaded from: classes.dex */
public class Menu implements ISeletor {
    private boolean isSelected;
    private final String name;

    static {
        NativeUtil.classesInit0(26);
    }

    public Menu(String str, boolean z7) {
        i.f(str, a.s("4JxvfA==\n", "jv0CGVEXZzE=\n"));
        this.name = str;
        this.isSelected = z7;
    }

    public native String getName();

    @Override // org.bitspark.android.beans.ISeletor
    public native boolean isSelected();

    @Override // org.bitspark.android.beans.ISeletor
    public native void setSelected(boolean z7);
}
