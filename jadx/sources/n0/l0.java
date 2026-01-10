package n0;

import android.view.View;
import com.p2elite.brtv2.R;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class l0 {
    public static void a(View view, q0 q0Var) {
        p.l lVar = (p.l) view.getTag(R.id.tag_unhandled_key_listeners);
        if (lVar == null) {
            lVar = new p.l(0);
            view.setTag(R.id.tag_unhandled_key_listeners, lVar);
        }
        Objects.requireNonNull(q0Var);
        View.OnUnhandledKeyEventListener k0Var = new k0();
        lVar.put(q0Var, k0Var);
        view.addOnUnhandledKeyEventListener(k0Var);
    }

    public static CharSequence b(View view) {
        return view.getAccessibilityPaneTitle();
    }

    public static boolean c(View view) {
        return view.isAccessibilityHeading();
    }

    public static boolean d(View view) {
        return view.isScreenReaderFocusable();
    }

    public static void e(View view, q0 q0Var) {
        View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
        p.l lVar = (p.l) view.getTag(R.id.tag_unhandled_key_listeners);
        if (lVar == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) lVar.get(q0Var)) == null) {
            return;
        }
        view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
    }

    public static <T> T f(View view, int i6) {
        return (T) view.requireViewById(i6);
    }

    public static void g(View view, boolean z7) {
        view.setAccessibilityHeading(z7);
    }

    public static void h(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    public static void i(View view, q0.a aVar) {
        view.setAutofillId(null);
    }

    public static void j(View view, boolean z7) {
        view.setScreenReaderFocusable(z7);
    }
}
