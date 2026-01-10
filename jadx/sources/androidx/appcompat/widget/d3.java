package androidx.appcompat.widget;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d3 extends TouchDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final View f685a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f686b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f687c;
    public final Rect d;

    /* renamed from: e, reason: collision with root package name */
    public final int f688e;
    public boolean f;

    public d3(Rect rect, Rect rect2, View view) {
        super(rect, view);
        int scaledTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.f688e = scaledTouchSlop;
        Rect rect3 = new Rect();
        this.f686b = rect3;
        Rect rect4 = new Rect();
        this.d = rect4;
        Rect rect5 = new Rect();
        this.f687c = rect5;
        rect3.set(rect);
        rect4.set(rect);
        int i6 = -scaledTouchSlop;
        rect4.inset(i6, i6);
        rect5.set(rect2);
        this.f685a = view;
    }

    @Override // android.view.TouchDelegate
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z7;
        boolean z10;
        int x10 = (int) motionEvent.getX();
        int y7 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z11 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                z10 = this.f;
                if (z10 && !this.d.contains(x10, y7)) {
                    z11 = z10;
                    z7 = false;
                }
            } else {
                if (action == 3) {
                    z10 = this.f;
                    this.f = false;
                }
                z7 = true;
                z11 = false;
            }
            z11 = z10;
            z7 = true;
        } else {
            if (this.f686b.contains(x10, y7)) {
                this.f = true;
                z7 = true;
            }
            z7 = true;
            z11 = false;
        }
        if (!z11) {
            return false;
        }
        Rect rect = this.f687c;
        View view = this.f685a;
        if (!z7 || rect.contains(x10, y7)) {
            motionEvent.setLocation(x10 - rect.left, y7 - rect.top);
        } else {
            motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
        }
        return view.dispatchTouchEvent(motionEvent);
    }
}
