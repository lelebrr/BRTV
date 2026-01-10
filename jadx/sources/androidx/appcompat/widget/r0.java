package androidx.appcompat.widget;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.Message;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.p2elite.brtv2.R;
import java.util.List;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f816a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f817b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f818c;
    public final /* synthetic */ Object d;

    public /* synthetic */ r0(Object obj, int i6, Object obj2, int i10) {
        this.f816a = i10;
        this.d = obj;
        this.f817b = i6;
        this.f818c = obj2;
    }

    private final void a() {
        w5.g gVar;
        com.google.android.gms.internal.cast.m1 m1Var = (com.google.android.gms.internal.cast.m1) this.f818c;
        com.google.android.gms.internal.cast.c3 c3Var = (com.google.android.gms.internal.cast.c3) this.d;
        int i6 = this.f817b;
        com.google.android.gms.internal.cast.a0 a0Var = m1Var.f4320h;
        if (a0Var == null) {
            return;
        }
        synchronized (a0Var) {
            w5.d dVar = new w5.d();
            c6.c cVarC = c6.c.c();
            com.google.android.gms.internal.cast.b1 b1Var = a0Var.f4099c;
            cVarC.f3394c = new com.google.android.gms.internal.cast.k2(b1Var);
            cVarC.f3392a = 4501;
            w5.g gVarC = b1Var.c(0, cVarC.b());
            gVarC.b(new com.google.android.gms.internal.cast.y(dVar));
            gVarC.f10821b.h(new w5.f(w5.e.f10816a, (w5.b) new com.google.android.gms.internal.cast.y(dVar)));
            gVarC.g();
            a0Var.f4098b.postDelayed(new com.google.android.gms.internal.cast.z(0, dVar), a0Var.f4097a * 1000);
            gVar = dVar.f10815a;
        }
        gVar.b(new com.google.android.gms.internal.cast.e0(m1Var, i6, c3Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView recyclerView;
        switch (this.f816a) {
            case 0:
                ((TextView) this.f818c).setTypeface((Typeface) this.d, this.f817b);
                return;
            case 1:
                String[] strArr = (String[]) this.f818c;
                int[] iArr = new int[strArr.length];
                Activity activity = (Activity) this.d;
                PackageManager packageManager = activity.getPackageManager();
                String packageName = activity.getPackageName();
                int length = strArr.length;
                for (int i6 = 0; i6 < length; i6++) {
                    iArr[i6] = packageManager.checkPermission(strArr[i6], packageName);
                }
                ((androidx.core.app.b) activity).onRequestPermissionsResult(this.f817b, strArr, iArr);
                return;
            case 2:
                ((BottomSheetBehavior) this.d).D((View) this.f818c, this.f817b, false);
                return;
            case 3:
                com.google.android.gms.internal.cast.u uVar = (com.google.android.gms.internal.cast.u) this.f818c;
                q1.l0 l0Var = (q1.l0) this.d;
                int i10 = this.f817b;
                synchronized (uVar.f4426g) {
                    uVar.z(l0Var, i10);
                }
                return;
            case 4:
                a();
                return;
            case 5:
                ea.u uVar2 = (ea.u) this.d;
                uVar2.f6737a.I.h0(ea.d.f6631b);
                ka.r rVar = uVar2.f6737a.I;
                rVar.X.f6858g = false;
                o9.d.A(rVar.W, rVar.Y, this.f817b);
                ChannelBean channelBean = (ChannelBean) ((View) this.f818c).getTag();
                if (channelBean != null) {
                    uVar2.f6737a.I.g0(ga.h.d(channelBean));
                    return;
                }
                return;
            case 6:
                int size = ((List) this.f818c).size();
                ka.r rVar2 = (ka.r) this.d;
                int i11 = this.f817b;
                if (i11 < size) {
                    androidx.recyclerview.widget.p1 p1VarFindViewHolderForAdapterPosition = rVar2.W.findViewHolderForAdapterPosition(i11);
                    if (p1VarFindViewHolderForAdapterPosition != null) {
                        o9.d.y(p1VarFindViewHolderForAdapterPosition.itemView);
                        return;
                    }
                    return;
                }
                if (i11 > 0) {
                    androidx.recyclerview.widget.p1 p1VarFindViewHolderForAdapterPosition2 = rVar2.W.findViewHolderForAdapterPosition(i11 - 1);
                    if (p1VarFindViewHolderForAdapterPosition2 != null) {
                        o9.d.y(p1VarFindViewHolderForAdapterPosition2.itemView);
                        return;
                    }
                    return;
                }
                if (rVar2.V != null) {
                    fa.g0 g0Var = rVar2.X;
                    if (g0Var != null) {
                        o9.d.y(g0Var.f6857e);
                    }
                    rVar2.h0(ea.d.f6630a);
                    return;
                }
                return;
            case 7:
                ka.i0 i0Var = (ka.i0) this.d;
                sa.l lVar = (sa.l) i0Var.h().k().z((String) this.f818c);
                if (lVar != null && (recyclerView = lVar.U) != null) {
                    o9.d.z(recyclerView, this.f817b);
                }
                View currentFocus = i0Var.h().getCurrentFocus();
                if (currentFocus == null || R.id.root != currentFocus.getId()) {
                    return;
                }
                i0Var.f7797d0.postDelayed(new a.f(23, this), 300L);
                return;
            case 8:
                int i12 = this.f817b;
                ka.m0 m0Var = (ka.m0) this.d;
                RecyclerView recyclerView2 = (RecyclerView) this.f818c;
                ka.m0.Q(m0Var, recyclerView2, i12, i12);
                o9.d.y(recyclerView2);
                return;
            default:
                Message message = new Message();
                message.what = this.f817b;
                message.obj = (View) this.f818c;
                ((na.a) this.d).f8507a.f8756o.sendMessage(message);
                return;
        }
    }

    public /* synthetic */ r0(Object obj, Object obj2, int i6, int i10) {
        this.f816a = i10;
        this.f818c = obj;
        this.d = obj2;
        this.f817b = i6;
    }

    public /* synthetic */ r0(Object obj, Object obj2, int i6, int i10, boolean z7) {
        this.f816a = i10;
        this.d = obj;
        this.f818c = obj2;
        this.f817b = i6;
    }
}
