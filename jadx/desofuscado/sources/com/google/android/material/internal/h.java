package com.google.android.material.internal;

import android.view.SubMenu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends k.l {
    @Override // k.l, android.view.Menu
    public final SubMenu addSubMenu(int i6, int i10, int i11, CharSequence charSequence) {
        k.n nVarA = a(i6, i10, i11, charSequence);
        s sVar = new s(this.f7609a, this, nVarA);
        nVarA.f7646o = sVar;
        sVar.setHeaderTitle(nVarA.f7637e);
        return sVar;
    }
}
