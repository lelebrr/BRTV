package ga;

import com.tencent.mars.xlog.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.HistoryBean;
import org.bitspark.android.utils.LimitQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public static final String f7130a = a2.a.s("nXzD59UCfAim\n", "3y+LjqZ2E3o=\n");

    /* renamed from: b, reason: collision with root package name */
    public static final String f7131b = a2.a.s("vcRBelH6BhulwkVmUeRe\n", "0a03Hw6Sb2g=\n");

    /* renamed from: c, reason: collision with root package name */
    public static final String f7132c = a2.a.s("LKLZ0AxJ4xM1v8TQEhE=\n", "Ws29j2QgkGc=\n");
    public static final String d = a2.a.s("b8ERw7keiI5m0h7Dp0Y=\n", "CaBnnNF3+/o=\n");

    /* renamed from: e, reason: collision with root package name */
    public static LimitQueue f7133e;
    public static LimitQueue f;

    /* renamed from: g, reason: collision with root package name */
    public static LimitQueue f7134g;

    public i() throws Throwable {
        Object objB = Spark.f8663d2.b(a2.a.s("2Km3/xi3gdXAr7PjGKnZ\n", "tMDBmkff6KY=\n"));
        if (objB != null) {
            f7133e = (LimitQueue) objB;
        } else {
            f7133e = new LimitQueue(20);
        }
        Object objB2 = Spark.f8663d2.b(a2.a.s("PQKUw6bM0rwkH4nDuJQ=\n", "S23wnM6locg=\n"));
        if (objB2 != null) {
            f = (LimitQueue) objB2;
        } else {
            f = new LimitQueue(50);
        }
        Object objB3 = Spark.f8663d2.b(a2.a.s("Bi+qiRIK+wgPPKWJDFI=\n", "YE7c1npjiHw=\n"));
        if (objB3 != null) {
            f7134g = (LimitQueue) objB3;
        } else {
            f7134g = new LimitQueue(100);
        }
    }

    public static HistoryBean a(int i6, String str) {
        a2.a.s("I69yYrY6P80NuXJBpTBr\n", "ZMoGLtdJS4U=\n");
        LimitQueue limitQueue = f;
        if (limitQueue == null) {
            return null;
        }
        for (HistoryBean historyBean : c(limitQueue.toArray())) {
            if (historyBean.chid == i6 && historyBean.subId.equals(str)) {
                String str2 = a2.a.s("lh0khFQj/fi4CySnRympwrQMJbpbcA==\n", "0XhQyDVQibA=\n") + historyBean.lastPosition;
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(f7130a, str2);
                return historyBean;
            }
        }
        return null;
    }

    public static List c(Object[] objArr) {
        List listAsList = Arrays.asList(objArr);
        Collections.reverse(listAsList);
        return listAsList;
    }

    public final synchronized List b() {
        return c(f7134g.toArray());
    }

    public final synchronized void d(ChannelBean channelBean) {
        try {
            Iterator it = f7134g.iterator();
            int i6 = 0;
            while (it.hasNext()) {
                if (((ChannelBean) it.next()).getChid() == channelBean.getChid()) {
                    f7134g.set(i6, channelBean);
                }
                i6++;
            }
            da.c cVar = Spark.f8663d2;
            String str = d;
            cVar.g(str);
            Spark.f8663d2.d(str, f7134g, 315360000);
        } catch (Throwable th) {
            throw th;
        }
    }
}
