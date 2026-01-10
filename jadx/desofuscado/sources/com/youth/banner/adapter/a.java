package com.youth.banner.adapter;

import android.view.View;
import androidx.recyclerview.widget.p1;
import i9.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5986a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5987b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5988c;

    public /* synthetic */ a(Object obj, int i6, Object obj2) {
        this.f5986a = i6;
        this.f5987b = obj;
        this.f5988c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f5986a) {
            case 0:
                ((BannerAdapter) this.f5987b).lambda$onCreateViewHolder$1((p1) this.f5988c, view);
                break;
            default:
                l lVar = (l) this.f5987b;
                if (lVar != null) {
                    lVar.invoke(this.f5988c);
                    break;
                }
                break;
        }
    }
}
