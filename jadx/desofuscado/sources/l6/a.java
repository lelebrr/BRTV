package l6;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.widget.ImageView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends Property {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7987a = 2;

    /* renamed from: b, reason: collision with root package name */
    public Object f7988b;

    public /* synthetic */ a(Class cls, String str) {
        super(cls, str);
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.f7987a) {
            case 0:
                ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) obj;
                return Float.valueOf(y5.a.a(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.E.getColorForState(extendedFloatingActionButton.getDrawableState(), ((b) this.f7988b).f7990b.E.getDefaultColor()))));
            case 1:
                ((Drawable) obj).copyBounds((Rect) this.f7988b);
                return new PointF(r0.left, r0.top);
            default:
                Matrix matrix = (Matrix) this.f7988b;
                matrix.set(((ImageView) obj).getImageMatrix());
                return matrix;
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.f7987a) {
            case 0:
                ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) obj;
                Float f = (Float) obj2;
                int colorForState = extendedFloatingActionButton.E.getColorForState(extendedFloatingActionButton.getDrawableState(), ((b) this.f7988b).f7990b.E.getDefaultColor());
                ColorStateList colorStateListValueOf = ColorStateList.valueOf(Color.argb((int) (y5.a.a(0.0f, Color.alpha(colorForState) / 255.0f, f.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
                if (f.floatValue() != 1.0f) {
                    extendedFloatingActionButton.g(colorStateListValueOf);
                    break;
                } else {
                    extendedFloatingActionButton.g(extendedFloatingActionButton.E);
                    break;
                }
            case 1:
                Drawable drawable = (Drawable) obj;
                PointF pointF = (PointF) obj2;
                Rect rect = (Rect) this.f7988b;
                drawable.copyBounds(rect);
                rect.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
                drawable.setBounds(rect);
                break;
            default:
                ((ImageView) obj).setImageMatrix((Matrix) obj2);
                break;
        }
    }

    public a() {
        super(Matrix.class, "imageMatrixProperty");
        this.f7988b = new Matrix();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar) {
        super(Float.class, "LABEL_OPACITY_PROPERTY");
        this.f7988b = bVar;
    }
}
