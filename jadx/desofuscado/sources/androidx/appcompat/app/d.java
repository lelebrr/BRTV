package androidx.appcompat.app;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f234a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f235b;

    public d(e eVar, h hVar) {
        this.f235b = eVar;
        this.f234a = hVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j10) {
        e eVar = this.f235b;
        DialogInterface.OnClickListener onClickListener = eVar.f242h;
        h hVar = this.f234a;
        onClickListener.onClick(hVar.f291b, i6);
        if (eVar.f244j) {
            return;
        }
        hVar.f291b.dismiss();
    }
}
