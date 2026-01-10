package fa;

import android.database.Cursor;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.appcompat.widget.f3;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v0 extends Filter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6964a = 1;

    /* renamed from: b, reason: collision with root package name */
    public Filterable f6965b;

    public /* synthetic */ v0() {
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        switch (this.f6964a) {
            case 1:
                return ((f3) ((t0.b) this.f6965b)).c((Cursor) obj);
            default:
                return super.convertResultToString(obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    @Override // android.widget.Filter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.widget.Filter.FilterResults performFiltering(java.lang.CharSequence r9) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: fa.v0.performFiltering(java.lang.CharSequence):android.widget.Filter$FilterResults");
    }

    @Override // android.widget.Filter
    public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        switch (this.f6964a) {
            case 0:
                x0 x0Var = (x0) this.f6965b;
                x0Var.f6972j.clear();
                x0Var.f6972j.addAll((List) filterResults.values);
                x0Var.notifyDataSetChanged();
                break;
            default:
                t0.b bVar = (t0.b) this.f6965b;
                Cursor cursor = bVar.f10057c;
                Object obj = filterResults.values;
                if (obj != null && obj != cursor) {
                    ((f3) bVar).b((Cursor) obj);
                    break;
                }
                break;
        }
    }

    public v0(x0 x0Var) {
        this.f6965b = x0Var;
    }
}
