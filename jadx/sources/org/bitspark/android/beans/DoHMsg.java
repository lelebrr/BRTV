package org.bitspark.android.beans;

import com.nmmedit.protect.NativeUtil;
import java.util.List;

/* loaded from: classes.dex */
public class DoHMsg {
    private boolean ad;
    private List<Answer> answer;
    private boolean cd;

    /* renamed from: ra, reason: collision with root package name */
    private boolean f8740ra;
    private boolean rd;
    private int status;
    private boolean tc;

    public class Answer {
        private String data;
        private String name;
        private int ttl;
        private int type;

        static {
            NativeUtil.classesInit0(53);
        }

        public Answer() {
        }

        public native String getData();

        public native String getName();

        public native int getTtl();

        public native int getType();

        public native void setData(String str);

        public native void setName(String str);

        public native void setTtl(int i6);

        public native void setType(int i6);
    }

    static {
        NativeUtil.classesInit0(19);
    }

    public native boolean getAd();

    public native List<Answer> getAnswer();

    public native boolean getCd();

    public native boolean getRa();

    public native boolean getRd();

    public native int getStatus();

    public native boolean getTc();

    public native void setAd(boolean z7);

    public native void setAnswer(List<Answer> list);

    public native void setCd(boolean z7);

    public native void setRa(boolean z7);

    public native void setRd(boolean z7);

    public native void setStatus(int i6);

    public native void setTc(boolean z7);
}
