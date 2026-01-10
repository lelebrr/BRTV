package h6;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final Dialog f7268a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7269b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7270c;
    public final int d;

    public a(Dialog dialog, Rect rect) {
        this.f7268a = dialog;
        this.f7269b = rect.left;
        this.f7270c = rect.top;
        this.d = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = viewFindViewById.getLeft() + this.f7269b;
        int width = viewFindViewById.getWidth() + left;
        if (new RectF(left, viewFindViewById.getTop() + this.f7270c, width, viewFindViewById.getHeight() + r4).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            int i6 = this.d;
            motionEventObtain.setLocation((-i6) - 1, (-i6) - 1);
        }
        view.performClick();
        return this.f7268a.onTouchEvent(motionEventObtain);
    }
}
