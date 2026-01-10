package androidx.leanback.widget;

import android.os.SystemClock;
import android.view.MotionEvent;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1876a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchBar f1877b;

    public /* synthetic */ p0(SearchBar searchBar, int i6) {
        this.f1876a = i6;
        this.f1877b = searchBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1876a) {
            case 0:
                SearchBar searchBar = this.f1877b;
                searchBar.setSearchQueryInternal(searchBar.f1735a.getText().toString());
                break;
            default:
                SearchBar searchBar2 = this.f1877b;
                searchBar2.f1735a.requestFocusFromTouch();
                searchBar2.f1735a.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, searchBar2.f1735a.getWidth(), searchBar2.f1735a.getHeight(), 0));
                searchBar2.f1735a.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, searchBar2.f1735a.getWidth(), searchBar2.f1735a.getHeight(), 0));
                break;
        }
    }
}
