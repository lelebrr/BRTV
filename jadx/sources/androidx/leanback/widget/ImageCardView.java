package androidx.leanback.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ImageCardView extends BaseCardView {

    /* renamed from: s, reason: collision with root package name */
    public final ImageView f1671s;

    /* renamed from: t, reason: collision with root package name */
    public final ViewGroup f1672t;

    /* renamed from: u, reason: collision with root package name */
    public final TextView f1673u;

    /* renamed from: v, reason: collision with root package name */
    public final TextView f1674v;

    /* renamed from: w, reason: collision with root package name */
    public final ImageView f1675w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f1676x;

    /* renamed from: y, reason: collision with root package name */
    public final ObjectAnimator f1677y;

    public ImageCardView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        setFocusable(true);
        setFocusableInTouchMode(true);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        layoutInflaterFrom.inflate(R.layout.lb_image_card_view, this);
        Context context2 = getContext();
        int[] iArr = h1.a.f;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i6, R.style.Widget_Leanback_ImageCardView);
        n0.s0.p(this, getContext(), iArr, attributeSet, typedArrayObtainStyledAttributes, i6, R.style.Widget_Leanback_ImageCardView);
        int i10 = typedArrayObtainStyledAttributes.getInt(1, 0);
        boolean z7 = i10 == 0;
        boolean z10 = (i10 & 1) == 1;
        boolean z11 = (i10 & 2) == 2;
        boolean z12 = (i10 & 4) == 4;
        boolean z13 = !z12 && (i10 & 8) == 8;
        ImageView imageView = (ImageView) findViewById(R.id.main_image);
        this.f1671s = imageView;
        if (imageView.getDrawable() == null) {
            this.f1671s.setVisibility(4);
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f1671s, "alpha", 1.0f);
        this.f1677y = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(this.f1671s.getResources().getInteger(android.R.integer.config_shortAnimTime));
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.info_field);
        this.f1672t = viewGroup;
        if (z7) {
            removeView(viewGroup);
            typedArrayObtainStyledAttributes.recycle();
            return;
        }
        if (z10) {
            TextView textView = (TextView) layoutInflaterFrom.inflate(R.layout.lb_image_card_view_themed_title, viewGroup, false);
            this.f1673u = textView;
            this.f1672t.addView(textView);
        }
        if (z11) {
            TextView textView2 = (TextView) layoutInflaterFrom.inflate(R.layout.lb_image_card_view_themed_content, this.f1672t, false);
            this.f1674v = textView2;
            this.f1672t.addView(textView2);
        }
        if (z12 || z13) {
            ImageView imageView2 = (ImageView) layoutInflaterFrom.inflate(z13 ? R.layout.lb_image_card_view_themed_badge_left : R.layout.lb_image_card_view_themed_badge_right, this.f1672t, false);
            this.f1675w = imageView2;
            this.f1672t.addView(imageView2);
        }
        if (z10 && !z11 && this.f1675w != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f1673u.getLayoutParams();
            if (z13) {
                layoutParams.addRule(17, this.f1675w.getId());
            } else {
                layoutParams.addRule(16, this.f1675w.getId());
            }
            this.f1673u.setLayoutParams(layoutParams);
        }
        if (z11) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f1674v.getLayoutParams();
            if (!z10) {
                layoutParams2.addRule(10);
            }
            if (z13) {
                layoutParams2.removeRule(16);
                layoutParams2.removeRule(20);
                layoutParams2.addRule(17, this.f1675w.getId());
            }
            this.f1674v.setLayoutParams(layoutParams2);
        }
        ImageView imageView3 = this.f1675w;
        if (imageView3 != null) {
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) imageView3.getLayoutParams();
            if (z11) {
                layoutParams3.addRule(8, this.f1674v.getId());
            } else if (z10) {
                layoutParams3.addRule(8, this.f1673u.getId());
            }
            this.f1675w.setLayoutParams(layoutParams3);
        }
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setInfoAreaBackground(drawable);
        }
        ImageView imageView4 = this.f1675w;
        if (imageView4 != null && imageView4.getDrawable() == null) {
            this.f1675w.setVisibility(8);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public Drawable getBadgeImage() {
        ImageView imageView = this.f1675w;
        if (imageView == null) {
            return null;
        }
        return imageView.getDrawable();
    }

    public CharSequence getContentText() {
        TextView textView = this.f1674v;
        if (textView == null) {
            return null;
        }
        return textView.getText();
    }

    public Drawable getInfoAreaBackground() {
        ViewGroup viewGroup = this.f1672t;
        if (viewGroup != null) {
            return viewGroup.getBackground();
        }
        return null;
    }

    public Drawable getMainImage() {
        ImageView imageView = this.f1671s;
        if (imageView == null) {
            return null;
        }
        return imageView.getDrawable();
    }

    public final ImageView getMainImageView() {
        return this.f1671s;
    }

    public CharSequence getTitleText() {
        TextView textView = this.f1673u;
        if (textView == null) {
            return null;
        }
        return textView.getText();
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1676x = true;
        if (this.f1671s.getAlpha() == 0.0f) {
            this.f1671s.setAlpha(0.0f);
            if (this.f1676x) {
                this.f1677y.start();
            }
        }
    }

    @Override // androidx.leanback.widget.BaseCardView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f1676x = false;
        this.f1677y.cancel();
        this.f1671s.setAlpha(1.0f);
        super.onDetachedFromWindow();
    }

    public void setBadgeImage(Drawable drawable) {
        ImageView imageView = this.f1675w;
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        if (drawable != null) {
            this.f1675w.setVisibility(0);
        } else {
            this.f1675w.setVisibility(8);
        }
    }

    public void setContentText(CharSequence charSequence) {
        TextView textView = this.f1674v;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    public void setInfoAreaBackground(Drawable drawable) {
        ViewGroup viewGroup = this.f1672t;
        if (viewGroup != null) {
            viewGroup.setBackground(drawable);
        }
    }

    public void setInfoAreaBackgroundColor(int i6) {
        ViewGroup viewGroup = this.f1672t;
        if (viewGroup != null) {
            viewGroup.setBackgroundColor(i6);
        }
    }

    public void setMainImage(Drawable drawable) {
        ImageView imageView = this.f1671s;
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            this.f1677y.cancel();
            this.f1671s.setAlpha(1.0f);
            this.f1671s.setVisibility(4);
        } else {
            this.f1671s.setVisibility(0);
            this.f1671s.setAlpha(0.0f);
            if (this.f1676x) {
                this.f1677y.start();
            }
        }
    }

    public void setMainImageAdjustViewBounds(boolean z7) {
        ImageView imageView = this.f1671s;
        if (imageView != null) {
            imageView.setAdjustViewBounds(z7);
        }
    }

    public void setMainImageScaleType(ImageView.ScaleType scaleType) {
        ImageView imageView = this.f1671s;
        if (imageView != null) {
            imageView.setScaleType(scaleType);
        }
    }

    public void setTitleText(CharSequence charSequence) {
        TextView textView = this.f1673u;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    public ImageCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageCardViewStyle);
    }
}
