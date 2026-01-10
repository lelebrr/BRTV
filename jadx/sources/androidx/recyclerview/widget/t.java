package androidx.recyclerview.widget;

import android.os.Trace;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    public static final ThreadLocal f2950e = new ThreadLocal();
    public static final q f = new q();

    /* renamed from: b, reason: collision with root package name */
    public long f2952b;

    /* renamed from: c, reason: collision with root package name */
    public long f2953c;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2951a = new ArrayList();
    public final ArrayList d = new ArrayList();

    public static p1 c(RecyclerView recyclerView, int i6, long j10) {
        int iH = recyclerView.mChildHelper.h();
        for (int i10 = 0; i10 < iH; i10++) {
            p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.g(i10));
            if (childViewHolderInt.mPosition == i6 && !childViewHolderInt.isInvalid()) {
                return null;
            }
        }
        e1 e1Var = recyclerView.mRecycler;
        if (j10 == Long.MAX_VALUE) {
            try {
                if (j0.n.a()) {
                    Trace.beginSection("RV Prefetch forced - needed next frame");
                }
            } catch (Throwable th) {
                recyclerView.onExitLayoutOrScroll(false);
                Trace.endSection();
                throw th;
            }
        }
        recyclerView.onEnterLayoutOrScroll();
        p1 p1VarL = e1Var.l(i6, j10);
        if (p1VarL != null) {
            if (!p1VarL.isBound() || p1VarL.isInvalid()) {
                e1Var.a(p1VarL, false);
            } else {
                e1Var.i(p1VarL.itemView);
            }
        }
        recyclerView.onExitLayoutOrScroll(false);
        Trace.endSection();
        return p1VarL;
    }

    public final void a(RecyclerView recyclerView, int i6, int i10) {
        if (recyclerView.isAttachedToWindow()) {
            if (RecyclerView.sDebugAssertionsEnabled && !this.f2951a.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.f2952b == 0) {
                this.f2952b = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        r rVar = recyclerView.mPrefetchRegistry;
        rVar.f2934a = i6;
        rVar.f2935b = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void b(long r18) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.t.b(long):void");
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Trace.beginSection("RV Prefetch");
            ArrayList arrayList = this.f2951a;
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long jMax = 0;
                for (int i6 = 0; i6 < size; i6++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i6);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    b(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f2953c);
                    this.f2952b = 0L;
                    Trace.endSection();
                }
            }
        } finally {
            this.f2952b = 0L;
            Trace.endSection();
        }
    }
}
