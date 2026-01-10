package y1;

import android.os.Build;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class j0 extends i0 {
    public static boolean A = true;

    @Override // y1.v
    public void i(int i6, View view) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (Build.VERSION.SDK_INT == 28) {
            super.i(i6, view);
        } else if (A) {
            try {
                view.setTransitionVisibility(i6);
            } catch (NoSuchMethodError unused) {
                A = false;
            }
        }
    }
}
