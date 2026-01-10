package org.bitspark.android.beans;

/* loaded from: classes.dex */
public class EventBean {
    public int channel;
    public String image;
    public Integer imageRes;
    public int tag;
    public String title;
    public int viewType;

    public EventBean() {
        this.image = "";
        this.title = "";
        this.viewType = 0;
        this.imageRes = 0;
        this.tag = 0;
    }

    public EventBean(String str, String str2, int i6) {
        this.image = str;
        this.title = str2;
        this.viewType = i6;
    }

    public EventBean(Integer num, String str, int i6) {
        this.imageRes = num;
        this.title = str;
        this.viewType = i6;
    }
}
