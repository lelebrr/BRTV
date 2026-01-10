package sa;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.s;
import androidx.leanback.widget.VerticalGridView;
import androidx.recyclerview.widget.RecyclerView;
import com.p2elite.brtv2.R;
import fa.m0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class l extends s {
    public static final String X = a2.a.s("7hvE9lHqWn3oE8fgTA==\n", "nX6lhT6EBRM=\n");
    public m0 T;
    public RecyclerView U;
    public ta.a V;
    public int W = 7;

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate;
        ta.a aVar = (ta.a) new a1.b(h()).n(ta.a.class);
        this.V = aVar;
        if (aVar.h()) {
            viewInflate = layoutInflater.inflate(R.layout.vod_season_touch_mode, viewGroup, false);
            RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.episode_list_view);
            this.U = recyclerView;
            recyclerView.addItemDecoration(new b(0, 0, 15, 22));
            this.U.setHasFixedSize(true);
            this.U.setAdapter(this.T);
        } else {
            viewInflate = layoutInflater.inflate(R.layout.vod_season, viewGroup, false);
            VerticalGridView verticalGridView = (VerticalGridView) viewInflate.findViewById(R.id.episode_list_view);
            this.U = verticalGridView;
            verticalGridView.addItemDecoration(new b(0, 0, 15, 22));
            verticalGridView.setHasFixedSize(true);
            verticalGridView.setAdapter(this.T);
        }
        RecyclerView recyclerView2 = this.U;
        recyclerView2.post(new a3.c(this, 27, recyclerView2));
        return viewInflate;
    }
}
