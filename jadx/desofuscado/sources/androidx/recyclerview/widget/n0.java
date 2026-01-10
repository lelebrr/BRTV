package androidx.recyclerview.widget;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class n0 {
    public static void a(View view, float f) {
        try {
            view.setFrameContentVelocity(f);
        } catch (LinkageError unused) {
        }
    }
}
