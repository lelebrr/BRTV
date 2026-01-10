package org.bitspark.android.beans;

import java.io.Serializable;
import java.util.Date;
import org.bitspark.android.Constants$VIDEO_TYPE;

/* loaded from: classes.dex */
public class HistoryBean implements Serializable {
    private static final long serialVersionUID = -8734287124637627888L;
    public String address;
    public int chid;
    public Date date;
    public int duration = 0;
    public long lastPosition;
    public String name;
    public String subId;
    public String subTitle;
    public Constants$VIDEO_TYPE type;
}
