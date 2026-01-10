package o0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* renamed from: a, reason: collision with root package name */
    public final int f8518a;

    /* renamed from: b, reason: collision with root package name */
    public final h f8519b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8520c;

    public a(int i6, h hVar, int i10) {
        this.f8518a = i6;
        this.f8519b = hVar;
        this.f8520c = i10;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f8518a);
        this.f8519b.f8541a.performAction(this.f8520c, bundle);
    }
}
