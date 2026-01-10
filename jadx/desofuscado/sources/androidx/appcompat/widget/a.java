package androidx.appcompat.widget;

import android.view.View;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements n0.b1 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f659a;

    /* renamed from: b, reason: collision with root package name */
    public int f660b;

    /* renamed from: c, reason: collision with root package name */
    public final View f661c;

    public a(FloatingActionButton floatingActionButton) {
        this.f659a = false;
        this.f660b = 0;
        this.f661c = floatingActionButton;
    }

    @Override // n0.b1
    public void a() {
        if (this.f659a) {
            return;
        }
        ActionBarContextView actionBarContextView = (ActionBarContextView) this.f661c;
        actionBarContextView.f = null;
        super/*android.view.ViewGroup*/.setVisibility(this.f660b);
    }

    @Override // n0.b1
    public void b() {
        this.f659a = true;
    }

    @Override // n0.b1
    public void c() {
        super/*android.view.ViewGroup*/.setVisibility(0);
        this.f659a = false;
    }

    public a(ActionBarContextView actionBarContextView) {
        this.f661c = actionBarContextView;
        this.f659a = false;
    }
}
