package x6;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a extends q.b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f11046c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(int i6) {
        super(10);
        this.f11046c = i6;
    }

    @Override // q.b
    public final void e(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float fSin;
        float fCos;
        switch (this.f11046c) {
            case 0:
                RectF rectFC = q.b.c(tabLayout, view);
                RectF rectFC2 = q.b.c(tabLayout, view2);
                if (rectFC.left < rectFC2.left) {
                    double d = (f * 3.141592653589793d) / 2.0d;
                    fSin = (float) (1.0d - Math.cos(d));
                    fCos = (float) Math.sin(d);
                } else {
                    double d10 = (f * 3.141592653589793d) / 2.0d;
                    fSin = (float) Math.sin(d10);
                    fCos = (float) (1.0d - Math.cos(d10));
                }
                drawable.setBounds(y5.a.c(fSin, (int) rectFC.left, (int) rectFC2.left), drawable.getBounds().top, y5.a.c(fCos, (int) rectFC.right, (int) rectFC2.right), drawable.getBounds().bottom);
                break;
            default:
                if (f >= 0.5f) {
                    view = view2;
                }
                RectF rectFC3 = q.b.c(tabLayout, view);
                float fB = f < 0.5f ? y5.a.b(1.0f, 0.0f, 0.0f, 0.5f, f) : y5.a.b(0.0f, 1.0f, 0.5f, 1.0f, f);
                drawable.setBounds((int) rectFC3.left, drawable.getBounds().top, (int) rectFC3.right, drawable.getBounds().bottom);
                drawable.setAlpha((int) (fB * 255.0f));
                break;
        }
    }
}
