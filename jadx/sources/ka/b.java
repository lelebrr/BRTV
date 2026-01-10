package ka;

import android.view.KeyEvent;
import android.view.View;
import com.tencent.mars.xlog.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class b extends e8.a {
    public boolean onKey(View view, int i6, KeyEvent keyEvent) {
        view.getId();
        if (keyEvent.getRepeatCount() != 0 || keyEvent.getAction() != 0 || i6 != 4) {
            return false;
        }
        String strS = a2.a.s("FJjvUyt7GQ87nPJC\n", "VvmcNm0JeGg=\n");
        String strS2 = a2.a.s("bMoPdXWxm/tbywFuS6M=\n", "H6JgAiTE8o8=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
        org.bitspark.android.utils.m.p(j());
        return true;
    }
}
