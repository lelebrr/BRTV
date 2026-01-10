package androidx.recyclerview.widget;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u1 {

    /* renamed from: a, reason: collision with root package name */
    public int f2955a;

    /* renamed from: b, reason: collision with root package name */
    public int f2956b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2957c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2958e;
    public int[] f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f2959g;

    public u1(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f2959g = staggeredGridLayoutManager;
        a();
    }

    public final void a() {
        this.f2955a = -1;
        this.f2956b = Integer.MIN_VALUE;
        this.f2957c = false;
        this.d = false;
        this.f2958e = false;
        int[] iArr = this.f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}
