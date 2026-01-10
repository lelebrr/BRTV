package e6;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.chip.Chip;
import com.p2elite.brtv2.R;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends v0.b {

    /* renamed from: q, reason: collision with root package name */
    public final /* synthetic */ Chip f6569q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Chip chip, Chip chip2) {
        super(chip2);
        this.f6569q = chip;
    }

    @Override // v0.b
    public final int n(float f, float f3) {
        Rect rect = Chip.f4766x;
        Chip chip = this.f6569q;
        return (chip.d() && chip.getCloseIconTouchBounds().contains(f, f3)) ? 1 : 0;
    }

    @Override // v0.b
    public final void o(ArrayList arrayList) {
        boolean z7 = false;
        arrayList.add(0);
        Rect rect = Chip.f4766x;
        Chip chip = this.f6569q;
        if (chip.d()) {
            d dVar = chip.f4769e;
            if (dVar != null && dVar.K) {
                z7 = true;
            }
            if (!z7 || chip.f4771h == null) {
                return;
            }
            arrayList.add(1);
        }
    }

    @Override // v0.b
    public final boolean s(int i6, int i10, Bundle bundle) {
        boolean z7 = false;
        if (i10 == 16) {
            Chip chip = this.f6569q;
            if (i6 == 0) {
                return chip.performClick();
            }
            if (i6 == 1) {
                chip.playSoundEffect(0);
                View.OnClickListener onClickListener = chip.f4771h;
                if (onClickListener != null) {
                    onClickListener.onClick(chip);
                    z7 = true;
                }
                if (chip.f4783t) {
                    chip.f4782s.x(1, 1);
                }
            }
        }
        return z7;
    }

    @Override // v0.b
    public final void t(o0.h hVar) {
        Chip chip = this.f6569q;
        boolean zE = chip.e();
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f8541a;
        accessibilityNodeInfo.setCheckable(zE);
        accessibilityNodeInfo.setClickable(chip.isClickable());
        hVar.i(chip.getAccessibilityClassName());
        CharSequence text = chip.getText();
        if (Build.VERSION.SDK_INT >= 23) {
            hVar.o(text);
        } else {
            hVar.l(text);
        }
    }

    @Override // v0.b
    public final void u(int i6, o0.h hVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f8541a;
        if (i6 != 1) {
            hVar.l("");
            accessibilityNodeInfo.setBoundsInParent(Chip.f4766x);
            return;
        }
        Chip chip = this.f6569q;
        CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
        if (closeIconContentDescription != null) {
            hVar.l(closeIconContentDescription);
        } else {
            CharSequence text = chip.getText();
            hVar.l(chip.getContext().getString(R.string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
        }
        accessibilityNodeInfo.setBoundsInParent(chip.getCloseIconTouchBoundsInt());
        hVar.b(o0.c.f8523g);
        accessibilityNodeInfo.setEnabled(chip.isEnabled());
    }

    @Override // v0.b
    public final void v(int i6, boolean z7) {
        if (i6 == 1) {
            Chip chip = this.f6569q;
            chip.f4777n = z7;
            chip.refreshDrawableState();
        }
    }
}
