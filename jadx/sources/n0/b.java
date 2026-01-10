package n0;

import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;
import com.p2elite.brtv2.R;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class b {

    /* renamed from: c, reason: collision with root package name */
    public static final View.AccessibilityDelegate f8297c = new View.AccessibilityDelegate();

    /* renamed from: a, reason: collision with root package name */
    public final View.AccessibilityDelegate f8298a;

    /* renamed from: b, reason: collision with root package name */
    public final a f8299b;

    public b() {
        this(f8297c);
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f8298a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public j7.c b(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.f8298a.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new j7.c(20, accessibilityNodeProvider);
        }
        return null;
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.f8298a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void d(View view, o0.h hVar) {
        this.f8298a.onInitializeAccessibilityNodeInfo(view, hVar.f8541a);
    }

    public void e(View view, AccessibilityEvent accessibilityEvent) {
        this.f8298a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f8298a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean g(View view, int i6, Bundle bundle) {
        boolean zPerformAccessibilityAction;
        WeakReference weakReference;
        ClickableSpan clickableSpan;
        List listEmptyList = (List) view.getTag(R.id.tag_accessibility_actions);
        if (listEmptyList == null) {
            listEmptyList = Collections.emptyList();
        }
        boolean z7 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= listEmptyList.size()) {
                break;
            }
            o0.c cVar = (o0.c) listEmptyList.get(i10);
            if (cVar.a() == i6) {
                o0.s sVar = cVar.d;
                if (sVar != null) {
                    Class cls = cVar.f8538c;
                    if (cls != null) {
                        try {
                            if (cls.getDeclaredConstructor(null).newInstance(null) == null) {
                                throw null;
                            }
                            throw new ClassCastException();
                        } catch (Exception e5) {
                            Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: ".concat(cls.getName()), e5);
                        }
                    }
                    zPerformAccessibilityAction = sVar.perform(view, null);
                }
            } else {
                i10++;
            }
        }
        zPerformAccessibilityAction = false;
        if (!zPerformAccessibilityAction) {
            zPerformAccessibilityAction = this.f8298a.performAccessibilityAction(view, i6, bundle);
        }
        if (zPerformAccessibilityAction || i6 != R.id.accessibility_action_clickable_span || bundle == null) {
            return zPerformAccessibilityAction;
        }
        int i11 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i11)) != null && (clickableSpan = (ClickableSpan) weakReference.get()) != null) {
            CharSequence text = view.createAccessibilityNodeInfo().getText();
            ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
            int i12 = 0;
            while (true) {
                if (clickableSpanArr == null || i12 >= clickableSpanArr.length) {
                    break;
                }
                if (clickableSpan.equals(clickableSpanArr[i12])) {
                    clickableSpan.onClick(view);
                    z7 = true;
                    break;
                }
                i12++;
            }
        }
        return z7;
    }

    public void h(View view, int i6) {
        this.f8298a.sendAccessibilityEvent(view, i6);
    }

    public void i(View view, AccessibilityEvent accessibilityEvent) {
        this.f8298a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public b(View.AccessibilityDelegate accessibilityDelegate) {
        this.f8298a = accessibilityDelegate;
        this.f8299b = new a(this);
    }
}
