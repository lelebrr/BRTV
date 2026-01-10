package ka;

import androidx.fragment.app.FragmentActivity;
import com.alibaba.fastjson.JSON;
import com.lzy.okgo.callback.StringCallback;
import com.lzy.okgo.model.Response;
import com.tencent.mars.xlog.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.bitspark.android.beans.EventBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends StringCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7781a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f7782b;

    public /* synthetic */ f(j jVar, int i6) {
        this.f7781a = i6;
        this.f7782b = jVar;
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public void onCacheSuccess(Response response) {
        switch (this.f7781a) {
            case 1:
                String strS = a2.a.s("Z72d0SklTghCt57A\n", "L9LwtG9XL28=\n");
                String strS2 = a2.a.s("StxLY3gcwXpF2FEtax+FX1/WUmNtEsZRSJlQKA==\n", "Lbk/Qw5zpTk=\n");
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS, strS2);
                break;
            default:
                super.onCacheSuccess(response);
                break;
        }
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public final void onError(Response response) {
        int i6 = this.f7781a;
    }

    @Override // com.lzy.okgo.callback.Callback
    public final void onSuccess(Response response) {
        List<EventBean> array;
        switch (this.f7781a) {
            case 0:
                String strS = a2.a.s("hctG6czlIk+gwUX4\n", "zaQrjIqXQyg=\n");
                String str = a2.a.s("Q5rNzUstoilLmsvdAw2sI1zFmQ==\n", "Jf+5riNvw0c=\n") + ((String) response.body());
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS, str);
                try {
                    array = JSON.parseArray((String) response.body(), EventBean.class);
                } catch (Exception e5) {
                    Log.i(a2.a.s("9GmQb0TshsLRY5N+\n", "vAb9CgKe56U=\n"), e5.toString());
                    array = null;
                }
                if (array == null || array.isEmpty()) {
                    return;
                }
                Log.i(a2.a.s("LeQyvS47c0YI7jGs\n", "ZYtf2GhJEiE=\n"), a2.a.s("L7xMCcPoWE0nvEoZi8ZQUD3jGA==\n", "Sdk4aquqOSM=\n") + array);
                j jVar = this.f7782b;
                jVar.getClass();
                if (array.isEmpty()) {
                    return;
                }
                AtomicInteger atomicInteger = new AtomicInteger(0);
                int size = array.size();
                ArrayList arrayList = new ArrayList(size);
                a2.a.s("ylQyVZqJUaDWSh5UlI9Qku5OMlemgFqW+Ec5V5CaFbLuZwVt1cUYzJcG\n", "uiZXOfXoNeE=\n");
                for (EventBean eventBean : array) {
                    FragmentActivity fragmentActivityH = jVar.h();
                    com.bumptech.glide.l lVarX = ((com.bumptech.glide.l) com.bumptech.glide.b.b(fragmentActivityH).c(fragmentActivityH).o(eventBean.image).d(x2.k.f10912c)).x(new h(jVar, atomicInteger, size, arrayList, eventBean));
                    lVarX.getClass();
                    lVarX.C(new o3.f(lVarX.f3538v), lVarX);
                }
                return;
            default:
                p8.c cVar = new p8.c(new androidx.media3.common.x(15, (String) response.body()));
                j jVar2 = this.f7782b;
                o8.a aVar = jVar2.f7804c0;
                if (aVar != null && !aVar.g()) {
                    o8.a aVar2 = jVar2.f7804c0;
                    aVar2.getClass();
                    m8.a.b(aVar2);
                }
                q8.h hVar = u8.e.f10457a;
                Objects.requireNonNull(hVar, "scheduler is null");
                p8.g gVar = new p8.g(cVar, hVar);
                i8.f fVar = h8.b.f7274a;
                if (fVar == null) {
                    throw new NullPointerException("scheduler == null");
                }
                p8.e eVarV = gVar.v(fVar);
                o8.a aVar3 = new o8.a(new androidx.media3.common.x(16, this));
                eVarV.F(aVar3);
                jVar2.f7804c0 = aVar3;
                return;
        }
    }

    private final void a(Response response) {
    }

    private final void b(Response response) {
    }
}
