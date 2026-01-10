package androidx.leanback.widget;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1863a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1864b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f1865c;

    public /* synthetic */ n0(int i6, int i10, Object obj) {
        this.f1863a = i10;
        this.f1865c = obj;
        this.f1864b = i6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable;
        switch (this.f1863a) {
            case 0:
                SearchBar searchBar = (SearchBar) this.f1865c;
                searchBar.f1752t.play(searchBar.f1753u.get(this.f1864b), 1.0f, 1.0f, 1, 0, 1.0f);
                break;
            case 1:
                ArrayList arrayList = (ArrayList) this.f1865c;
                int size = arrayList.size();
                int i6 = 0;
                if (this.f1864b != 1) {
                    while (i6 < size) {
                        ((b1.g) arrayList.get(i6)).a();
                        i6++;
                    }
                    break;
                } else {
                    while (i6 < size) {
                        ((b1.g) arrayList.get(i6)).b();
                        i6++;
                    }
                    break;
                }
            case 2:
                ((com.google.android.material.navigation.d) this.f1865c).g(this.f1864b);
                break;
            case 3:
                for (int i10 = 0; i10 < this.f1864b && (runnable = (Runnable) ((LinkedBlockingQueue) this.f1865c).poll()) != null; i10++) {
                    runnable.run();
                }
            case 4:
                e0.b bVar = (e0.b) ((a0.b) this.f1865c).f32b;
                if (bVar != null) {
                    bVar.i(this.f1864b);
                    break;
                }
                break;
            case 5:
                ((v4.v) this.f1865c).B.c(this.f1864b);
                break;
            default:
                ((z4.n) this.f1865c).h(this.f1864b);
                break;
        }
    }

    public n0(int i6, LinkedBlockingQueue linkedBlockingQueue) {
        this.f1863a = 3;
        this.f1864b = i6;
        this.f1865c = linkedBlockingQueue;
    }

    public n0(List list, int i6, Throwable th) {
        this.f1863a = 1;
        a2.a.p(list, "initCallbacks cannot be null");
        this.f1865c = new ArrayList(list);
        this.f1864b = i6;
    }
}
