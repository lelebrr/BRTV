package n0;

import android.view.WindowInsets;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class q1 {
    public static int a(int i6) {
        int iStatusBars;
        int i10 = 0;
        for (int i11 = 1; i11 <= 256; i11 <<= 1) {
            if ((i6 & i11) != 0) {
                if (i11 == 1) {
                    iStatusBars = WindowInsets.Type.statusBars();
                } else if (i11 == 2) {
                    iStatusBars = WindowInsets.Type.navigationBars();
                } else if (i11 == 4) {
                    iStatusBars = WindowInsets.Type.captionBar();
                } else if (i11 == 8) {
                    iStatusBars = WindowInsets.Type.ime();
                } else if (i11 == 16) {
                    iStatusBars = WindowInsets.Type.systemGestures();
                } else if (i11 == 32) {
                    iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                } else if (i11 == 64) {
                    iStatusBars = WindowInsets.Type.tappableElement();
                } else if (i11 == 128) {
                    iStatusBars = WindowInsets.Type.displayCutout();
                }
                i10 |= iStatusBars;
            }
        }
        return i10;
    }
}
