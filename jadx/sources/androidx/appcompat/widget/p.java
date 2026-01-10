package androidx.appcompat.widget;

import android.database.DataSetObserver;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p extends DataSetObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f799a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityChooserView f800b;

    public /* synthetic */ p(ActivityChooserView activityChooserView, int i6) {
        this.f799a = i6;
        this.f800b = activityChooserView;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        switch (this.f799a) {
            case 0:
                super.onChanged();
                this.f800b.f482a.notifyDataSetChanged();
                return;
            default:
                super.onChanged();
                this.f800b.f482a.getClass();
                throw null;
        }
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        switch (this.f799a) {
            case 0:
                super.onInvalidated();
                this.f800b.f482a.notifyDataSetInvalidated();
                break;
            default:
                super.onInvalidated();
                break;
        }
    }
}
