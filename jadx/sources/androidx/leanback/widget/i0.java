package androidx.leanback.widget;

import android.graphics.Color;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: a, reason: collision with root package name */
    public float f1833a;

    /* renamed from: b, reason: collision with root package name */
    public int f1834b;

    /* renamed from: c, reason: collision with root package name */
    public float f1835c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f1836e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f1837g;

    /* renamed from: h, reason: collision with root package name */
    public float f1838h = 1.0f;

    /* renamed from: i, reason: collision with root package name */
    public float f1839i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ PagingIndicator f1840j;

    public i0(PagingIndicator pagingIndicator) {
        this.f1840j = pagingIndicator;
        this.f1839i = pagingIndicator.f1698a ? 1.0f : -1.0f;
    }

    public final void a() {
        int iRound = Math.round(this.f1833a * 255.0f);
        PagingIndicator pagingIndicator = this.f1840j;
        this.f1834b = Color.argb(iRound, Color.red(pagingIndicator.f1711p), Color.green(pagingIndicator.f1711p), Color.blue(pagingIndicator.f1711p));
    }

    public final void b() {
        this.f1835c = 0.0f;
        this.d = 0.0f;
        PagingIndicator pagingIndicator = this.f1840j;
        this.f1836e = pagingIndicator.f1699b;
        float f = pagingIndicator.f1700c;
        this.f = f;
        this.f1837g = f * pagingIndicator.f1717v;
        this.f1833a = 0.0f;
        a();
    }
}
