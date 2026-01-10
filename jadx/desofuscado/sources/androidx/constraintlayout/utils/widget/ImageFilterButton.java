package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatImageButton;
import x.a;
import x.c;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ImageFilterButton extends AppCompatImageButton {
    public final c d;

    /* renamed from: e, reason: collision with root package name */
    public float f978e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f979g;

    /* renamed from: h, reason: collision with root package name */
    public Path f980h;

    /* renamed from: i, reason: collision with root package name */
    public ViewOutlineProvider f981i;

    /* renamed from: j, reason: collision with root package name */
    public RectF f982j;

    /* renamed from: k, reason: collision with root package name */
    public Drawable[] f983k;

    /* renamed from: l, reason: collision with root package name */
    public LayerDrawable f984l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f985m;

    public ImageFilterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new c();
        this.f978e = 0.0f;
        this.f = 0.0f;
        this.f979g = Float.NaN;
        this.f985m = true;
        a(attributeSet);
    }

    private void setOverlay(boolean z7) {
        this.f985m = z7;
    }

    public final void a(AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, j.f);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 3) {
                    this.f978e = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
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
                    setOverlay(typedArrayObtainStyledAttributes.getBoolean(index, this.f985m));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (drawable != null) {
                Drawable[] drawableArr = new Drawable[2];
                this.f983k = drawableArr;
                drawableArr[0] = getDrawable();
                this.f983k[1] = drawable;
                LayerDrawable layerDrawable = new LayerDrawable(this.f983k);
                this.f984l = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.f978e * 255.0f));
                super.setImageDrawable(this.f984l);
            }
        }
    }

    public float getContrast() {
        return this.d.f;
    }

    public float getCrossfade() {
        return this.f978e;
    }

    public float getRound() {
        return this.f979g;
    }

    public float getRoundPercent() {
        return this.f;
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
        this.f978e = f;
        if (this.f983k != null) {
            if (!this.f985m) {
                this.f984l.getDrawable(0).setAlpha((int) ((1.0f - this.f978e) * 255.0f));
            }
            this.f984l.getDrawable(1).setAlpha((int) (this.f978e * 255.0f));
            super.setImageDrawable(this.f984l);
        }
    }

    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.f979g = f;
            float f3 = this.f;
            this.f = -1.0f;
            setRoundPercent(f3);
            return;
        }
        boolean z7 = this.f979g != f;
        this.f979g = f;
        if (f != 0.0f) {
            if (this.f980h == null) {
                this.f980h = new Path();
            }
            if (this.f982j == null) {
                this.f982j = new RectF();
            }
            if (this.f981i == null) {
                a aVar = new a(this, 1);
                this.f981i = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            this.f982j.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f980h.reset();
            Path path = this.f980h;
            RectF rectF = this.f982j;
            float f4 = this.f979g;
            path.addRoundRect(rectF, f4, f4, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z7) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f) {
        boolean z7 = this.f != f;
        this.f = f;
        if (f != 0.0f) {
            if (this.f980h == null) {
                this.f980h = new Path();
            }
            if (this.f982j == null) {
                this.f982j = new RectF();
            }
            if (this.f981i == null) {
                a aVar = new a(this, 0);
                this.f981i = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f) / 2.0f;
            this.f982j.set(0.0f, 0.0f, width, height);
            this.f980h.reset();
            this.f980h.addRoundRect(this.f982j, fMin, fMin, Path.Direction.CW);
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

    public ImageFilterButton(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.d = new c();
        this.f978e = 0.0f;
        this.f = 0.0f;
        this.f979g = Float.NaN;
        this.f985m = true;
        a(attributeSet);
    }
}
