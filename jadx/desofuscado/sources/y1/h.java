package y1;

import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.transition.Transition;
import com.p2elite.brtv2.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class h extends z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11279a = 0;

    /* renamed from: b, reason: collision with root package name */
    public Object f11280b;

    /* renamed from: c, reason: collision with root package name */
    public Object f11281c;

    public /* synthetic */ h() {
    }

    @Override // y1.z, y1.y
    public void b() {
        switch (this.f11279a) {
            case 0:
                ((m) this.f11281c).setVisibility(4);
                break;
        }
    }

    @Override // y1.z, y1.y
    public void c() {
        switch (this.f11279a) {
            case 0:
                ((m) this.f11281c).setVisibility(0);
                break;
        }
    }

    @Override // y1.y
    public final void e(Transition transition) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        switch (this.f11279a) {
            case 0:
                transition.u(this);
                int i6 = Build.VERSION.SDK_INT;
                View view = (View) this.f11280b;
                if (i6 == 28) {
                    if (!s2.c.f9743h) {
                        try {
                            s2.c.d();
                            Method declaredMethod = s2.c.f9740c.getDeclaredMethod("removeGhost", View.class);
                            s2.c.f9742g = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e5) {
                            Log.i("GhostViewApi21", "Failed to retrieve removeGhost method", e5);
                        }
                        s2.c.f9743h = true;
                    }
                    Method method = s2.c.f9742g;
                    if (method != null) {
                        try {
                            method.invoke(null, view);
                        } catch (IllegalAccessException unused) {
                        } catch (InvocationTargetException e10) {
                            throw new RuntimeException(e10.getCause());
                        }
                    }
                } else {
                    int i10 = o.f11313g;
                    o oVar = (o) view.getTag(R.id.ghost_view);
                    if (oVar != null) {
                        int i11 = oVar.d - 1;
                        oVar.d = i11;
                        if (i11 <= 0) {
                            ((n) oVar.getParent()).removeView(oVar);
                        }
                    }
                }
                view.setTag(R.id.transition_transform, null);
                view.setTag(R.id.parent_matrix, null);
                return;
            default:
                ((ArrayList) ((p.e) this.f11280b).get(((a0) this.f11281c).f11237b)).remove(transition);
                transition.u(this);
                return;
        }
    }

    public h(a0 a0Var, p.e eVar) {
        this.f11281c = a0Var;
        this.f11280b = eVar;
    }
}
