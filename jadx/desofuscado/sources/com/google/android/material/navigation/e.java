package com.google.android.material.navigation;

import android.content.Context;
import android.view.SubMenu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends k.l {
    public final int A;

    /* renamed from: z, reason: collision with root package name */
    public final Class f5128z;

    public e(Context context, Class cls, int i6) {
        super(context);
        this.f5128z = cls;
        this.A = i6;
    }

    @Override // k.l
    public final k.n a(int i6, int i10, int i11, CharSequence charSequence) {
        int size = this.f.size() + 1;
        int i12 = this.A;
        if (size <= i12) {
            y();
            k.n nVarA = super.a(i6, i10, i11, charSequence);
            nVarA.g(true);
            x();
            return nVarA;
        }
        String simpleName = this.f5128z.getSimpleName();
        StringBuilder sb = new StringBuilder("Maximum number of items supported by ");
        sb.append(simpleName);
        sb.append(" is ");
        sb.append(i12);
        sb.append(". Limit can be checked with ");
        throw new IllegalArgumentException(a.e.t(sb, simpleName, "#getMaxItemCount()"));
    }

    @Override // k.l, android.view.Menu
    public final SubMenu addSubMenu(int i6, int i10, int i11, CharSequence charSequence) {
        throw new UnsupportedOperationException(this.f5128z.getSimpleName().concat(" does not support submenus"));
    }
}
