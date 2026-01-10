package w0;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseIntArray;
import android.view.Choreographer;
import android.view.View;
import com.google.android.material.internal.c0;
import com.p2elite.brtv2.R;
import java.lang.ref.ReferenceQueue;
import s4.h;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class e extends a2.a {

    /* renamed from: i, reason: collision with root package name */
    public static final boolean f10793i = true;

    /* renamed from: j, reason: collision with root package name */
    public static final ReferenceQueue f10794j = new ReferenceQueue();

    /* renamed from: k, reason: collision with root package name */
    public static final c0 f10795k = new c0(1);

    /* renamed from: b, reason: collision with root package name */
    public final h f10796b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10797c;
    public final View d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10798e;
    public final Choreographer f;

    /* renamed from: g, reason: collision with root package name */
    public final a1.a f10799g;

    /* renamed from: h, reason: collision with root package name */
    public final Handler f10800h;

    public e(Object obj, int i6, View view) {
        if (obj != null) {
            throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
        }
        this.f10796b = new h(5, this);
        this.f10797c = false;
        f[] fVarArr = new f[i6];
        this.d = view;
        if (Looper.myLooper() == null) {
            throw new IllegalStateException("DataBinding must be created in view's UI Thread");
        }
        if (f10793i) {
            this.f = Choreographer.getInstance();
            this.f10799g = new a1.a(1, this);
        } else {
            this.f10799g = null;
            this.f10800h = new Handler(Looper.myLooper());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void Q(android.view.View r5, java.lang.Object[] r6, android.util.SparseIntArray r7, boolean r8) {
        /*
            r0 = 0
            if (r5 == 0) goto Ld
            r1 = 2131427586(0x7f0b0102, float:1.8476792E38)
            java.lang.Object r1 = r5.getTag(r1)
            w0.e r1 = (w0.e) r1
            goto Le
        Ld:
            r1 = r0
        Le:
            if (r1 == 0) goto L11
            return
        L11:
            java.lang.Object r1 = r5.getTag()
            boolean r2 = r1 instanceof java.lang.String
            if (r2 == 0) goto L1c
            r0 = r1
            java.lang.String r0 = (java.lang.String) r0
        L1c:
            r1 = 0
            if (r8 == 0) goto L65
            if (r0 == 0) goto L65
            java.lang.String r8 = "layout"
            boolean r8 = r0.startsWith(r8)
            if (r8 == 0) goto L65
            r8 = 95
            int r8 = r0.lastIndexOf(r8)
            if (r8 <= 0) goto L8b
            int r8 = r8 + 1
            int r2 = r0.length()
            if (r2 != r8) goto L3a
            goto L8b
        L3a:
            r3 = r8
        L3b:
            if (r3 >= r2) goto L4b
            char r4 = r0.charAt(r3)
            boolean r4 = java.lang.Character.isDigit(r4)
            if (r4 != 0) goto L48
            goto L8b
        L48:
            int r3 = r3 + 1
            goto L3b
        L4b:
            int r2 = r0.length()
            r3 = 0
        L50:
            if (r8 >= r2) goto L5e
            int r3 = r3 * 10
            char r4 = r0.charAt(r8)
            int r4 = r4 + (-48)
            int r3 = r3 + r4
            int r8 = r8 + 1
            goto L50
        L5e:
            r8 = r6[r3]
            if (r8 != 0) goto La0
            r6[r3] = r5
            goto La0
        L65:
            if (r0 == 0) goto L8b
            java.lang.String r8 = "binding_"
            boolean r8 = r0.startsWith(r8)
            if (r8 == 0) goto L8b
            int r8 = r0.length()
            r2 = 8
            r3 = 0
        L76:
            if (r2 >= r8) goto L84
            int r3 = r3 * 10
            char r4 = r0.charAt(r2)
            int r4 = r4 + (-48)
            int r3 = r3 + r4
            int r2 = r2 + 1
            goto L76
        L84:
            r8 = r6[r3]
            if (r8 != 0) goto La0
            r6[r3] = r5
            goto La0
        L8b:
            int r8 = r5.getId()
            if (r8 <= 0) goto La0
            if (r7 == 0) goto La0
            r0 = -1
            int r8 = r7.get(r8, r0)
            if (r8 < 0) goto La0
            r0 = r6[r8]
            if (r0 != 0) goto La0
            r6[r8] = r5
        La0:
            boolean r8 = r5 instanceof android.view.ViewGroup
            if (r8 == 0) goto Lb7
            android.view.ViewGroup r5 = (android.view.ViewGroup) r5
            int r8 = r5.getChildCount()
            r0 = 0
        Lab:
            if (r0 >= r8) goto Lb7
            android.view.View r2 = r5.getChildAt(r0)
            Q(r2, r6, r7, r1)
            int r0 = r0 + 1
            goto Lab
        Lb7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: w0.e.Q(android.view.View, java.lang.Object[], android.util.SparseIntArray, boolean):void");
    }

    public static Object[] R(View view, int i6, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i6];
        Q(view, objArr, sparseIntArray, true);
        return objArr;
    }

    public abstract void O();

    public abstract boolean P();

    public final void S() {
        synchronized (this) {
            try {
                if (this.f10797c) {
                    return;
                }
                this.f10797c = true;
                if (f10793i) {
                    this.f.postFrameCallback(this.f10799g);
                } else {
                    this.f10800h.post(this.f10796b);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void T(View view) {
        view.setTag(R.id.dataBinding, this);
    }
}
