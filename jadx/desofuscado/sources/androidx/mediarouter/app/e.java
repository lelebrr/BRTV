package androidx.mediarouter.app;

import java.util.Comparator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public static final e f2576b = new e(0);

    /* renamed from: c, reason: collision with root package name */
    public static final e f2577c = new e(1);
    public static final e d = new e(2);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2578a;

    public /* synthetic */ e(int i6) {
        this.f2578a = i6;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f2578a) {
        }
        return ((q1.s0) obj).d.compareToIgnoreCase(((q1.s0) obj2).d);
    }
}
