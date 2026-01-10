package fa;

import android.widget.Filter;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r extends Filter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f6944a;

    public r(t tVar) {
        this.f6944a = tVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00d0  */
    @Override // android.widget.Filter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.widget.Filter.FilterResults performFiltering(java.lang.CharSequence r10) {
        /*
            Method dump skipped, instructions count: 395
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: fa.r.performFiltering(java.lang.CharSequence):android.widget.Filter$FilterResults");
    }

    @Override // android.widget.Filter
    public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        List list = (List) filterResults.values;
        t tVar = this.f6944a;
        tVar.f6949g = list;
        a2.a.s("1R+9HFgJcDv5F74cUgk=\n", "nXbOaDd7CXo=\n");
        a2.a.s("h+FEtpifW2KH4US2mdcWIcqpFv/rwhA2yrQWtw==\n", "psBll7mnY0M=\n");
        tVar.f6951i.name();
        tVar.notifyDataSetChanged();
    }
}
