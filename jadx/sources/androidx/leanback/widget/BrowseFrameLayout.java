package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class BrowseFrameLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public View.OnKeyListener f1621a;

    public BrowseFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zDispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        View.OnKeyListener onKeyListener = this.f1621a;
        return (onKeyListener == null || zDispatchKeyEvent) ? zDispatchKeyEvent : onKeyListener.onKey(getRootView(), keyEvent.getKeyCode(), keyEvent);
    }

    public k getOnChildFocusListener() {
        return null;
    }

    public l getOnFocusSearchListener() {
        return null;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i6, Rect rect) {
        return super.onRequestFocusInDescendants(i6, rect);
    }

    public void setOnDispatchKeyListener(View.OnKeyListener onKeyListener) {
        this.f1621a = onKeyListener;
    }

    public BrowseFrameLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
    }

    public void setOnChildFocusListener(k kVar) {
    }

    public void setOnFocusSearchListener(l lVar) {
    }
}
