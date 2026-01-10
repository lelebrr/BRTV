package t3;

import androidx.appcompat.app.c0;
import androidx.recyclerview.widget.GridLayoutManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends c0 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GridLayoutManager f10130c;
    public final /* synthetic */ c d;

    public b(c cVar, GridLayoutManager gridLayoutManager) {
        this.d = cVar;
        this.f10130c = gridLayoutManager;
    }

    @Override // androidx.appcompat.app.c0
    public final int j(int i6) {
        int itemViewType = this.d.getItemViewType(i6);
        if (itemViewType == 1365 || itemViewType == 273 || itemViewType == 819 || itemViewType == 546) {
            return this.f10130c.f2745b;
        }
        return 1;
    }
}
