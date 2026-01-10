package l6;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends b {

    /* renamed from: g, reason: collision with root package name */
    public final d f8009g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f8010h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ExtendedFloatingActionButton f8011i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(ExtendedFloatingActionButton extendedFloatingActionButton, j7.c cVar, d dVar, boolean z7) {
        super(extendedFloatingActionButton, cVar);
        this.f8011i = extendedFloatingActionButton;
        this.f8009g = dVar;
        this.f8010h = z7;
    }

    @Override // l6.b
    public final AnimatorSet a() {
        int measuredHeight;
        int measuredWidth;
        y5.e eVar = this.f;
        if (eVar == null) {
            if (this.f7992e == null) {
                this.f7992e = y5.e.b(this.f7989a, c());
            }
            eVar = this.f7992e;
            eVar.getClass();
        }
        boolean zG = eVar.g("width");
        d dVar = this.f8009g;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f8011i;
        if (zG) {
            PropertyValuesHolder[] propertyValuesHolderArrE = eVar.e("width");
            PropertyValuesHolder propertyValuesHolder = propertyValuesHolderArrE[0];
            float width = extendedFloatingActionButton.getWidth();
            switch (dVar.f8007a) {
                case 0:
                    ExtendedFloatingActionButton extendedFloatingActionButton2 = dVar.f8008b;
                    measuredWidth = extendedFloatingActionButton2.f4918z + (extendedFloatingActionButton2.getMeasuredWidth() - (extendedFloatingActionButton2.getCollapsedPadding() * 2)) + extendedFloatingActionButton2.f4917y;
                    break;
                default:
                    measuredWidth = dVar.f8008b.getCollapsedSize();
                    break;
            }
            propertyValuesHolder.setFloatValues(width, measuredWidth);
            eVar.h("width", propertyValuesHolderArrE);
        }
        if (eVar.g("height")) {
            PropertyValuesHolder[] propertyValuesHolderArrE2 = eVar.e("height");
            PropertyValuesHolder propertyValuesHolder2 = propertyValuesHolderArrE2[0];
            float height = extendedFloatingActionButton.getHeight();
            switch (dVar.f8007a) {
                case 0:
                    measuredHeight = dVar.f8008b.getMeasuredHeight();
                    break;
                default:
                    measuredHeight = dVar.f8008b.getCollapsedSize();
                    break;
            }
            propertyValuesHolder2.setFloatValues(height, measuredHeight);
            eVar.h("height", propertyValuesHolderArrE2);
        }
        if (eVar.g("paddingStart")) {
            PropertyValuesHolder[] propertyValuesHolderArrE3 = eVar.e("paddingStart");
            PropertyValuesHolder propertyValuesHolder3 = propertyValuesHolderArrE3[0];
            WeakHashMap weakHashMap = s0.f8353a;
            propertyValuesHolder3.setFloatValues(extendedFloatingActionButton.getPaddingStart(), dVar.c());
            eVar.h("paddingStart", propertyValuesHolderArrE3);
        }
        if (eVar.g("paddingEnd")) {
            PropertyValuesHolder[] propertyValuesHolderArrE4 = eVar.e("paddingEnd");
            PropertyValuesHolder propertyValuesHolder4 = propertyValuesHolderArrE4[0];
            WeakHashMap weakHashMap2 = s0.f8353a;
            propertyValuesHolder4.setFloatValues(extendedFloatingActionButton.getPaddingEnd(), dVar.b());
            eVar.h("paddingEnd", propertyValuesHolderArrE4);
        }
        if (eVar.g("labelOpacity")) {
            PropertyValuesHolder[] propertyValuesHolderArrE5 = eVar.e("labelOpacity");
            boolean z7 = this.f8010h;
            propertyValuesHolderArrE5[0].setFloatValues(z7 ? 0.0f : 1.0f, z7 ? 1.0f : 0.0f);
            eVar.h("labelOpacity", propertyValuesHolderArrE5);
        }
        return b(eVar);
    }

    @Override // l6.b
    public final int c() {
        return this.f8010h ? R.animator.mtrl_extended_fab_change_size_expand_motion_spec : R.animator.mtrl_extended_fab_change_size_collapse_motion_spec;
    }

    @Override // l6.b
    public final void e() {
        this.d.f7444b = null;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f8011i;
        extendedFloatingActionButton.C = false;
        extendedFloatingActionButton.setHorizontallyScrolling(false);
        ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        d dVar = this.f8009g;
        layoutParams.width = dVar.a().width;
        layoutParams.height = dVar.a().height;
    }

    @Override // l6.b
    public final void f(Animator animator) {
        j7.c cVar = this.d;
        Animator animator2 = (Animator) cVar.f7444b;
        if (animator2 != null) {
            animator2.cancel();
        }
        cVar.f7444b = animator;
        boolean z7 = this.f8010h;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f8011i;
        extendedFloatingActionButton.B = z7;
        extendedFloatingActionButton.C = true;
        extendedFloatingActionButton.setHorizontallyScrolling(true);
    }

    @Override // l6.b
    public final void g() {
        boolean z7 = this.f8010h;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f8011i;
        extendedFloatingActionButton.B = z7;
        ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        d dVar = this.f8009g;
        layoutParams.width = dVar.a().width;
        layoutParams.height = dVar.a().height;
        int iC = dVar.c();
        int paddingTop = extendedFloatingActionButton.getPaddingTop();
        int iB = dVar.b();
        int paddingBottom = extendedFloatingActionButton.getPaddingBottom();
        WeakHashMap weakHashMap = s0.f8353a;
        extendedFloatingActionButton.setPaddingRelative(iC, paddingTop, iB, paddingBottom);
        extendedFloatingActionButton.requestLayout();
    }

    @Override // l6.b
    public final boolean h() {
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f8011i;
        return this.f8010h == extendedFloatingActionButton.B || extendedFloatingActionButton.getIcon() == null || TextUtils.isEmpty(extendedFloatingActionButton.getText());
    }
}
