package n0;

import android.view.View;
import android.view.Window;
import androidx.media3.common.C;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u1 extends t1 {
    @Override // o9.e
    public final void F(boolean z7) {
        Window window = this.f;
        if (!z7) {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-17));
        } else {
            window.clearFlags(C.BUFFER_FLAG_FIRST_SAMPLE);
            window.addFlags(Integer.MIN_VALUE);
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() | 16);
        }
    }
}
