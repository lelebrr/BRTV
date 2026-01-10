package androidx.recyclerview.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l1 {

    /* renamed from: a, reason: collision with root package name */
    public int f2886a;

    /* renamed from: b, reason: collision with root package name */
    public int f2887b;

    /* renamed from: c, reason: collision with root package name */
    public int f2888c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f2889e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2890g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2891h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2892i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f2893j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f2894k;

    /* renamed from: l, reason: collision with root package name */
    public int f2895l;

    /* renamed from: m, reason: collision with root package name */
    public long f2896m;

    /* renamed from: n, reason: collision with root package name */
    public int f2897n;

    /* renamed from: o, reason: collision with root package name */
    public int f2898o;

    /* renamed from: p, reason: collision with root package name */
    public int f2899p;

    public final void a(int i6) {
        if ((this.d & i6) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i6) + " but it is " + Integer.toBinaryString(this.d));
    }

    public final int b() {
        return this.f2890g ? this.f2887b - this.f2888c : this.f2889e;
    }

    public final String toString() {
        return "State{mTargetPosition=" + this.f2886a + ", mData=null, mItemCount=" + this.f2889e + ", mIsMeasuring=" + this.f2892i + ", mPreviousLayoutItemCount=" + this.f2887b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f2888c + ", mStructureChanged=" + this.f + ", mInPreLayout=" + this.f2890g + ", mRunSimpleAnimations=" + this.f2893j + ", mRunPredictiveAnimations=" + this.f2894k + '}';
    }
}
