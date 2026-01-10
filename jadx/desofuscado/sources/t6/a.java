package t6;

import android.graphics.Paint;
import android.graphics.Path;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f10145i = new int[3];

    /* renamed from: j, reason: collision with root package name */
    public static final float[] f10146j = {0.0f, 0.5f, 1.0f};

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f10147k = new int[4];

    /* renamed from: l, reason: collision with root package name */
    public static final float[] f10148l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: a, reason: collision with root package name */
    public final Paint f10149a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f10150b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f10151c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f10152e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final Path f10153g = new Path();

    /* renamed from: h, reason: collision with root package name */
    public final Paint f10154h;

    public a() {
        Paint paint = new Paint();
        this.f10154h = paint;
        this.f10149a = new Paint();
        a(-16777216);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f10150b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f10151c = new Paint(paint2);
    }

    public final void a(int i6) {
        this.d = f0.a.h(i6, 68);
        this.f10152e = f0.a.h(i6, 20);
        this.f = f0.a.h(i6, 0);
        this.f10149a.setColor(this.d);
    }
}
