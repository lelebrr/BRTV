package la;

import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.utils.j;
import org.bitspark.android.utils.m;
import sa.o;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements j, o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f8077a;

    public /* synthetic */ a(d dVar) {
        this.f8077a = dVar;
    }

    @Override // org.bitspark.android.utils.j
    public void a(String str) {
        String strS = a2.a.s("99oO/xqnVRHN1hb7\n", "ub96iHXVPkQ=\n");
        String strConcat = a2.a.s("gVCjz24QrEa0VrnYKwe9XLYfvtRoEL1csQXt\n", "wj/NoQtz2C8=\n").concat(str);
        boolean z7 = m.f8784b;
        Log.i(strS, strConcat);
    }

    @Override // org.bitspark.android.utils.j
    public void b(String str) {
        String strS = a2.a.s("lFaRuZKt8eWuWom9\n", "2jPlzv3fmrA=\n");
        String strConcat = a2.a.s("pNvG0DI266WR3dzHdyH6v5OUzt8+Ofqo3ZQ=\n", "57SovldVn8w=\n").concat(str);
        boolean z7 = m.f8784b;
        Log.i(strS, strConcat);
        d dVar = this.f8077a;
        dVar.getClass();
        dVar.f8092l0 = true;
        dVar.T(str);
        dVar.f8089h0.setImageResource(R.mipmap.network_icon_no_3x);
    }

    @Override // sa.o
    public void onDismiss() {
        this.f8077a.X.setVisibility(0);
    }
}
