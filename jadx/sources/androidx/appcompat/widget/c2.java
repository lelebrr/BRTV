package androidx.appcompat.widget;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c2 implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f675a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f676b;

    public /* synthetic */ c2(int i6, Object obj) {
        this.f675a = i6;
        this.f676b = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        PopupWindow popupWindow;
        switch (this.f675a) {
            case 0:
                int action = motionEvent.getAction();
                int x10 = (int) motionEvent.getX();
                int y7 = (int) motionEvent.getY();
                ListPopupWindow listPopupWindow = (ListPopupWindow) this.f676b;
                if (action == 0 && (popupWindow = listPopupWindow.f583y) != null && popupWindow.isShowing() && x10 >= 0 && x10 < listPopupWindow.f583y.getWidth() && y7 >= 0 && y7 < listPopupWindow.f583y.getHeight()) {
                    listPopupWindow.f579u.postDelayed(listPopupWindow.f575q, 250L);
                    break;
                } else if (action == 1) {
                    listPopupWindow.f579u.removeCallbacks(listPopupWindow.f575q);
                    break;
                }
                break;
            default:
                la.d dVar = (la.d) this.f676b;
                dVar.X.setVisibility(0);
                dVar.S();
                break;
        }
        return false;
    }
}
