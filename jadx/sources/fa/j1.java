package fa;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Message;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import java.util.Arrays;
import java.util.HashSet;
import org.bitspark.android.R$drawable;
import org.bitspark.android.beans.GroupL1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j1 extends p {

    /* renamed from: l, reason: collision with root package name */
    public static final String f6882l = a2.a.s("IP3qHmlzTBI6o889emxNBwTE\n", "dpKOWRscOWI=\n");

    /* renamed from: g, reason: collision with root package name */
    public final SparseArray f6883g;

    /* renamed from: h, reason: collision with root package name */
    public final Integer[] f6884h;

    /* renamed from: i, reason: collision with root package name */
    public int f6885i;

    /* renamed from: j, reason: collision with root package name */
    public final androidx.mediarouter.app.c f6886j;

    /* renamed from: k, reason: collision with root package name */
    public int f6887k;

    public j1(SparseArray sparseArray, FragmentActivity fragmentActivity, androidx.mediarouter.app.c cVar) throws Resources.NotFoundException {
        super(11);
        this.f6885i = 0;
        this.f6887k = 0;
        fragmentActivity.getResources().getDrawable(R$drawable.group_l1_bg);
        this.f6886j = cVar;
        this.f6883g = sparseArray;
        HashSet hashSet = new HashSet();
        for (int i6 = 0; i6 < sparseArray.size(); i6++) {
            hashSet.add(Integer.valueOf(sparseArray.keyAt(i6)));
            String strS = a2.a.s("jKKaUdWjcEqW/L9yxrxxX6ib\n", "2s3+FqfMBTo=\n");
            String str = a2.a.s("VhjQJk4FSc8LSg==\n", "MWq/Uz5OLLY=\n") + sparseArray.keyAt(i6);
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS, str);
        }
        Integer[] numArr = (Integer[]) hashSet.toArray(new Integer[hashSet.size()]);
        this.f6884h = numArr;
        Arrays.sort(numArr);
        String strS2 = a2.a.s("xA8eyoTvlibeUTvpl/CXM+A2\n", "kmB6jfaA41Y=\n");
        String str2 = a2.a.s("gam2hHfM2c+nqauQfr2c\n", "5tvZ8QeHvLY=\n") + numArr.length;
        boolean z10 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS2, str2);
    }

    public final void b() {
        androidx.mediarouter.app.c cVar = this.f6886j;
        cVar.removeMessages(2);
        Message message = new Message();
        message.what = 2;
        Bundle bundle = new Bundle();
        bundle.putSerializable(a2.a.s("iWJePzm0W48=\n", "7hAxSknnPvs=\n"), ((GroupL1) this.f6883g.get(this.f6887k)).groups);
        message.setData(bundle);
        cVar.sendMessage(message);
        this.f6885i = this.f6932a;
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f6883g.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        i1 i1Var = (i1) p1Var;
        boolean z7 = i6 == this.f6932a;
        i1Var.itemView.setSelected(z7);
        this.f6887k = this.f6884h[i6].intValue();
        StringBuilder sb = new StringBuilder();
        sb.append(a2.a.s("hGlGB3YljtfRVkgCPEk=\n", "4xspcgZpv5s=\n"));
        SparseArray sparseArray = this.f6883g;
        sb.append(sparseArray.size());
        sb.append(a2.a.s("8lHGj+UlBhPoFg==\n", "0ja04JBVT3c=\n"));
        sb.append(this.f6887k);
        sb.append(a2.a.s("IzYwN6azVoBuNHh4\n", "A1FCWNPDGOE=\n"));
        sb.append(((GroupL1) sparseArray.get(this.f6887k)).name);
        String string = sb.toString();
        boolean z10 = org.bitspark.android.utils.m.f8784b;
        Log.i(f6882l, string);
        String str = ((GroupL1) sparseArray.get(this.f6887k)).name;
        TextView textView = i1Var.f6875a;
        textView.setText(str);
        textView.setTag(Integer.valueOf(this.f6887k));
        if (z7) {
            textView.setTextColor(-1);
            if (this.f6933b >= 0) {
                textView.setBackgroundResource(R$drawable.dialog_btn_bg_focused);
            } else {
                textView.setBackgroundResource(R$drawable.dialog_btn_bg_last_focus);
            }
            if (this.f6885i != this.f6932a) {
                b();
            }
        } else {
            textView.setTextColor(-1879048193);
            textView.setBackgroundResource(R$drawable.group_l1_bg);
        }
        i1Var.itemView.setOnClickListener(new androidx.appcompat.app.a(13, this));
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.vod_group_l1_v_item, viewGroup, false);
        i1 i1Var = new i1(viewI);
        i1Var.f6875a = (TextView) viewI.findViewById(R.id.group_l1_v_name);
        return i1Var;
    }
}
