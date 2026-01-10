package n0;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f0 implements View.OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public r1 f8314a = null;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f8315b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ s f8316c;

    public f0(View view, s sVar) {
        this.f8315b = view;
        this.f8316c = sVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        r1 r1VarH = r1.h(windowInsets, view);
        int i6 = Build.VERSION.SDK_INT;
        s sVar = this.f8316c;
        if (i6 < 30) {
            g0.a(windowInsets, this.f8315b);
            if (r1VarH.equals(this.f8314a)) {
                return sVar.onApplyWindowInsets(view, r1VarH).g();
            }
        }
        this.f8314a = r1VarH;
        r1 r1VarOnApplyWindowInsets = sVar.onApplyWindowInsets(view, r1VarH);
        if (i6 >= 30) {
            return r1VarOnApplyWindowInsets.g();
        }
        WeakHashMap weakHashMap = s0.f8353a;
        e0.c(view);
        return r1VarOnApplyWindowInsets.g();
    }
}
