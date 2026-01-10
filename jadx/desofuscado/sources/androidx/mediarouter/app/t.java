package androidx.mediarouter.app;

import android.content.Context;
import android.widget.ArrayAdapter;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t extends ArrayAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final float f2692a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f2693b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(u uVar, Context context, ArrayList arrayList) {
        super(context, 0, arrayList);
        this.f2693b = uVar;
        this.f2692a = o9.d.m(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00b2  */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View getView(int r10, android.view.View r11, android.view.ViewGroup r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.t.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean isEnabled(int i6) {
        return false;
    }
}
