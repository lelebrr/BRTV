package fa;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.Message;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.Group;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f1 extends p {

    /* renamed from: l, reason: collision with root package name */
    public static final String f6848l = a2.a.s("Zcop84pQ5BlywSzEjFrj\n", "M6VNtPg/kWk=\n");

    /* renamed from: g, reason: collision with root package name */
    public final FragmentActivity f6849g;

    /* renamed from: h, reason: collision with root package name */
    public final SparseArray f6850h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f6851i;

    /* renamed from: j, reason: collision with root package name */
    public int f6852j;

    /* renamed from: k, reason: collision with root package name */
    public final androidx.mediarouter.app.c f6853k;

    public f1(SparseArray sparseArray, FragmentActivity fragmentActivity, androidx.mediarouter.app.c cVar) {
        super(2);
        this.f6850h = new SparseArray();
        this.f6851i = new ArrayList();
        this.f6852j = 0;
        this.f6849g = fragmentActivity;
        this.f6853k = cVar;
        for (int i6 = 0; i6 < sparseArray.size(); i6++) {
            this.f6850h.put(sparseArray.keyAt(i6), (Group) sparseArray.valueAt(i6));
        }
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            hashSet.add(Integer.valueOf(sparseArray.keyAt(i10)));
        }
        this.f6851i.addAll(hashSet);
        Collections.sort(this.f6851i);
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f6850h.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        e1 e1Var = (e1) p1Var;
        boolean z7 = i6 == this.f6932a;
        if (z7) {
            int i10 = this.f6933b;
        }
        e1Var.itemView.setSelected(z7);
        Integer num = (Integer) this.f6851i.get(i6);
        int iIntValue = num.intValue();
        StringBuilder sb = new StringBuilder();
        sb.append(a2.a.s("lG0ADy0fn8adcQoWED2HndM=\n", "8x9vel1c96c=\n"));
        SparseArray sparseArray = this.f6850h;
        sb.append(sparseArray.size());
        sb.append(a2.a.s("CvDfMczm+1AQtw==\n", "KpetXrmWsjQ=\n"));
        sb.append(iIntValue);
        sb.append(a2.a.s("m/YIvdFcq8nW9EDy\n", "u5F60qQs5ag=\n"));
        sb.append(((Group) sparseArray.get(iIntValue)).name);
        String string = sb.toString();
        boolean z10 = org.bitspark.android.utils.m.f8784b;
        Log.i(f6848l, string);
        String strReplaceAll = ((Group) sparseArray.get(iIntValue)).name.replaceAll(a2.a.s("WzJ0Iw==\n", "dRgoDLS12v4=\n"), "");
        String str = ((Group) sparseArray.get(iIntValue)).url;
        ImageView imageView = e1Var.f6840a;
        imageView.setVisibility(0);
        if (((Group) sparseArray.get(iIntValue)).restrictedAccess) {
            if (Spark.f8662c2) {
                imageView.setImageResource(R.mipmap.group_type_lock_0);
            } else {
                imageView.setImageResource(R.mipmap.group_type_lock_1);
            }
        } else if (((Group) sparseArray.get(iIntValue)).type == -5) {
            imageView.setImageResource(R.mipmap.group_type_favorite);
        } else {
            imageView.setVisibility(8);
        }
        TextView textView = e1Var.f6841b;
        textView.setText(strReplaceAll);
        textView.setTag(num);
        ImageView imageView2 = e1Var.f6842c;
        if (z7) {
            if (this.f6933b >= 0) {
                imageView2.setImageResource(R.mipmap.underline);
                textView.setTag(R.id.scale_animator_id, Boolean.TRUE);
                textView.animate().cancel();
                textView.setVisibility(0);
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, a2.a.s("PVtRe7g8\n", "TjgwF91kdgo=\n"), 1.0f, 1.25f);
                objectAnimatorOfFloat.setDuration(220L);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(textView, a2.a.s("ejbFJBWk\n", "CVWkSHD90Fg=\n"), 1.0f, 1.25f);
                objectAnimatorOfFloat2.setDuration(220L);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(textView, a2.a.s("sT5CE/Y+\n", "wl0jf5NmkJk=\n"), 1.25f, 1.1f);
                objectAnimatorOfFloat3.setDuration(100L);
                ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(textView, a2.a.s("iL1AmgyM\n", "+94h9mnVKx4=\n"), 1.25f, 1.1f);
                objectAnimatorOfFloat4.setDuration(100L);
                AnimatorSet animatorSet2 = new AnimatorSet();
                animatorSet2.playTogether(objectAnimatorOfFloat3, objectAnimatorOfFloat4);
                AnimatorSet animatorSet3 = new AnimatorSet();
                animatorSet3.playSequentially(animatorSet, animatorSet2);
                animatorSet3.start();
                animatorSet.addListener(new org.bitspark.android.utils.n(textView));
            } else {
                imageView2.setImageResource(R.mipmap.underline_gray);
                textView.setScaleY(1.0f);
                textView.setScaleX(1.0f);
            }
            textView.setTextColor(-1);
            if (this.f6852j != this.f6932a) {
                androidx.mediarouter.app.c cVar = this.f6853k;
                cVar.removeMessages(3);
                Message messageObtain = Message.obtain(cVar, 3, iIntValue, 0);
                messageObtain.obj = str;
                cVar.sendMessage(messageObtain);
                this.f6852j = this.f6932a;
            }
        } else {
            textView.setTextColor(-1879048193);
            imageView2.setImageResource(0);
        }
        e1Var.itemView.setOnClickListener(new c1(this, iIntValue, e1Var));
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.vod_group_item, viewGroup, false);
        e1 e1Var = new e1(viewI);
        e1Var.f6840a = (ImageView) viewI.findViewById(R.id.group_type_icon);
        e1Var.f6841b = (TextView) viewI.findViewById(R.id.group_name);
        e1Var.f6842c = (ImageView) viewI.findViewById(R.id.underline);
        e1Var.d = viewI.findViewById(R.id.root_vod_child);
        return e1Var;
    }
}
