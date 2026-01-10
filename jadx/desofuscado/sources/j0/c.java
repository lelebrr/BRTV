package j0;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c {
    public static final void a(Bundle bundle, String str, Size size) {
        bundle.putSize(str, size);
    }

    public static final void b(Bundle bundle, String str, SizeF sizeF) {
        bundle.putSizeF(str, sizeF);
    }
}
