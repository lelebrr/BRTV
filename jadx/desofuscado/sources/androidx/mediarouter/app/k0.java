package androidx.mediarouter.app;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k0 extends h0 {

    /* renamed from: e, reason: collision with root package name */
    public final TextView f2620e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ o0 f2621g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k0(o0 o0Var, View view) throws Resources.NotFoundException {
        super(o0Var.f2651j, view, (ImageButton) view.findViewById(R.id.mr_cast_mute_button), (MediaRouteVolumeSlider) view.findViewById(R.id.mr_cast_volume_slider));
        this.f2621g = o0Var;
        this.f2620e = (TextView) view.findViewById(R.id.mr_group_volume_route_name);
        Resources resources = o0Var.f2651j.f2665m.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        TypedValue typedValue = new TypedValue();
        resources.getValue(R.dimen.mr_dynamic_volume_group_list_item_height, typedValue, true);
        this.f = (int) typedValue.getDimension(displayMetrics);
    }
}
