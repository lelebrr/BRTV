package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatImageView;
import x.b;
import x.c;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ImageFilterView extends AppCompatImageView {
    public final c d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f986e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f987g;

    /* renamed from: h, reason: collision with root package name */
    public float f988h;

    /* renamed from: i, reason: collision with root package name */
    public Path f989i;

    /* renamed from: j, reason: collision with root package name */
    public ViewOutlineProvider f990j;

    /* renamed from: k, reason: collision with root package name */
    public RectF f991k;

    /* renamed from: l, reason: collision with root package name */
    public Drawable[] f992l;

    /* renamed from: m, reason: collision with root package name */
    public LayerDrawable f993m;

    public ImageFilterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new c();
        this.f986e = true;
        this.f = 0.0f;
        this.f987g = 0.0f;
        this.f988h = Float.NaN;
        c(attributeSet);
    }

    private void setOverlay(boolean z7) {
        this.f986e = z7;
    }

    public final void c(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, j.f);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 3) {
                    this.f = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == 8) {
                    setWarmth(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == 7) {
                    setSaturation(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == 2) {
                    setContrast(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == 5) {
                    setRound(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == 6) {
                    setRoundPercent(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == 4) {
                    setOverlay(typedArrayObtainStyledAttributes.getBoolean(index, this.f986e));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (drawable != null) {
                Drawable[] drawableArr = new Drawable[2];
                this.f992l = drawableArr;
                drawableArr[0] = getDrawable();
                this.f992l[1] = drawable;
                LayerDrawable layerDrawable = new LayerDrawable(this.f992l);
                this.f993m = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.f * 255.0f));
                super.setImageDrawable(this.f993m);
            }
        }
    }

    public float getBrightness() {
        return this.d.d;
    }

    public float getContrast() {
        return this.d.f;
    }

    public float getCrossfade() {
        return this.f;
    }

    public float getRound() {
        return this.f988h;
    }

    public float getRoundPercent() {
        return this.f987g;
    }

    public float getSaturation() {
        return this.d.f10845e;
    }

    public float getWarmth() {
        return this.d.f10846g;
    }

    public void setBrightness(float f) {
        c cVar = this.d;
        cVar.d = f;
        cVar.a(this);
    }

    public void setContrast(float f) {
        c cVar = this.d;
        cVar.f = f;
        cVar.a(this);
    }

    public void setCrossfade(float f) {
        this.f = f;
        if (this.f992l != null) {
            if (!this.f986e) {
                this.f993m.getDrawable(0).setAlpha((int) ((1.0f - this.f) * 255.0f));
            }
            this.f993m.getDrawable(1).setAlpha((int) (this.f * 255.0f));
            super.setImageDrawable(this.f993m);
        }
    }

    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.f988h = f;
            float f3 = this.f987g;
            this.f987g = -1.0f;
            setRoundPercent(f3);
            return;
        }
        boolean z7 = this.f988h != f;
        this.f988h = f;
        if (f != 0.0f) {
            if (this.f989i == null) {
                this.f989i = new Path();
            }
            if (this.f991k == null) {
                this.f991k = new RectF();
            }
            if (this.f990j == null) {
                b bVar = new b(this, 1);
                this.f990j = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f991k.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f989i.reset();
            Path path = this.f989i;
            RectF rectF = this.f991k;
            float f4 = this.f988h;
            path.addRoundRect(rectF, f4, f4, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z7) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f) {
        boolean z7 = this.f987g != f;
        this.f987g = f;
        if (f != 0.0f) {
            if (this.f989i == null) {
                this.f989i = new Path();
            }
            if (this.f991k == null) {
                this.f991k = new RectF();
            }
            if (this.f990j == null) {
                b bVar = new b(this, 0);
                this.f990j = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f987g) / 2.0f;
            this.f991k.set(0.0f, 0.0f, width, height);
            this.f989i.reset();
            this.f989i.addRoundRect(this.f991k, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z7) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f) {
        c cVar = this.d;
        cVar.f10845e = f;
        cVar.a(this);
    }

    public void setWarmth(float f) {
        c cVar = this.d;
        cVar.f10846g = f;
        cVar.a(this);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.d = new c();
        this.f986e = true;
        this.f = 0.0f;
        this.f987g = 0.0f;
        this.f988h = Float.NaN;
        c(attributeSet);
    }
}
