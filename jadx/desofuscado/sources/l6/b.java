package l6;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.view.View;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7989a;

    /* renamed from: b, reason: collision with root package name */
    public final ExtendedFloatingActionButton f7990b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f7991c = new ArrayList();
    public final j7.c d;

    /* renamed from: e, reason: collision with root package name */
    public y5.e f7992e;
    public y5.e f;

    public b(ExtendedFloatingActionButton extendedFloatingActionButton, j7.c cVar) {
        this.f7990b = extendedFloatingActionButton;
        this.f7989a = extendedFloatingActionButton.getContext();
        this.d = cVar;
    }

    public AnimatorSet a() {
        y5.e eVar = this.f;
        if (eVar == null) {
            if (this.f7992e == null) {
                this.f7992e = y5.e.b(this.f7989a, c());
            }
            eVar = this.f7992e;
            eVar.getClass();
        }
        return b(eVar);
    }

    public final AnimatorSet b(y5.e eVar) {
        ArrayList arrayList = new ArrayList();
        boolean zG = eVar.g("opacity");
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f7990b;
        if (zG) {
            arrayList.add(eVar.d("opacity", extendedFloatingActionButton, View.ALPHA));
        }
        if (eVar.g("scale")) {
            arrayList.add(eVar.d("scale", extendedFloatingActionButton, View.SCALE_Y));
            arrayList.add(eVar.d("scale", extendedFloatingActionButton, View.SCALE_X));
        }
        if (eVar.g("width")) {
            arrayList.add(eVar.d("width", extendedFloatingActionButton, ExtendedFloatingActionButton.F));
        }
        if (eVar.g("height")) {
            arrayList.add(eVar.d("height", extendedFloatingActionButton, ExtendedFloatingActionButton.G));
        }
        if (eVar.g("paddingStart")) {
            arrayList.add(eVar.d("paddingStart", extendedFloatingActionButton, ExtendedFloatingActionButton.H));
        }
        if (eVar.g("paddingEnd")) {
            arrayList.add(eVar.d("paddingEnd", extendedFloatingActionButton, ExtendedFloatingActionButton.I));
        }
        if (eVar.g("labelOpacity")) {
            arrayList.add(eVar.d("labelOpacity", extendedFloatingActionButton, new a(this)));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        o9.d.x(animatorSet, arrayList);
        return animatorSet;
    }

    public abstract int c();

    public void d() {
        this.d.f7444b = null;
    }

    public abstract void e();

    public abstract void f(Animator animator);

    public abstract void g();

    public abstract boolean h();
}
