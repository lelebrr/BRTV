package q6;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.provider.Settings;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o extends l {

    /* renamed from: l, reason: collision with root package name */
    public final m f9294l;

    /* renamed from: m, reason: collision with root package name */
    public n f9295m;

    public o(Context context, e eVar, m mVar, n nVar) {
        super(context, eVar);
        this.f9294l = mVar;
        mVar.f9290b = this;
        this.f9295m = nVar;
        nVar.f9291a = this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect rect = new Rect();
        if (getBounds().isEmpty() || !isVisible() || !canvas.getClipBounds(rect)) {
            return;
        }
        canvas.save();
        m mVar = this.f9294l;
        float fB = b();
        mVar.f9289a.a();
        mVar.a(canvas, fB);
        m mVar2 = this.f9294l;
        Paint paint = this.f9287i;
        mVar2.c(canvas, paint);
        int i6 = 0;
        while (true) {
            n nVar = this.f9295m;
            int[] iArr = nVar.f9293c;
            if (i6 >= iArr.length) {
                canvas.restore();
                return;
            }
            m mVar3 = this.f9294l;
            float[] fArr = nVar.f9292b;
            int i10 = i6 * 2;
            mVar3.b(canvas, paint, fArr[i10], fArr[i10 + 1], iArr[i6]);
            i6++;
        }
    }

    @Override // q6.l
    public final boolean f(boolean z7, boolean z10, boolean z11) {
        boolean zF = super.f(z7, z10, z11);
        if (!isRunning()) {
            this.f9295m.a();
        }
        a aVar = this.f9283c;
        ContentResolver contentResolver = this.f9281a.getContentResolver();
        aVar.getClass();
        float f = Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
        if (z7 && (z11 || (Build.VERSION.SDK_INT <= 21 && f > 0.0f))) {
            this.f9295m.e();
        }
        return zF;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f9294l.d();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f9294l.e();
    }
}
