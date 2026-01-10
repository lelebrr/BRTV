package com.google.android.material.internal;

import android.content.Context;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x {

    /* renamed from: c, reason: collision with root package name */
    public float f5083c;

    /* renamed from: e, reason: collision with root package name */
    public final WeakReference f5084e;
    public r6.d f;

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f5081a = new TextPaint(1);

    /* renamed from: b, reason: collision with root package name */
    public final v f5082b = new v(0, this);
    public boolean d = true;

    public x(w wVar) {
        this.f5084e = new WeakReference(null);
        this.f5084e = new WeakReference(wVar);
    }

    public final float a(String str) {
        if (!this.d) {
            return this.f5083c;
        }
        float fMeasureText = str == null ? 0.0f : this.f5081a.measureText((CharSequence) str, 0, str.length());
        this.f5083c = fMeasureText;
        this.d = false;
        return fMeasureText;
    }

    public final void b(r6.d dVar, Context context) {
        if (this.f != dVar) {
            this.f = dVar;
            if (dVar != null) {
                TextPaint textPaint = this.f5081a;
                v vVar = this.f5082b;
                dVar.f(context, textPaint, vVar);
                w wVar = (w) this.f5084e.get();
                if (wVar != null) {
                    textPaint.drawableState = wVar.getState();
                }
                dVar.e(context, textPaint, vVar);
                this.d = true;
            }
            w wVar2 = (w) this.f5084e.get();
            if (wVar2 != null) {
                wVar2.a();
                wVar2.onStateChange(wVar2.getState());
            }
        }
    }
}
