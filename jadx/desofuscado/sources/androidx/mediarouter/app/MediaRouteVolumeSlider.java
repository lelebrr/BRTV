package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.widget.AppCompatSeekBar;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class MediaRouteVolumeSlider extends AppCompatSeekBar {

    /* renamed from: b, reason: collision with root package name */
    public final float f2539b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2540c;
    public Drawable d;

    /* renamed from: e, reason: collision with root package name */
    public int f2541e;
    public int f;

    public MediaRouteVolumeSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.seekBarStyle);
    }

    public final void a(int i6, int i10) {
        if (this.f2541e != i6) {
            if (Color.alpha(i6) != 255) {
                Log.e("MediaRouteVolumeSlider", "Volume slider progress and thumb color cannot be translucent: #" + Integer.toHexString(i6));
            }
            this.f2541e = i6;
        }
        if (this.f != i10) {
            if (Color.alpha(i10) != 255) {
                Log.e("MediaRouteVolumeSlider", "Volume slider background color cannot be translucent: #" + Integer.toHexString(i10));
            }
            this.f = i10;
        }
    }

    public final void b(boolean z7) {
        if (this.f2540c == z7) {
            return;
        }
        this.f2540c = z7;
        super.setThumb(z7 ? null : this.d);
    }

    @Override // androidx.appcompat.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int i6 = isEnabled() ? 255 : (int) (this.f2539b * 255.0f);
        Drawable drawable = this.d;
        int i10 = this.f2541e;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        drawable.setColorFilter(i10, mode);
        this.d.setAlpha(i6);
        Drawable progressDrawable = getProgressDrawable();
        if (progressDrawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) getProgressDrawable();
            Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.progress);
            layerDrawable.findDrawableByLayerId(android.R.id.background).setColorFilter(this.f, mode);
            progressDrawable = drawableFindDrawableByLayerId;
        }
        progressDrawable.setColorFilter(this.f2541e, mode);
        progressDrawable.setAlpha(i6);
    }

    @Override // android.widget.AbsSeekBar
    public final void setThumb(Drawable drawable) {
        this.d = drawable;
        if (this.f2540c) {
            drawable = null;
        }
        super.setThumb(drawable);
    }

    public MediaRouteVolumeSlider(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f2539b = o9.d.m(context);
    }
}
