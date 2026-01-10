package q1;

import android.os.Message;
import androidx.media3.common.C;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q0 {

    /* renamed from: a, reason: collision with root package name */
    public final c0 f9111a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9112b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9113c;
    public final s0 d;

    /* renamed from: e, reason: collision with root package name */
    public final s0 f9114e;
    public final s0 f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f9115g;

    /* renamed from: h, reason: collision with root package name */
    public final WeakReference f9116h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f9117i = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f9118j = false;

    public q0(h hVar, s0 s0Var, c0 c0Var, int i6, boolean z7, s0 s0Var2, ArrayList arrayList) {
        this.f9116h = new WeakReference(hVar);
        this.f9114e = s0Var;
        this.f9111a = c0Var;
        this.f9112b = i6;
        this.f9113c = z7;
        this.d = hVar.d;
        this.f = s0Var2;
        this.f9115g = arrayList == null ? null : new ArrayList(arrayList);
        hVar.f8986a.postDelayed(new a.b(15, this), C.DEFAULT_SEEK_FORWARD_INCREMENT_MS);
    }

    public final void a() {
        p0 p0VarA;
        u0.b();
        if (this.f9117i || this.f9118j) {
            return;
        }
        WeakReference weakReference = this.f9116h;
        h hVar = (h) weakReference.get();
        c0 c0Var = this.f9111a;
        if (hVar == null || hVar.f != this) {
            if (this.f9117i || this.f9118j) {
                return;
            }
            this.f9118j = true;
            if (c0Var != null) {
                c0Var.i(0);
                c0Var.e();
                return;
            }
            return;
        }
        this.f9117i = true;
        hVar.f = null;
        h hVar2 = (h) weakReference.get();
        int i6 = this.f9112b;
        s0 s0Var = this.d;
        if (hVar2 != null && hVar2.d == s0Var) {
            Message messageObtainMessage = hVar2.f8986a.obtainMessage(263, s0Var);
            messageObtainMessage.arg1 = i6;
            messageObtainMessage.sendToTarget();
            c0 c0Var2 = hVar2.f8989e;
            if (c0Var2 != null) {
                c0Var2.i(i6);
                hVar2.f8989e.e();
            }
            HashMap map = hVar2.f8987b;
            if (!map.isEmpty()) {
                for (c0 c0Var3 : map.values()) {
                    c0Var3.i(i6);
                    c0Var3.e();
                }
                map.clear();
            }
            hVar2.f8989e = null;
        }
        h hVar3 = (h) weakReference.get();
        if (hVar3 == null) {
            return;
        }
        s0 s0Var2 = this.f9114e;
        hVar3.d = s0Var2;
        hVar3.f8989e = c0Var;
        boolean z7 = this.f9113c;
        b bVar = hVar3.f8986a;
        s0 s0Var3 = this.f;
        if (s0Var3 == null) {
            bVar.getClass();
            Message messageObtainMessage2 = bVar.obtainMessage(262, new g(s0Var, s0Var2, z7));
            messageObtainMessage2.arg1 = i6;
            messageObtainMessage2.sendToTarget();
        } else {
            bVar.getClass();
            Message messageObtainMessage3 = bVar.obtainMessage(264, new g(s0Var3, s0Var2, z7));
            messageObtainMessage3.arg1 = i6;
            messageObtainMessage3.sendToTarget();
        }
        hVar3.f8987b.clear();
        hVar3.i();
        hVar3.m();
        ArrayList arrayList = this.f9115g;
        if (arrayList == null || (p0VarA = hVar3.d.a()) == null) {
            return;
        }
        p0VarA.p(arrayList);
    }
}
