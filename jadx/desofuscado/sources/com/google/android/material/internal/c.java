package com.google.android.material.internal;

import android.graphics.Typeface;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4986a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f4987b;

    public /* synthetic */ c(d dVar, int i6) {
        this.f4986a = i6;
        this.f4987b = dVar;
    }

    public final void a(Typeface typeface) {
        switch (this.f4986a) {
            case 0:
                d dVar = this.f4987b;
                if (dVar.n(typeface)) {
                    dVar.j(false);
                    break;
                }
                break;
            default:
                d dVar2 = this.f4987b;
                if (dVar2.p(typeface)) {
                    dVar2.j(false);
                    break;
                }
                break;
        }
    }
}
