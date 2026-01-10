package o0;

import android.R;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.media3.common.C;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: e, reason: collision with root package name */
    public static final c f8522e = new c(1);
    public static final c f = new c(2);

    /* renamed from: g, reason: collision with root package name */
    public static final c f8523g;

    /* renamed from: h, reason: collision with root package name */
    public static final c f8524h;

    /* renamed from: i, reason: collision with root package name */
    public static final c f8525i;

    /* renamed from: j, reason: collision with root package name */
    public static final c f8526j;

    /* renamed from: k, reason: collision with root package name */
    public static final c f8527k;

    /* renamed from: l, reason: collision with root package name */
    public static final c f8528l;

    /* renamed from: m, reason: collision with root package name */
    public static final c f8529m;

    /* renamed from: n, reason: collision with root package name */
    public static final c f8530n;

    /* renamed from: o, reason: collision with root package name */
    public static final c f8531o;

    /* renamed from: p, reason: collision with root package name */
    public static final c f8532p;

    /* renamed from: q, reason: collision with root package name */
    public static final c f8533q;

    /* renamed from: r, reason: collision with root package name */
    public static final c f8534r;

    /* renamed from: s, reason: collision with root package name */
    public static final c f8535s;

    /* renamed from: a, reason: collision with root package name */
    public final Object f8536a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8537b;

    /* renamed from: c, reason: collision with root package name */
    public final Class f8538c;
    public final s d;

    static {
        new c(4);
        new c(8);
        f8523g = new c(16);
        new c(32);
        new c(64);
        new c(128);
        new c(256, l.class);
        new c(512, l.class);
        new c(1024, m.class);
        new c(2048, m.class);
        f8524h = new c(4096);
        f8525i = new c(8192);
        new c(16384);
        new c(32768);
        new c(C.DEFAULT_BUFFER_SEGMENT_SIZE);
        new c(131072, q.class);
        f8526j = new c(262144);
        f8527k = new c(524288);
        f8528l = new c(ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES);
        new c(2097152, r.class);
        int i6 = Build.VERSION.SDK_INT;
        new c(i6 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, R.id.accessibilityActionShowOnScreen, null, null, null);
        f8529m = new c(i6 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, R.id.accessibilityActionScrollToPosition, null, null, o.class);
        f8530n = new c(i6 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, R.id.accessibilityActionScrollUp, null, null, null);
        f8531o = new c(i6 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, R.id.accessibilityActionScrollLeft, null, null, null);
        f8532p = new c(i6 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, R.id.accessibilityActionScrollDown, null, null, null);
        f8533q = new c(i6 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, R.id.accessibilityActionScrollRight, null, null, null);
        new c(i6 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
        new c(i6 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null, null, null);
        new c(i6 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
        new c(i6 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null, null, null);
        new c(i6 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, R.id.accessibilityActionContextClick, null, null, null);
        f8534r = new c(i6 >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, R.id.accessibilityActionSetProgress, null, null, p.class);
        new c(i6 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, n.class);
        new c(i6 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null, null, null);
        new c(i6 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null, null, null);
        new c(i6 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
        new c(i6 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null, null, null);
        new c(i6 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START : null, R.id.accessibilityActionDragStart, null, null, null);
        new c(i6 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP : null, R.id.accessibilityActionDragDrop, null, null, null);
        new c(i6 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL : null, R.id.accessibilityActionDragCancel, null, null, null);
        new c(i6 >= 33 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS : null, R.id.accessibilityActionShowTextSuggestions, null, null, null);
        f8535s = new c(i6 >= 34 ? f.a() : null, R.id.accessibilityActionScrollInDirection, null, null, null);
    }

    public c(int i6) {
        this(null, i6, null, null, null);
    }

    public final int a() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.f8536a).getId();
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        Object obj2 = ((c) obj).f8536a;
        Object obj3 = this.f8536a;
        return obj3 == null ? obj2 == null : obj3.equals(obj2);
    }

    public final int hashCode() {
        Object obj = this.f8536a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
        String strD = h.d(this.f8537b);
        if (strD.equals("ACTION_UNKNOWN")) {
            Object obj = this.f8536a;
            if (((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel() != null) {
                strD = ((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel().toString();
            }
        }
        sb.append(strD);
        return sb.toString();
    }

    public c(int i6, Class cls) {
        this(null, i6, null, null, cls);
    }

    public c(Object obj, int i6, String str, s sVar, Class cls) {
        this.f8537b = i6;
        this.d = sVar;
        if (obj == null) {
            this.f8536a = new AccessibilityNodeInfo.AccessibilityAction(i6, str);
        } else {
            this.f8536a = obj;
        }
        this.f8538c = cls;
    }
}
