package y1;

import android.view.ViewGroup;
import androidx.transition.AutoTransition;
import androidx.transition.Transition;
import com.p2elite.brtv2.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class b0 {

    /* renamed from: a, reason: collision with root package name */
    public static final AutoTransition f11243a = new AutoTransition();

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f11244b = new ThreadLocal();

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f11245c = new ArrayList();

    public static void a(ViewGroup viewGroup, Transition transition) {
        ArrayList arrayList = f11245c;
        if (arrayList.contains(viewGroup)) {
            return;
        }
        WeakHashMap weakHashMap = s0.f8353a;
        if (viewGroup.isLaidOut()) {
            arrayList.add(viewGroup);
            if (transition == null) {
                transition = f11243a;
            }
            Transition transitionClone = transition.clone();
            ArrayList arrayList2 = (ArrayList) b().get(viewGroup);
            if (arrayList2 != null && arrayList2.size() > 0) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).t(viewGroup);
                }
            }
            if (transitionClone != null) {
                transitionClone.g(viewGroup, true);
            }
            if (viewGroup.getTag(R.id.transition_current_scene) != null) {
                throw new ClassCastException();
            }
            viewGroup.setTag(R.id.transition_current_scene, null);
            if (transitionClone != null) {
                a0 a0Var = new a0();
                a0Var.f11236a = transitionClone;
                a0Var.f11237b = viewGroup;
                viewGroup.addOnAttachStateChangeListener(a0Var);
                viewGroup.getViewTreeObserver().addOnPreDrawListener(a0Var);
            }
        }
    }

    public static p.e b() {
        p.e eVar;
        ThreadLocal threadLocal = f11244b;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (eVar = (p.e) weakReference.get()) != null) {
            return eVar;
        }
        p.e eVar2 = new p.e(0);
        threadLocal.set(new WeakReference(eVar2));
        return eVar2;
    }
}
