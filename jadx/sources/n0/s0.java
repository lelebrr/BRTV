package n0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.appcompat.widget.AppCompatEditText;
import com.p2elite.brtv2.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class s0 {

    /* renamed from: a, reason: collision with root package name */
    public static WeakHashMap f8353a;

    /* renamed from: b, reason: collision with root package name */
    public static Field f8354b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f8355c;
    public static ThreadLocal d;

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f8356e = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
    public static final b0 f = new b0();

    /* renamed from: g, reason: collision with root package name */
    public static final d0 f8357g = new d0();

    public static a1 a(View view) {
        if (f8353a == null) {
            f8353a = new WeakHashMap();
        }
        a1 a1Var = (a1) f8353a.get(view);
        if (a1Var != null) {
            return a1Var;
        }
        a1 a1Var2 = new a1(view);
        f8353a.put(view, a1Var2);
        return a1Var2;
    }

    public static r1 b(View view, r1 r1Var) {
        WindowInsets windowInsetsG = r1Var.g();
        if (windowInsetsG != null) {
            WindowInsets windowInsetsA = e0.a(view, windowInsetsG);
            if (!windowInsetsA.equals(windowInsetsG)) {
                return r1.h(windowInsetsA, view);
            }
        }
        return r1Var;
    }

    public static boolean c(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList = r0.d;
        r0 r0Var = (r0) view.getTag(R.id.tag_unhandled_key_event_manager);
        if (r0Var == null) {
            r0Var = new r0();
            r0Var.f8348a = null;
            r0Var.f8349b = null;
            r0Var.f8350c = null;
            view.setTag(R.id.tag_unhandled_key_event_manager, r0Var);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap weakHashMap = r0Var.f8348a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList2 = r0.d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    try {
                        if (r0Var.f8348a == null) {
                            r0Var.f8348a = new WeakHashMap();
                        }
                        for (int size = arrayList2.size() - 1; size >= 0; size--) {
                            ArrayList arrayList3 = r0.d;
                            View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                            if (view2 == null) {
                                arrayList3.remove(size);
                            } else {
                                r0Var.f8348a.put(view2, Boolean.TRUE);
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    r0Var.f8348a.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
        }
        View viewA = r0Var.a(view);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (viewA != null && !KeyEvent.isModifierKey(keyCode)) {
                if (r0Var.f8349b == null) {
                    r0Var.f8349b = new SparseArray();
                }
                r0Var.f8349b.put(keyCode, new WeakReference(viewA));
            }
        }
        return viewA != null;
    }

    public static View.AccessibilityDelegate d(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return m0.a(view);
        }
        if (f8355c) {
            return null;
        }
        if (f8354b == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f8354b = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f8355c = true;
                return null;
            }
        }
        try {
            Object obj = f8354b.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f8355c = true;
            return null;
        }
    }

    public static ArrayList e(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(R.id.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    public static Rect f() {
        if (d == null) {
            d = new ThreadLocal();
        }
        Rect rect = (Rect) d.get();
        if (rect == null) {
            rect = new Rect();
            d.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static String[] g(AppCompatEditText appCompatEditText) {
        return Build.VERSION.SDK_INT >= 31 ? o0.a(appCompatEditText) : (String[]) appCompatEditText.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void h(int i6, View view) {
        Object tag;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            int i10 = Build.VERSION.SDK_INT;
            CharSequence charSequenceB = null;
            if (i10 >= 28) {
                tag = l0.b(view);
            } else {
                tag = view.getTag(R.id.tag_accessibility_pane_title);
                if (!CharSequence.class.isInstance(tag)) {
                    tag = null;
                }
            }
            boolean z7 = ((CharSequence) tag) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z7) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z7 ? 32 : 2048);
                accessibilityEventObtain.setContentChangeTypes(i6);
                if (z7) {
                    List<CharSequence> text = accessibilityEventObtain.getText();
                    if (i10 >= 28) {
                        charSequenceB = l0.b(view);
                    } else {
                        Object tag2 = view.getTag(R.id.tag_accessibility_pane_title);
                        if (CharSequence.class.isInstance(tag2)) {
                            charSequenceB = tag2;
                        }
                    }
                    text.add(charSequenceB);
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i6 != 32) {
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i6);
                        return;
                    } catch (AbstractMethodError e5) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e5);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.setEventType(32);
            accessibilityEventObtain2.setContentChangeTypes(i6);
            accessibilityEventObtain2.setSource(view);
            view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
            List<CharSequence> text2 = accessibilityEventObtain2.getText();
            if (i10 >= 28) {
                charSequenceB = l0.b(view);
            } else {
                Object tag3 = view.getTag(R.id.tag_accessibility_pane_title);
                if (CharSequence.class.isInstance(tag3)) {
                    charSequenceB = tag3;
                }
            }
            text2.add(charSequenceB);
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
        }
    }

    public static void i(int i6, View view) {
        boolean z7;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i6);
            return;
        }
        Rect rectF = f();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectF.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z7 = !rectF.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z7 = false;
        }
        view.offsetLeftAndRight(i6);
        if (view.getVisibility() == 0) {
            u(view);
            Object parent2 = view.getParent();
            if (parent2 instanceof View) {
                u((View) parent2);
            }
        }
        if (z7 && rectF.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectF);
        }
    }

    public static void j(int i6, View view) {
        boolean z7;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i6);
            return;
        }
        Rect rectF = f();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectF.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z7 = !rectF.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z7 = false;
        }
        view.offsetTopAndBottom(i6);
        if (view.getVisibility() == 0) {
            u(view);
            Object parent2 = view.getParent();
            if (parent2 instanceof View) {
                u((View) parent2);
            }
        }
        if (z7 && rectF.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectF);
        }
    }

    public static r1 k(View view, r1 r1Var) {
        WindowInsets windowInsetsG = r1Var.g();
        if (windowInsetsG != null) {
            WindowInsets windowInsetsB = e0.b(view, windowInsetsG);
            if (!windowInsetsB.equals(windowInsetsG)) {
                return r1.h(windowInsetsB, view);
            }
        }
        return r1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static g l(View view, g gVar) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + gVar + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return o0.b(view, gVar);
        }
        t tVar = (t) view.getTag(R.id.tag_on_receive_content_listener);
        u uVar = f;
        if (tVar == null) {
            if (view instanceof u) {
                uVar = (u) view;
            }
            return uVar.a(gVar);
        }
        g gVarA = ((androidx.core.widget.r) tVar).a(view, gVar);
        if (gVarA == null) {
            return null;
        }
        if (view instanceof u) {
            uVar = (u) view;
        }
        return uVar.a(gVarA);
    }

    public static void m(int i6, View view) {
        n(i6, view);
        h(0, view);
    }

    public static void n(int i6, View view) {
        ArrayList arrayListE = e(view);
        for (int i10 = 0; i10 < arrayListE.size(); i10++) {
            if (((o0.c) arrayListE.get(i10)).a() == i6) {
                arrayListE.remove(i10);
                return;
            }
        }
    }

    public static void o(View view, o0.c cVar, o0.s sVar) {
        if (sVar == null) {
            m(cVar.a(), view);
            return;
        }
        o0.c cVar2 = new o0.c(null, cVar.f8537b, null, sVar, cVar.f8538c);
        View.AccessibilityDelegate accessibilityDelegateD = d(view);
        b bVar = accessibilityDelegateD == null ? null : accessibilityDelegateD instanceof a ? ((a) accessibilityDelegateD).f8291a : new b(accessibilityDelegateD);
        if (bVar == null) {
            bVar = new b();
        }
        q(view, bVar);
        n(cVar2.a(), view);
        e(view).add(cVar2);
        h(0, view);
    }

    public static void p(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i6, int i10) {
        if (Build.VERSION.SDK_INT >= 29) {
            m0.d(view, context, iArr, attributeSet, typedArray, i6, i10);
        }
    }

    public static void q(View view, b bVar) {
        if (bVar == null && (d(view) instanceof a)) {
            bVar = new b();
        }
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        view.setAccessibilityDelegate(bVar == null ? null : bVar.f8299b);
    }

    public static void r(View view, CharSequence charSequence) {
        new c0(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 1).d(view, charSequence);
        d0 d0Var = f8357g;
        if (charSequence == null) {
            d0Var.f8302a.remove(view);
            view.removeOnAttachStateChangeListener(d0Var);
            view.getViewTreeObserver().removeOnGlobalLayoutListener(d0Var);
        } else {
            d0Var.f8302a.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(d0Var);
            if (view.isAttachedToWindow()) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(d0Var);
            }
        }
    }

    public static void s(View view, ColorStateList colorStateList) {
        int i6 = Build.VERSION.SDK_INT;
        g0.q(view, colorStateList);
        if (i6 == 21) {
            Drawable background = view.getBackground();
            boolean z7 = (g0.g(view) == null && g0.h(view) == null) ? false : true;
            if (background == null || !z7) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            view.setBackground(background);
        }
    }

    public static void t(ViewGroup viewGroup, j7.c cVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            i0.d(viewGroup, k3.p.d(cVar != null ? (PointerIcon) cVar.f7444b : null));
        }
    }

    public static void u(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }
}
