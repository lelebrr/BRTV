package ga;

import com.lzy.okgo.callback.FileCallback;
import com.lzy.okgo.model.Response;
import com.tencent.mars.xlog.Log;
import java.io.File;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends FileCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f7124a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(h hVar, String str, String str2) {
        super(str, str2);
        this.f7124a = hVar;
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public final void onError(Response response) {
        String strS = a2.a.s("JI3PtUI=\n", "Zt6K5QVHv4Y=\n");
        String strS2 = a2.a.s("ikfNCQ/VRX2LUNZEStZHL5tHywkMxEsxwQLLTAvBAjufTdQJCcRBNYg=\n", "7SK5KWqlIl0=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
        Spark.X1.sendEmptyMessage(30);
    }

    @Override // com.lzy.okgo.callback.Callback
    public final void onSuccess(Response response) {
        File file = (File) response.body();
        h hVar = this.f7124a;
        hVar.getClass();
        new g(hVar, file).start();
    }
}
