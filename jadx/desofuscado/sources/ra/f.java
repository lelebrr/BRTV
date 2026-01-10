package ra;

import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import com.tencent.mars.xlog.Log;
import ea.h;
import ea.k;
import ea.z;
import java.util.HashMap;
import org.bitspark.android.Constants$VIDEO_TYPE;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.utils.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: m, reason: collision with root package name */
    public static final String f9636m = a2.a.s("FoADseBvWukoiwe6\n", "RuxiyIUdF4g=\n");

    /* renamed from: n, reason: collision with root package name */
    public static f f9637n;

    /* renamed from: i, reason: collision with root package name */
    public z f9644i;

    /* renamed from: a, reason: collision with root package name */
    public final String f9638a = a2.a.s("t7eKKa7yy56IoYMOos3BiI6nghCm0Q==\n", "+sLmXcehpOs=\n");

    /* renamed from: b, reason: collision with root package name */
    public final String f9639b = a2.a.s("ors4uccrlYGHpiK52T+H\n", "7tJO3JRe9/U=\n");

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f9640c = new HashMap();
    public final HashMap d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public ChannelBean f9641e = null;
    public int f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9642g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean f9643h = true;

    /* renamed from: j, reason: collision with root package name */
    public int f9645j = 0;

    /* renamed from: k, reason: collision with root package name */
    public k f9646k = null;

    /* renamed from: l, reason: collision with root package name */
    public String f9647l = "";

    public static f b() {
        if (f9637n == null) {
            f9637n = new f();
        }
        return f9637n;
    }

    public final void a() {
        ChannelBean channelBean = this.f9641e;
        if (channelBean != null) {
            this.f9640c.remove(String.valueOf(channelBean.getChid()));
        }
    }

    public final boolean c() {
        ChannelBean channelBean = this.f9641e;
        return (channelBean == null || channelBean.getSources() == null || this.f9641e.getSources().size() <= 1) ? false : true;
    }

    public final boolean d() {
        return this.f9641e.getSources().size() > 1 && this.f == this.f9641e.getSources().size() - 1;
    }

    public final void e(ChannelBean channelBean, Boolean bool, int i6, String str) {
        k kVar;
        String str2 = a2.a.s("EZvPWOix40cOzY4=\n", "YfeuIb7YhyI=\n") + new l7.k().e(channelBean);
        boolean z7 = m.f8784b;
        String str3 = f9636m;
        Log.i(str3, str2);
        this.f = i6;
        Message message = new Message();
        message.what = 80;
        Bundle bundle = new Bundle();
        bundle.putInt(a2.a.s("4K9gfA==\n", "g8cJGFxuXkA=\n"), channelBean.getChid());
        if (bool.booleanValue()) {
            bundle.putInt(a2.a.s("n+9b1k0=\n", "84otsyGoFJI=\n"), channelBean.getLevel());
        }
        Log.i(str3, a2.a.s("QmGVZSQAxVldLZ1yFgzZBg==\n", "Mg30HHJpoTw=\n") + this.f);
        this.f9642g = bool.booleanValue();
        if (this.f9641e != null && channelBean.getChid() != this.f9641e.getChid() && (kVar = this.f9646k) != null) {
            kVar.f6705b.getClass();
        }
        this.f9641e = channelBean;
        z zVar = this.f9644i;
        if (zVar != null) {
            ChannelBean.NameBean name = channelBean.getName();
            Spark spark = zVar.f6751a;
            if (name != null && channelBean.getName().getInit() != null) {
                Log.i(a2.a.s("qavGDeXL\n", "6/iLbIylMkk=\n"), a2.a.s("5Yp4TlEmWus=\n", "iuQoIjBfYMs=\n") + channelBean.getName().getInit());
                spark.f8707m0.setText(channelBean.getName().getInit());
            }
            b().f9645j = spark.I.f7860m0;
        }
        HashMap map = this.f9640c;
        String str4 = (String) map.get(String.valueOf(this.f9641e.getChid()));
        if (str4 == null && this.f9643h) {
            str4 = h.P;
        } else {
            this.f9643h = true;
        }
        int size = channelBean.getSources().size();
        if (size == 0) {
            return;
        }
        if (!TextUtils.isEmpty(str4) && this.f == 0) {
            int i10 = 0;
            while (true) {
                if (i10 < size) {
                    ChannelBean.SourcesBean sourcesBean = channelBean.getSources().get(i10);
                    if (str4.equals(sourcesBean.getSubTitle())) {
                        this.f = i10;
                        bundle.putString(a2.a.s("zdKQ\n", "uKD8Ceoe6Bk=\n"), sourcesBean.getAddress());
                        break;
                    }
                    i10++;
                } else if (this.f < size) {
                    bundle.putString(a2.a.s("XQxU\n", "KH44IRLU3g4=\n"), channelBean.getSources().get(this.f).getAddress());
                }
            }
        } else if (this.f < size) {
            bundle.putString(a2.a.s("W6u8\n", "LtnQJQecih4=\n"), channelBean.getSources().get(this.f).getAddress());
        }
        if (this.f >= size) {
            Log.i(str3, a2.a.s("7UlET3Hbq+zyHwXQsgIoMhnNgqTBEkhhK6/Co6s=\n", "nSUlNieyz4k=\n") + this.f + a2.a.s("Sf4NvQ==\n", "ZNMgkFapT3E=\n") + size);
            this.f = 0;
            bundle.putString(a2.a.s("9F/S\n", "gS2+v3o1tIU=\n"), channelBean.getSources().get(this.f).getAddress());
        }
        map.put(String.valueOf(this.f9641e.getChid()), channelBean.getSources().get(this.f).getSubTitle());
        if (channelBean.getSid() > 0) {
            bundle.putString(a2.a.s("EkLw7Q==\n", "fCOdiAcl4xQ=\n"), channelBean.getSid() + a2.a.s("mg==\n", "tK6caDhLe4c=\n") + channelBean.getName().getInit());
        } else {
            bundle.putString(a2.a.s("Ys2PeQ==\n", "DKziHGqV9o8=\n"), channelBean.getName().getInit());
        }
        bundle.putString(a2.a.s("ZnjChAc=\n", "FQ2gzWNUwMU=\n"), "");
        bundle.putString(a2.a.s("+EIv6a3RXjw=\n", "izdNncSlMlk=\n"), "");
        bundle.putString(a2.a.s("ZQuigg==\n", "EXLS50LVgbs=\n"), Constants$VIDEO_TYPE.BSLIVE.name());
        bundle.putString(a2.a.s("aigAxFMXf44=\n", "B01usQduD+s=\n"), str);
        this.f9647l = str;
        message.setData(bundle);
        Spark.X1.sendMessage(message);
    }
}
