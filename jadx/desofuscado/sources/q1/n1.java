package q1;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n1 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9082a;

    /* renamed from: b, reason: collision with root package name */
    public final h f9083b;
    public final PackageManager d;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9086g;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f9085e = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final androidx.appcompat.app.b0 f9087h = new androidx.appcompat.app.b0(3, this);

    /* renamed from: i, reason: collision with root package name */
    public final a.f f9088i = new a.f(29, this);

    /* renamed from: c, reason: collision with root package name */
    public final Handler f9084c = new Handler();

    public n1(Context context, h hVar) {
        this.f9082a = context;
        this.f9083b = hVar;
        this.d = context.getPackageManager();
    }

    public final void a() {
        ArrayList arrayList;
        h hVar;
        int i6;
        if (this.f9086g) {
            ArrayList<ServiceInfo> arrayList2 = new ArrayList();
            int i10 = Build.VERSION.SDK_INT;
            Context context = this.f9082a;
            PackageManager packageManager = this.d;
            if (i10 >= 30) {
                Intent intent = new Intent("android.media.MediaRoute2ProviderService");
                ArrayList arrayList3 = new ArrayList();
                Iterator<ResolveInfo> it = packageManager.queryIntentServices(intent, 0).iterator();
                while (it.hasNext()) {
                    ServiceInfo serviceInfo = it.next().serviceInfo;
                    if (!this.f || TextUtils.equals(context.getPackageName(), serviceInfo.packageName)) {
                        arrayList3.add(serviceInfo);
                    }
                }
                arrayList2 = arrayList3;
            }
            Iterator<ResolveInfo> it2 = packageManager.queryIntentServices(new Intent("android.media.MediaRouteProviderService"), 0).iterator();
            int i11 = 0;
            while (true) {
                boolean zHasNext = it2.hasNext();
                arrayList = this.f9085e;
                boolean z7 = true;
                hVar = this.f9083b;
                if (!zHasNext) {
                    break;
                }
                ServiceInfo serviceInfo2 = it2.next().serviceInfo;
                if (serviceInfo2 != null) {
                    if ((u0.f9159c == null ? false : u0.c().h()) && !arrayList2.isEmpty()) {
                        for (ServiceInfo serviceInfo3 : arrayList2) {
                            if (!serviceInfo2.packageName.equals(serviceInfo3.packageName) || !serviceInfo2.name.equals(serviceInfo3.name)) {
                            }
                        }
                    }
                    String str = serviceInfo2.packageName;
                    String str2 = serviceInfo2.name;
                    int size = arrayList.size();
                    int i12 = 0;
                    while (true) {
                        if (i12 >= size) {
                            i12 = -1;
                            break;
                        }
                        ComponentName componentName = ((m1) arrayList.get(i12)).f9068i;
                        if (componentName.getPackageName().equals(str) && componentName.getClassName().equals(str2)) {
                            break;
                        } else {
                            i12++;
                        }
                    }
                    if (i12 < 0) {
                        m1 m1Var = new m1(context, new ComponentName(serviceInfo2.packageName, serviceInfo2.name));
                        m1Var.f9075p = new androidx.media3.common.x(this, m1Var);
                        if (!m1Var.f9071l) {
                            m1Var.f9071l = true;
                            m1Var.l();
                        }
                        i6 = i11 + 1;
                        arrayList.add(i11, m1Var);
                        hVar.a(m1Var, false);
                    } else if (i12 >= i11) {
                        m1 m1Var2 = (m1) arrayList.get(i12);
                        if (!m1Var2.f9071l) {
                            m1Var2.f9071l = true;
                            m1Var2.l();
                        }
                        if (m1Var2.f9073n == null) {
                            if (!m1Var2.f9071l || (m1Var2.f8959e == null && m1Var2.f9070k.isEmpty())) {
                                z7 = false;
                            }
                            if (z7) {
                                m1Var2.k();
                                m1Var2.h();
                            }
                        }
                        i6 = i11 + 1;
                        Collections.swap(arrayList, i12, i11);
                    }
                    i11 = i6;
                }
            }
            if (i11 < arrayList.size()) {
                for (int size2 = arrayList.size() - 1; size2 >= i11; size2--) {
                    m1 m1Var3 = (m1) arrayList.get(size2);
                    r0 r0VarD = hVar.d(m1Var3);
                    if (r0VarD != null) {
                        m1Var3.getClass();
                        u0.b();
                        m1Var3.d = null;
                        m1Var3.g(null);
                        hVar.n(r0VarD, null);
                        hVar.f8986a.b(514, r0VarD);
                        hVar.f8995l.remove(r0VarD);
                    }
                    arrayList.remove(m1Var3);
                    m1Var3.f9075p = null;
                    if (m1Var3.f9071l) {
                        m1Var3.f9071l = false;
                        m1Var3.l();
                    }
                }
            }
        }
    }
}
