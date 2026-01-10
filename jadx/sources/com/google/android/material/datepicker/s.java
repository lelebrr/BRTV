package com.google.android.material.datepicker;

import android.view.View;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4873a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f4874b;

    public /* synthetic */ s(u uVar, int i6) {
        this.f4873a = i6;
        this.f4874b = uVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f4873a) {
            case 0:
                u uVar = this.f4874b;
                Iterator it = uVar.f4877k0.iterator();
                if (!it.hasNext()) {
                    uVar.Q(false, false);
                    return;
                } else {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    uVar.T().getClass();
                    throw null;
                }
            case 1:
                u uVar2 = this.f4874b;
                Iterator it2 = uVar2.f4878l0.iterator();
                while (it2.hasNext()) {
                    ((View.OnClickListener) it2.next()).onClick(view);
                }
                uVar2.Q(false, false);
                return;
            default:
                u uVar3 = this.f4874b;
                uVar3.E0.setEnabled(uVar3.T().f());
                uVar3.C0.toggle();
                uVar3.Y(uVar3.C0);
                uVar3.W();
                return;
        }
    }
}
