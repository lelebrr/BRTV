package x;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.constraintlayout.utils.widget.ImageFilterView;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b extends ViewOutlineProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10840a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImageFilterView f10841b;

    public /* synthetic */ b(ImageFilterView imageFilterView, int i6) {
        this.f10840a = i6;
        this.f10841b = imageFilterView;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        switch (this.f10840a) {
            case 0:
                ImageFilterView imageFilterView = this.f10841b;
                outline.setRoundRect(0, 0, imageFilterView.getWidth(), imageFilterView.getHeight(), (Math.min(r3, r4) * imageFilterView.f987g) / 2.0f);
                break;
            default:
                ImageFilterView imageFilterView2 = this.f10841b;
                outline.setRoundRect(0, 0, imageFilterView2.getWidth(), imageFilterView2.getHeight(), imageFilterView2.f988h);
                break;
        }
    }
}
