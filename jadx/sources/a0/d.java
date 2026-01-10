package a0;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.WeakHashMap;
import l6.q;
import n0.s0;
import y1.o;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f34a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f35b;

    public /* synthetic */ d(int i6, Object obj) {
        this.f34a = i6;
        this.f35b = obj;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        View view;
        Object obj = this.f35b;
        switch (this.f34a) {
            case 0:
                ((CoordinatorLayout) obj).u(0);
                break;
            case 1:
                q qVar = (q) obj;
                float rotation = qVar.f8058v.getRotation();
                if (qVar.f8051o != rotation) {
                    qVar.f8051o = rotation;
                    qVar.q();
                    break;
                }
                break;
            default:
                WeakHashMap weakHashMap = s0.f8353a;
                o oVar = (o) obj;
                oVar.postInvalidateOnAnimation();
                ViewGroup viewGroup = oVar.f11314a;
                if (viewGroup != null && (view = oVar.f11315b) != null) {
                    viewGroup.endViewTransition(view);
                    oVar.f11314a.postInvalidateOnAnimation();
                    oVar.f11314a = null;
                    oVar.f11315b = null;
                    break;
                }
                break;
        }
        return true;
    }
}
