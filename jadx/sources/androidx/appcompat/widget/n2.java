package androidx.appcompat.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n2 {

    /* renamed from: a, reason: collision with root package name */
    public int f787a;

    /* renamed from: b, reason: collision with root package name */
    public int f788b;

    /* renamed from: c, reason: collision with root package name */
    public int f789c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f790e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f791g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f792h;

    public final void a(int i6, int i10) {
        this.f789c = i6;
        this.d = i10;
        this.f792h = true;
        if (this.f791g) {
            if (i10 != Integer.MIN_VALUE) {
                this.f787a = i10;
            }
            if (i6 != Integer.MIN_VALUE) {
                this.f788b = i6;
                return;
            }
            return;
        }
        if (i6 != Integer.MIN_VALUE) {
            this.f787a = i6;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.f788b = i10;
        }
    }
}
