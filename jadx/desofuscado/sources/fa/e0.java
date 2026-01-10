package fa;

import android.view.View;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e0 implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f0 f6837a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6838b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6839c;
    public final /* synthetic */ g0 d;

    public e0(g0 g0Var, f0 f0Var, int i6, int i10) {
        this.d = g0Var;
        this.f6837a = f0Var;
        this.f6838b = i6;
        this.f6839c = i10;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        String strS = a2.a.s("7HQovbaQLhrFbB+7vJc=\n", "oQ1vz9nlXls=\n");
        String str = a2.a.s("hploum0QAPaBlkCya19T\n", "6fcu1Q5lc7U=\n") + z7 + a2.a.s("CKwi1vA=\n", "NZEf682+J/o=\n") + view + a2.a.s("yHUVJXkfxUc=\n", "9UgoGEQi+Ho=\n") + ((Spark) this.f6837a.itemView.getContext()).getCurrentFocus();
        boolean z10 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, str);
        g0 g0Var = this.d;
        if (g0Var.f6858g) {
            view.setSelected(z7);
            if (z7) {
                g0Var.a(this.f6838b, view);
                Log.i(a2.a.s("qPxY2arK3TWB5G/foM0=\n", "5YUfq8W/rXQ=\n"), a2.a.s("9u36E7wElP7x4tIbukvHzvzv2R+rFIPr8ObLXOI=\n", "mYO8fN9x570=\n") + view);
            }
            if (this.f6839c < g0Var.d.size()) {
                g0Var.f.b(view, z7);
            }
        }
    }
}
