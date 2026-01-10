package com.google.android.material.datepicker;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4875a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.s f4876b;

    public /* synthetic */ t(int i6, androidx.fragment.app.s sVar) {
        this.f4875a = i6;
        this.f4876b = sVar;
    }

    public final void a() {
        switch (this.f4875a) {
            case 0:
                ((u) this.f4876b).E0.setEnabled(false);
                break;
            default:
                Iterator it = ((v) this.f4876b).T.iterator();
                while (it.hasNext()) {
                    ((t) it.next()).a();
                }
                break;
        }
    }

    public final void b(Object obj) {
        switch (this.f4875a) {
            case 0:
                u uVar = (u) this.f4876b;
                uVar.X();
                uVar.E0.setEnabled(uVar.T().f());
                break;
            default:
                Iterator it = ((v) this.f4876b).T.iterator();
                while (it.hasNext()) {
                    ((t) it.next()).b(obj);
                }
                break;
        }
    }
}
