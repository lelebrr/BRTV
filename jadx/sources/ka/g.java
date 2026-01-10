package ka;

import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import com.youth.banner.adapter.BannerImageAdapter;
import com.youth.banner.holder.BannerImageHolder;
import java.util.ArrayList;
import org.bitspark.android.beans.EventBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends BannerImageAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f7784a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(j jVar, ArrayList arrayList) {
        super(arrayList);
        this.f7784a = jVar;
    }

    @Override // com.youth.banner.holder.IViewHolder
    public final void onBindView(Object obj, Object obj2, int i6, int i10) {
        BannerImageHolder bannerImageHolder = (BannerImageHolder) obj;
        bannerImageHolder.imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        FragmentActivity fragmentActivityH = this.f7784a.h();
        com.bumptech.glide.b.b(fragmentActivityH).c(fragmentActivityH).n(((EventBean) obj2).imageRes).B(bannerImageHolder.imageView);
    }
}
