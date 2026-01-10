package ka;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import com.p2elite.brtv2.R;
import com.youth.banner.adapter.BannerAdapter;
import java.util.ArrayList;
import org.bitspark.android.beans.EventBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends BannerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f7794a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(j jVar, ArrayList arrayList) {
        super(arrayList);
        this.f7794a = jVar;
    }

    @Override // com.youth.banner.holder.IViewHolder
    public final void onBindView(Object obj, Object obj2, int i6, int i10) {
        fa.z zVar = (fa.z) obj;
        EventBean eventBean = (EventBean) obj2;
        FragmentActivity fragmentActivityH = this.f7794a.h();
        ((com.bumptech.glide.l) com.bumptech.glide.b.b(fragmentActivityH).c(fragmentActivityH).o(eventBean.image).d(x2.k.f10912c)).B(zVar.f6986a);
        zVar.f6986a.setOnClickListener(new androidx.appcompat.app.a(14, this));
        int i11 = eventBean.tag;
        ImageView imageView = zVar.f6987b;
        if (i11 == 0 && eventBean.channel == 0) {
            imageView.setVisibility(8);
        } else if (i11 == 0) {
            imageView.setVisibility(0);
            imageView.setImageResource(R.mipmap.home_vod_play_3x);
        } else {
            imageView.setVisibility(0);
            imageView.setImageResource(R.mipmap.home_vod_list_3x);
        }
    }

    @Override // com.youth.banner.holder.IViewHolder
    public final Object onCreateHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.item_banner, viewGroup, false);
        fa.z zVar = new fa.z(viewI);
        zVar.f6986a = (ImageView) viewI.findViewById(R.id.imageView);
        zVar.f6987b = (ImageView) viewI.findViewById(R.id.icon);
        return zVar;
    }
}
