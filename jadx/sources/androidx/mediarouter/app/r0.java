package androidx.mediarouter.app;

import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.view.animation.Interpolator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r0 {

    /* renamed from: a, reason: collision with root package name */
    public final BitmapDrawable f2680a;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f2682c;
    public Interpolator d;

    /* renamed from: e, reason: collision with root package name */
    public long f2683e;
    public final Rect f;

    /* renamed from: g, reason: collision with root package name */
    public int f2684g;

    /* renamed from: i, reason: collision with root package name */
    public long f2686i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f2687j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f2688k;

    /* renamed from: l, reason: collision with root package name */
    public a7.f f2689l;

    /* renamed from: b, reason: collision with root package name */
    public float f2681b = 1.0f;

    /* renamed from: h, reason: collision with root package name */
    public float f2685h = 1.0f;

    public r0(BitmapDrawable bitmapDrawable, Rect rect) {
        this.f2680a = bitmapDrawable;
        this.f = rect;
        Rect rect2 = new Rect(rect);
        this.f2682c = rect2;
        if (bitmapDrawable != null) {
            bitmapDrawable.setAlpha((int) (this.f2681b * 255.0f));
            bitmapDrawable.setBounds(rect2);
        }
    }
}
