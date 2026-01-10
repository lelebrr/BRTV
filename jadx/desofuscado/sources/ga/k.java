package ga;

import com.lzy.okgo.OkGo;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.request.PostRequest;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.UpdateInfo;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public static final String f7136a = a2.a.s("VFpvM+NNam8=\n", "Fgk6Q4csHgo=\n");

    /* renamed from: b, reason: collision with root package name */
    public static UpdateInfo f7137b;

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(String str) {
        int i6 = 0;
        String strG = m.g(l.f7141e);
        if (strG.isEmpty()) {
            return;
        }
        try {
            ((PostRequest) ((PostRequest) ((PostRequest) ((PostRequest) ((PostRequest) ((PostRequest) ((PostRequest) ((PostRequest) ((PostRequest) ((PostRequest) ((PostRequest) OkGo.post(strG).removeHeader(a2.a.s("S0eTwzM+tOFwQA==\n", "HjT2sR5/04Q=\n"))).headers(a2.a.s("fU1hSBgSQpBGSg==\n", "KD4EOjVTJfU=\n"), ea.a.f6609m)).tag(this)).cacheMode(CacheMode.NO_CACHE)).params(a2.a.s("dvHf5K0Edw==\n", "BpC8j8xjElA=\n"), ea.a.f6600b, new boolean[0])).params(a2.a.s("1tKLlwH0og==\n", "tbrq+W+Rzko=\n"), ea.h.f6676g, new boolean[0])).params(a2.a.s("8UGwHQ==\n", "lzPfcND13SY=\n"), str, new boolean[0])).params(a2.a.s("OiaZz4xvgR4/Mw==\n", "W1bpuekd4nE=\n"), ea.a.f6602e, new boolean[0])).params(a2.a.s("MrsVr7exItg+rg==\n", "U8tl2dLDTLk=\n"), ea.a.f6603g, new boolean[0])).params(a2.a.s("/fq6ZpvQgT/q5g==\n", "joPJEP6i4lA=\n"), ea.a.d, new boolean[0])).params(a2.a.s("z/6y3p6ACRbR4g==\n", "vIfBqPvyZ3c=\n"), ea.a.f6601c, new boolean[0])).execute(new j(i6));
        } catch (Exception unused) {
            String strS = a2.a.s("4k3rEHucERjxTb9RfoVVHPda8EIv\n", "hSifMA7sdXk=\n");
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(f7136a, strS);
            Spark.X1.sendEmptyMessage(61);
        }
    }
}
