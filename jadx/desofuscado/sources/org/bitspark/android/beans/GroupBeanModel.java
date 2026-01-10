package org.bitspark.android.beans;

import java.io.Serializable;
import java.util.List;
import org.bitspark.android.beans.ChannelBean;

/* loaded from: classes.dex */
public class GroupBeanModel implements Serializable {
    public int group_id;
    public String group_name = "";
    public List<ChannelBean.TagsBean> items;
    public boolean restrictedAccess;
}
