package androidx.appcompat.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import androidx.appcompat.widget.ActionMenuView;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r0 implements k.x, com.google.android.material.internal.d0, z4.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f351a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f352b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f353c;

    public /* synthetic */ r0(int i6, Object obj) {
        this.f351a = i6;
        this.f353c = obj;
    }

    public static r0 c(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("routes");
        if (parcelableArrayList != null) {
            for (int i6 = 0; i6 < parcelableArrayList.size(); i6++) {
                Bundle bundle2 = (Bundle) parcelableArrayList.get(i6);
                arrayList.add(bundle2 != null ? new q1.w(bundle2) : null);
            }
        }
        return new r0(arrayList, bundle.getBoolean("supportsDynamicGroupRoute", false));
    }

    public boolean a() {
        return this.f352b;
    }

    @Override // k.x
    public void b(k.l lVar, boolean z7) {
        androidx.appcompat.widget.k kVar;
        if (this.f352b) {
            return;
        }
        this.f352b = true;
        s0 s0Var = (s0) this.f353c;
        ActionMenuView actionMenuView = s0Var.f356r.f862a.f630a;
        if (actionMenuView != null && (kVar = actionMenuView.f471t) != null) {
            kVar.c();
            androidx.appcompat.widget.e eVar = kVar.f758u;
            if (eVar != null && eVar.b()) {
                eVar.f7674i.dismiss();
            }
        }
        s0Var.f357s.onPanelClosed(108, lVar);
        this.f352b = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean d(java.lang.CharSequence r7, int r8) {
        /*
            r6 = this;
            r0 = 1
            if (r7 == 0) goto L44
            if (r8 < 0) goto L44
            int r1 = r7.length()
            int r1 = r1 - r8
            if (r1 < 0) goto L44
            java.lang.Object r1 = r6.f353c
            l0.i r1 = (l0.i) r1
            if (r1 != 0) goto L17
            boolean r7 = r6.a()
            return r7
        L17:
            r1 = 0
            r2 = 2
            r3 = 0
            r4 = 2
        L1b:
            if (r3 >= r8) goto L39
            if (r4 != r2) goto L39
            char r4 = r7.charAt(r3)
            byte r4 = java.lang.Character.getDirectionality(r4)
            androidx.appcompat.app.r0 r5 = l0.j.f7940a
            if (r4 == 0) goto L36
            if (r4 == r0) goto L34
            if (r4 == r2) goto L34
            switch(r4) {
                case 14: goto L36;
                case 15: goto L36;
                case 16: goto L34;
                case 17: goto L34;
                default: goto L32;
            }
        L32:
            r4 = 2
            goto L37
        L34:
            r4 = 0
            goto L37
        L36:
            r4 = 1
        L37:
            int r3 = r3 + r0
            goto L1b
        L39:
            if (r4 == 0) goto L43
            if (r4 == r0) goto L42
            boolean r0 = r6.a()
            goto L43
        L42:
            r0 = 0
        L43:
            return r0
        L44:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            r7.<init>()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.r0.d(java.lang.CharSequence, int):boolean");
    }

    public synchronized void e(x2.x xVar, boolean z7) {
        try {
            if (this.f352b || z7) {
                ((Handler) this.f353c).obtainMessage(1, xVar).sendToTarget();
            } else {
                this.f352b = true;
                xVar.d();
                this.f352b = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // k.x
    public boolean f(k.l lVar) {
        ((s0) this.f353c).f357s.onMenuOpened(108, lVar);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x007b  */
    @Override // com.google.android.material.internal.d0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public n0.r1 p(android.view.View r11, n0.r1 r12, com.google.android.material.internal.e0 r13) {
        /*
            r10 = this;
            n0.o1 r0 = r12.f8352a
            r1 = 7
            f0.c r1 = r0.g(r1)
            r2 = 32
            f0.c r0 = r0.g(r2)
            int r2 = r1.f6755b
            java.lang.Object r3 = r10.f353c
            com.google.android.material.bottomsheet.BottomSheetBehavior r3 = (com.google.android.material.bottomsheet.BottomSheetBehavior) r3
            r3.f4701v = r2
            boolean r2 = com.google.android.material.internal.a0.i(r11)
            int r4 = r11.getPaddingBottom()
            int r5 = r11.getPaddingLeft()
            int r6 = r11.getPaddingRight()
            boolean r7 = r3.f4693n
            if (r7 == 0) goto L32
            int r4 = r12.a()
            r3.f4700u = r4
            int r7 = r13.d
            int r4 = r4 + r7
        L32:
            boolean r7 = r3.f4694o
            int r8 = r1.f6754a
            if (r7 == 0) goto L40
            if (r2 == 0) goto L3d
            int r5 = r13.f5033c
            goto L3f
        L3d:
            int r5 = r13.f5031a
        L3f:
            int r5 = r5 + r8
        L40:
            boolean r7 = r3.f4695p
            int r9 = r1.f6756c
            if (r7 == 0) goto L4f
            if (r2 == 0) goto L4b
            int r13 = r13.f5031a
            goto L4d
        L4b:
            int r13 = r13.f5033c
        L4d:
            int r6 = r13 + r9
        L4f:
            android.view.ViewGroup$LayoutParams r13 = r11.getLayoutParams()
            android.view.ViewGroup$MarginLayoutParams r13 = (android.view.ViewGroup.MarginLayoutParams) r13
            boolean r2 = r3.f4697r
            r7 = 1
            if (r2 == 0) goto L62
            int r2 = r13.leftMargin
            if (r2 == r8) goto L62
            r13.leftMargin = r8
            r2 = 1
            goto L63
        L62:
            r2 = 0
        L63:
            boolean r8 = r3.f4698s
            if (r8 == 0) goto L6e
            int r8 = r13.rightMargin
            if (r8 == r9) goto L6e
            r13.rightMargin = r9
            r2 = 1
        L6e:
            boolean r8 = r3.f4699t
            if (r8 == 0) goto L7b
            int r8 = r13.topMargin
            int r1 = r1.f6755b
            if (r8 == r1) goto L7b
            r13.topMargin = r1
            goto L7c
        L7b:
            r7 = r2
        L7c:
            if (r7 == 0) goto L81
            r11.setLayoutParams(r13)
        L81:
            int r13 = r11.getPaddingTop()
            r11.setPadding(r5, r13, r6, r4)
            boolean r11 = r10.f352b
            if (r11 == 0) goto L90
            int r13 = r0.d
            r3.f4691l = r13
        L90:
            boolean r13 = r3.f4693n
            if (r13 != 0) goto L96
            if (r11 == 0) goto L99
        L96:
            r3.H()
        L99:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.r0.p(android.view.View, n0.r1, com.google.android.material.internal.e0):n0.r1");
    }

    @Override // z4.k
    public void r(Object obj, Object obj2) {
        v4.w wVar = (v4.w) obj;
        v4.b bVar = p4.o.F;
        Context context = wVar.f3991c;
        ComplianceOptions complianceOptions = new ComplianceOptions(-1, -1, 0, true);
        v4.d dVar = (v4.d) wVar.p();
        p4.o oVar = (p4.o) this.f353c;
        double d = oVar.f8902u;
        boolean z7 = oVar.f8903v;
        ApiMetadata apiMetadata = new ApiMetadata(complianceOptions);
        Parcel parcelL = dVar.l();
        int i6 = com.google.android.gms.internal.cast.d0.f4128a;
        parcelL.writeInt(this.f352b ? 1 : 0);
        parcelL.writeDouble(d);
        parcelL.writeInt(z7 ? 1 : 0);
        com.google.android.gms.internal.cast.d0.c(parcelL, apiMetadata);
        dVar.y(parcelL, 8);
        ((w5.d) obj2).b(null);
    }

    public String toString() {
        switch (this.f351a) {
            case 5:
                StringBuilder sb = new StringBuilder("MediaRouteProviderDescriptor{ routes=");
                List list = (List) this.f353c;
                sb.append(Arrays.toString(list.toArray()));
                sb.append(", isValid=");
                int size = list.size();
                boolean z7 = false;
                int i6 = 0;
                while (true) {
                    if (i6 >= size) {
                        z7 = true;
                    } else {
                        q1.w wVar = (q1.w) list.get(i6);
                        if (wVar != null && wVar.k()) {
                            i6++;
                        }
                    }
                }
                sb.append(z7);
                sb.append(" }");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ r0(int i6, Object obj, boolean z7) {
        this.f351a = i6;
        this.f353c = obj;
        this.f352b = z7;
    }

    public r0() {
        this.f351a = 6;
        this.f353c = new Handler(Looper.getMainLooper(), new o3.e(1));
    }

    public r0(ArrayList arrayList, boolean z7) {
        this.f351a = 5;
        if (arrayList.isEmpty()) {
            this.f353c = Collections.emptyList();
        } else {
            this.f353c = Collections.unmodifiableList(new ArrayList(arrayList));
        }
        this.f352b = z7;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public r0(l0.i iVar, boolean z7) {
        this(3, iVar);
        this.f351a = 3;
        this.f352b = z7;
    }
}
