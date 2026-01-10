package ka;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import fa.r0;
import java.util.ArrayList;
import org.bitspark.android.view.MyViewPager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class z extends b implements View.OnTouchListener {
    public static final String Y = a2.a.s("FTSjCDThuSU2\n", "V2f2e1GT/1c=\n");
    public ArrayList U;
    public la.d V;
    public la.e W;
    public MyViewPager X;

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws Resources.NotFoundException {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_user, (ViewGroup) null);
        this.X = (MyViewPager) viewInflate.findViewById(R.id.page_login);
        this.V = new la.d();
        this.W = new la.e();
        ArrayList arrayList = new ArrayList();
        this.U = arrayList;
        Integer[] numArr = ea.g.f6669n;
        arrayList.add(numArr[0].intValue(), this.V);
        this.U.add(numArr[1].intValue(), this.W);
        androidx.fragment.app.j0 j0VarI = i();
        ArrayList arrayList2 = this.U;
        r0 r0Var = new r0(j0VarI);
        r0Var.f6945g = arrayList2;
        this.X.setAdapter(r0Var);
        this.X.setOffscreenPageLimit(2);
        StringBuilder sb = new StringBuilder();
        sb.append(a2.a.s("xH7L0LeaeKX9ee3V8pdjp8J+qMG9n2ng\n", "qxCIotL7DMA=\n"));
        String str = ea.g.f6658a;
        sb.append(org.bitspark.android.utils.m.f(-65535, str));
        Log.i(Y, sb.toString());
        if (org.bitspark.android.utils.m.f(-65535, str).intValue() == 0 || org.bitspark.android.utils.m.f(-65535, str).intValue() == -12) {
            this.X.setCurrentItem(numArr[1].intValue());
        } else {
            this.X.setCurrentItem(numArr[0].intValue());
        }
        return viewInflate;
    }
}
