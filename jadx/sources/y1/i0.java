package y1;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class i0 extends h0 {

    /* renamed from: z, reason: collision with root package name */
    public static boolean f11290z = true;

    @Override // y1.v
    public void h(View view, int i6, int i10, int i11, int i12) {
        if (f11290z) {
            try {
                view.setLeftTopRightBottom(i6, i10, i11, i12);
            } catch (NoSuchMethodError unused) {
                f11290z = false;
            }
        }
    }
}
