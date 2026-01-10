package x;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.constraintlayout.utils.widget.ImageFilterButton;
import com.google.android.material.chip.Chip;
import e6.d;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a extends ViewOutlineProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10838a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f10839b;

    public /* synthetic */ a(View view, int i6) {
        this.f10838a = i6;
        this.f10839b = view;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        switch (this.f10838a) {
            case 0:
                ImageFilterButton imageFilterButton = (ImageFilterButton) this.f10839b;
                outline.setRoundRect(0, 0, imageFilterButton.getWidth(), imageFilterButton.getHeight(), (Math.min(r3, r4) * imageFilterButton.f) / 2.0f);
                break;
            case 1:
                ImageFilterButton imageFilterButton2 = (ImageFilterButton) this.f10839b;
                outline.setRoundRect(0, 0, imageFilterButton2.getWidth(), imageFilterButton2.getHeight(), imageFilterButton2.f979g);
                break;
            default:
                d dVar = ((Chip) this.f10839b).f4769e;
                if (dVar == null) {
                    outline.setAlpha(0.0f);
                    break;
                } else {
                    dVar.getOutline(outline);
                    break;
                }
        }
    }
}
