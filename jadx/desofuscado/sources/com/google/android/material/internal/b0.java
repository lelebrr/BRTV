package com.google.android.material.internal;

import android.view.View;
import java.util.WeakHashMap;
import n0.r1;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 implements d0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f4983a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f4984b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f4985c;
    public final /* synthetic */ com.google.android.material.bottomappbar.b d;

    public b0(boolean z7, boolean z10, boolean z11, com.google.android.material.bottomappbar.b bVar) {
        this.f4983a = z7;
        this.f4984b = z10;
        this.f4985c = z11;
        this.d = bVar;
    }

    @Override // com.google.android.material.internal.d0
    public final r1 p(View view, r1 r1Var, e0 e0Var) {
        if (this.f4983a) {
            e0Var.d = r1Var.a() + e0Var.d;
        }
        boolean zI = a0.i(view);
        if (this.f4984b) {
            if (zI) {
                e0Var.f5033c = r1Var.b() + e0Var.f5033c;
            } else {
                e0Var.f5031a = r1Var.b() + e0Var.f5031a;
            }
        }
        if (this.f4985c) {
            if (zI) {
                e0Var.f5031a = r1Var.c() + e0Var.f5031a;
            } else {
                e0Var.f5033c = r1Var.c() + e0Var.f5033c;
            }
        }
        int i6 = e0Var.f5031a;
        int i10 = e0Var.f5032b;
        int i11 = e0Var.f5033c;
        int i12 = e0Var.d;
        WeakHashMap weakHashMap = s0.f8353a;
        view.setPaddingRelative(i6, i10, i11, i12);
        this.d.p(view, r1Var, e0Var);
        return r1Var;
    }
}
