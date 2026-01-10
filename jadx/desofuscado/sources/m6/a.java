package m6;

import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.imageview.ShapeableImageView;
import u6.h;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends ViewOutlineProvider {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f8271a = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ShapeableImageView f8272b;

    public a(ShapeableImageView shapeableImageView) {
        this.f8272b = shapeableImageView;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        ShapeableImageView shapeableImageView = this.f8272b;
        if (shapeableImageView.f4943l == null) {
            return;
        }
        if (shapeableImageView.f4942k == null) {
            shapeableImageView.f4942k = new h(shapeableImageView.f4943l);
        }
        RectF rectF = shapeableImageView.f4937e;
        Rect rect = this.f8271a;
        rectF.round(rect);
        shapeableImageView.f4942k.setBounds(rect);
        shapeableImageView.f4942k.getOutline(outline);
    }
}
