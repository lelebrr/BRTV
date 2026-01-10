package org.bitspark.android.beans;

import a2.a;
import androidx.annotation.Keep;
import com.nmmedit.protect.NativeUtil;
import j9.i;
import java.util.List;
import org.bitspark.android.beans.ChannelBean;

@Keep
/* loaded from: classes.dex */
public final class SeasonMenu extends Menu {
    private boolean isSelected;
    private String name;
    private final List<ChannelBean.SourcesBean> sourceList;

    static {
        NativeUtil.classesInit0(41);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SeasonMenu(String str, boolean z7, List<? extends ChannelBean.SourcesBean> list) {
        super(str, z7);
        i.f(str, a.s("Q1tIEA==\n", "LTolddAHmII=\n"));
        i.f(list, a.s("p34E9BJWUWqnZQ==\n", "1BFxhnEzHQM=\n"));
        this.name = str;
        this.isSelected = z7;
        this.sourceList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SeasonMenu copy$default(SeasonMenu seasonMenu, String str, boolean z7, List list, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            str = seasonMenu.name;
        }
        if ((i6 & 2) != 0) {
            z7 = seasonMenu.isSelected;
        }
        if ((i6 & 4) != 0) {
            list = seasonMenu.sourceList;
        }
        return seasonMenu.copy(str, z7, list);
    }

    public final native String component1();

    public final native boolean component2();

    public final native List<ChannelBean.SourcesBean> component3();

    public final native SeasonMenu copy(String str, boolean z7, List<? extends ChannelBean.SourcesBean> list);

    public native boolean equals(Object obj);

    @Override // org.bitspark.android.beans.Menu
    public native String getName();

    public final native List<ChannelBean.SourcesBean> getSourceList();

    public native int hashCode();

    @Override // org.bitspark.android.beans.Menu, org.bitspark.android.beans.ISeletor
    public native boolean isSelected();

    public native void setName(String str);

    @Override // org.bitspark.android.beans.Menu, org.bitspark.android.beans.ISeletor
    public native void setSelected(boolean z7);

    public native String toString();
}
