package fa;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.Group;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g0 extends i0 {

    /* renamed from: i, reason: collision with root package name */
    public static final String f6855i = a2.a.s("HztEfjcAWNY2I3N4PQc=\n", "UkIDDFh1KJc=\n");

    /* renamed from: c, reason: collision with root package name */
    public LinkedHashMap f6856c;
    public ArrayList d;

    /* renamed from: e, reason: collision with root package name */
    public View f6857e;
    public ka.n f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6858g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6859h;

    public final void a(int i6, View view) {
        StringBuilder sb = new StringBuilder();
        sb.append(a2.a.s("2o/jBz/EKpndj/MCM804wIk=\n", "qeqXVFqoT/o=\n"));
        sb.append(view);
        String strJ = ea.q.j("Pibrb5U=\n", "AxvWUqhPRHo=\n", sb, i6);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(f6855i, strJ);
        this.f6857e = view;
        if (view != null) {
            view.setSelected(true);
        }
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f6856c.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        f0 f0Var = (f0) p1Var;
        int absoluteAdapterPosition = f0Var.getAbsoluteAdapterPosition();
        ImageView imageView = f0Var.f6847b;
        imageView.setVisibility(0);
        int i10 = 2;
        f0Var.itemView.setOnKeyListener(new f(absoluteAdapterPosition, i10, this));
        f0Var.itemView.setOnTouchListener(new h(i6, i10, this));
        f0Var.itemView.setOnClickListener(new q(this, i6, i10));
        f0Var.itemView.setOnLongClickListener(new m(this, absoluteAdapterPosition));
        ArrayList arrayList = this.d;
        if (arrayList.size() > i6) {
            Integer num = (Integer) arrayList.get(i6);
            int iIntValue = num.intValue();
            LinkedHashMap linkedHashMap = this.f6856c;
            f0Var.f6846a.setText(((Group) linkedHashMap.get(num)).name);
            if (((Group) linkedHashMap.get(num)).restrictedAccess) {
                if (Spark.f8662c2) {
                    imageView.setImageResource(R.mipmap.group_type_lock_0);
                } else {
                    imageView.setImageResource(R.mipmap.group_type_lock_1);
                }
            } else if (((Group) linkedHashMap.get(num)).type == -5) {
                imageView.setImageResource(R.mipmap.group_type_favorite);
            } else if (((Group) linkedHashMap.get(num)).type == -4 || ((Group) linkedHashMap.get(num)).type == 104) {
                imageView.setImageResource(R.mipmap.group_type_playback);
            } else if (((Group) linkedHashMap.get(num)).type == -3) {
                imageView.setImageResource(R.mipmap.group_type_all);
            } else {
                imageView.setVisibility(8);
            }
            f0Var.itemView.setTag(num);
            f0Var.itemView.setOnFocusChangeListener(new e0(this, f0Var, iIntValue, absoluteAdapterPosition));
        }
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.group_item, viewGroup, false);
        f0 f0Var = new f0(viewI);
        f0Var.f6846a = (TextView) viewI.findViewById(R.id.group_name);
        f0Var.f6847b = (ImageView) viewI.findViewById(R.id.group_type_icon);
        return f0Var;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onViewRecycled(androidx.recyclerview.widget.p1 p1Var) {
        f0 f0Var = (f0) p1Var;
        super.onViewRecycled(f0Var);
        com.bumptech.glide.b.e(f0Var.itemView.getContext()).k(f0Var.f6847b);
    }
}
