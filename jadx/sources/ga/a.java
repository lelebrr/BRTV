package ga;

import android.os.Handler;
import com.alibaba.fastjson.JSON;
import com.lzy.okgo.callback.StringCallback;
import com.lzy.okgo.model.Response;
import com.tencent.mars.xlog.Log;
import java.util.List;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.MessageInfo;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends StringCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spark f7113a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f7114b;

    public a(b bVar, Spark spark) {
        this.f7114b = bVar;
        this.f7113a = spark;
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public final void onError(Response response) {
        Spark.X1.sendEmptyMessage(651);
    }

    @Override // com.lzy.okgo.callback.Callback
    public final void onSuccess(Response response) {
        b bVar = this.f7114b;
        try {
            try {
                List array = JSON.parseArray((String) response.body(), MessageInfo.class);
                int size = array.size();
                if (size > 0) {
                    String str = null;
                    for (int i6 = 0; i6 < size; i6++) {
                        str = str == null ? ((MessageInfo) array.get(i6)).content.init : str + "\n" + ((MessageInfo) array.get(i6)).content.init;
                    }
                    if (str != null && bVar.f7116a == null) {
                        String strS = a2.a.s("MjtTqKE=\n", "cGge28ZQuOg=\n");
                        boolean z7 = org.bitspark.android.utils.m.f8784b;
                        Log.i(strS, str);
                        b.a(bVar, str, this.f7113a);
                        new Handler().postDelayed(new a.f(18, this), 20000L);
                    }
                }
            } catch (Exception unused) {
                String strS2 = a2.a.s("h88a1TM=\n", "xZxXplRTQIM=\n");
                String strS3 = a2.a.s("X/SGyB+ZxzZItZDaDtiKIF3nm8lb\n", "L5X0u3q5qkU=\n");
                boolean z10 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS2, strS3);
            }
            Spark.X1.sendEmptyMessage(50);
        } catch (Throwable th) {
            Spark.X1.sendEmptyMessage(50);
            throw th;
        }
    }
}
