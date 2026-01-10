package n0;

import android.view.View;
import android.view.Window;
import androidx.media3.common.C;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class t1 extends s1 {
    @Override // o9.e
    public final void G(boolean z7) {
        Window window = this.f;
        if (!z7) {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-8193));
        } else {
            window.clearFlags(C.BUFFER_FLAG_NOT_DEPENDED_ON);
            window.addFlags(Integer.MIN_VALUE);
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() | 8192);
        }
    }
}
