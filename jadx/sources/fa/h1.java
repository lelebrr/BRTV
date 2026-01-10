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
public final class h1 extends p {

    /* renamed from: g, reason: collision with root package name */
    public final SparseArray f6865g;

    /* renamed from: h, reason: collision with root package name */
    public final Integer[] f6866h;

    /* renamed from: i, reason: collision with root package name */
    public int f6867i;

    /* renamed from: j, reason: collision with root package name */
    public final androidx.mediarouter.app.c f6868j;

    /* renamed from: k, reason: collision with root package name */
    public int f6869k;

    static {
        a2.a.s("CwLW0LgLgKsRXPPzqxSBvi8=\n", "XW2yl8pk9ds=\n");
    }

    public h1(SparseArray sparseArray, FragmentActivity fragmentActivity, androidx.mediarouter.app.c cVar) throws Resources.NotFoundException {
        super(1);
        this.f6867i = 0;
        this.f6869k = 0;
        fragmentActivity.getResources().getDrawable(R$drawable.group_l1_bg);
        this.f6868j = cVar;
        this.f6865g = sparseArray;
        HashSet hashSet = new HashSet();
        for (int i6 = 0; i6 < sparseArray.size(); i6++) {
            hashSet.add(Integer.valueOf(sparseArray.keyAt(i6)));
            a2.a.s("tKkfMJSOWNOu9zoTh5FZxpA=\n", "4sZ7d+bhLaM=\n");
            a2.a.s("oVnJXAM7FCX8Cw==\n", "xiumKXNwcVw=\n");
            sparseArray.keyAt(i6);
        }
        Integer[] numArr = (Integer[]) hashSet.toArray(new Integer[hashSet.size()]);
        this.f6866h = numArr;
        Arrays.sort(numArr);
        String strS = a2.a.s("oHPdtg7Xej66LfiVHch7K4Q=\n", "9hy58Xy4D04=\n");
        String str = a2.a.s("acuA7owwupNPy536hUH/\n", "Drnvm/x73+o=\n") + numArr.length;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, str);
    }

    public final void b() {
        androidx.mediarouter.app.c cVar = this.f6868j;
        cVar.removeMessages(2);
        Message message = new Message();
        message.what = 2;
        Bundle bundle = new Bundle();
        bundle.putSerializable(a2.a.s("hpqu7jXxR+k=\n", "4ejBm0WiIp0=\n"), ((GroupL1) this.f6865g.get(this.f6869k)).groups);
        message.setData(bundle);
        cVar.sendMessage(message);
        this.f6867i = this.f6932a;
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f6865g.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        g1 g1Var = (g1) p1Var;
        boolean z7 = i6 == this.f6932a;
        if (z7) {
            int i10 = this.f6933b;
        }
        g1Var.itemView.setSelected(z7);
        this.f6869k = this.f6866h[i6].intValue();
        a2.a.s("tFCb9g9T0xLhb5XzRT8=\n", "0yL0g38f4l4=\n");
        SparseArray sparseArray = this.f6865g;
        sparseArray.size();
        a2.a.s("Eyx+4FcUShUJaw==\n", "M0sMjyJkA3E=\n");
        a2.a.s("JuNbPiaQuGRr4RNx\n", "BoQpUVPg9gU=\n");
        String str = ((GroupL1) sparseArray.get(this.f6869k)).name;
        String str2 = ((GroupL1) sparseArray.get(this.f6869k)).name;
        TextView textView = g1Var.f6860a;
        textView.setText(str2);
        textView.setTag(Integer.valueOf(this.f6869k));
        if (z7) {
            textView.setTextColor(-1);
            if (this.f6933b >= 0) {
                textView.setBackgroundResource(R$drawable.dialog_btn_bg_focused);
            } else {
                textView.setBackgroundResource(R$drawable.dialog_btn_bg_last_focus);
            }
            if (this.f6867i != this.f6932a) {
                b();
            }
        } else {
            textView.setTextColor(-1879048193);
            textView.setBackgroundResource(R$drawable.group_l1_bg);
        }
        g1Var.itemView.setOnClickListener(new androidx.appcompat.app.a(12, this));
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.vod_group_l1_item, viewGroup, false);
        g1 g1Var = new g1(viewI);
        g1Var.f6860a = (TextView) viewI.findViewById(R.id.group_l1_name);
        return g1Var;
    }
}
