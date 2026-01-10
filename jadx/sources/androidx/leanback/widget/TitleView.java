package androidx.leanback.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class TitleView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f1802a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f1803b;

    /* renamed from: c, reason: collision with root package name */
    public final SearchOrbView f1804c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1805e;
    public final h1 f;

    public TitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.browseTitleViewStyle);
    }

    public Drawable getBadgeDrawable() {
        return this.f1802a.getDrawable();
    }

    public y0 getSearchAffordanceColors() {
        return this.f1804c.getOrbColors();
    }

    public View getSearchAffordanceView() {
        return this.f1804c;
    }

    public CharSequence getTitle() {
        return this.f1803b.getText();
    }

    public i1 getTitleViewAdapter() {
        return this.f;
    }

    public void setBadgeDrawable(Drawable drawable) {
        this.f1802a.setImageDrawable(drawable);
        ImageView imageView = this.f1802a;
        Drawable drawable2 = imageView.getDrawable();
        TextView textView = this.f1803b;
        if (drawable2 != null) {
            imageView.setVisibility(0);
            textView.setVisibility(8);
        } else {
            imageView.setVisibility(8);
            textView.setVisibility(0);
        }
    }

    public void setOnSearchClickedListener(View.OnClickListener onClickListener) {
        this.f1805e = onClickListener != null;
        SearchOrbView searchOrbView = this.f1804c;
        searchOrbView.setOnOrbClickedListener(onClickListener);
        searchOrbView.setVisibility((this.f1805e && (this.d & 4) == 4) ? 0 : 4);
    }

    public void setSearchAffordanceColors(y0 y0Var) {
        this.f1804c.setOrbColors(y0Var);
    }

    public void setTitle(CharSequence charSequence) {
        this.f1803b.setText(charSequence);
        ImageView imageView = this.f1802a;
        Drawable drawable = imageView.getDrawable();
        TextView textView = this.f1803b;
        if (drawable != null) {
            imageView.setVisibility(0);
            textView.setVisibility(8);
        } else {
            imageView.setVisibility(8);
            textView.setVisibility(0);
        }
    }

    public TitleView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.d = 6;
        this.f1805e = false;
        this.f = new h1();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.lb_title_view, this);
        this.f1802a = (ImageView) viewInflate.findViewById(R.id.title_badge);
        this.f1803b = (TextView) viewInflate.findViewById(R.id.title_text);
        this.f1804c = (SearchOrbView) viewInflate.findViewById(R.id.title_orb);
        setClipToPadding(false);
        setClipChildren(false);
    }
}
