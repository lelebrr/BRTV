package com.google.android.material.internal;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v extends l5.a {

    /* renamed from: r, reason: collision with root package name */
    public final /* synthetic */ int f5079r;

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ Object f5080s;

    public /* synthetic */ v(int i6, Object obj) {
        this.f5079r = i6;
        this.f5080s = obj;
    }

    @Override // l5.a
    public final void D(int i6) {
        switch (this.f5079r) {
            case 0:
                x xVar = (x) this.f5080s;
                xVar.d = true;
                w wVar = (w) xVar.f5084e.get();
                if (wVar != null) {
                    wVar.a();
                    break;
                }
                break;
        }
    }

    @Override // l5.a
    public final void E(Typeface typeface, boolean z7) {
        switch (this.f5079r) {
            case 0:
                if (!z7) {
                    x xVar = (x) this.f5080s;
                    xVar.d = true;
                    w wVar = (w) xVar.f5084e.get();
                    if (wVar != null) {
                        wVar.a();
                        break;
                    }
                }
                break;
            default:
                Chip chip = (Chip) this.f5080s;
                e6.d dVar = chip.f4769e;
                chip.setText(dVar.D0 ? dVar.E : chip.getText());
                chip.requestLayout();
                chip.invalidate();
                break;
        }
    }

    private final void V(int i6) {
    }
}
