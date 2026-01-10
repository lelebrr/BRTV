package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageButton;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class MediaRouteExpandCollapseButton extends AppCompatImageButton {
    public final AnimationDrawable d;

    /* renamed from: e, reason: collision with root package name */
    public final AnimationDrawable f2535e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f2536g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2537h;

    /* renamed from: i, reason: collision with root package name */
    public View.OnClickListener f2538i;

    public MediaRouteExpandCollapseButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f2538i = onClickListener;
    }

    public MediaRouteExpandCollapseButton(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        AnimationDrawable animationDrawable = (AnimationDrawable) d0.a.b(context, R.drawable.mr_group_expand);
        this.d = animationDrawable;
        AnimationDrawable animationDrawable2 = (AnimationDrawable) d0.a.b(context, R.drawable.mr_group_collapse);
        this.f2535e = animationDrawable2;
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(o9.d.l(context, i6), PorterDuff.Mode.SRC_IN);
        animationDrawable.setColorFilter(porterDuffColorFilter);
        animationDrawable2.setColorFilter(porterDuffColorFilter);
        String string = context.getString(R.string.mr_controller_expand_group);
        this.f = string;
        this.f2536g = context.getString(R.string.mr_controller_collapse_group);
        setImageDrawable(animationDrawable.getFrame(0));
        setContentDescription(string);
        super.setOnClickListener(new g0(1, this));
    }
}
