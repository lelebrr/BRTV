package b2;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import androidx.fragment.app.s;
import androidx.viewpager.widget.ViewPager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public final DataSetObservable f3145a = new DataSetObservable();

    /* renamed from: b, reason: collision with root package name */
    public DataSetObserver f3146b;

    public abstract void a(s sVar);

    public abstract void b();

    public abstract int c();

    public final void d() {
        synchronized (this) {
            try {
                DataSetObserver dataSetObserver = this.f3146b;
                if (dataSetObserver != null) {
                    dataSetObserver.onChanged();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f3145a.notifyChanged();
    }

    public abstract void e(ViewPager viewPager, int i6, s sVar);

    public final void f(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f3146b = dataSetObserver;
        }
    }

    public abstract void g(ViewPager viewPager);
}
