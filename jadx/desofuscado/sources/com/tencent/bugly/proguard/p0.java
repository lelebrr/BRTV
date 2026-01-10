package com.tencent.bugly.proguard;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5938a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5939b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u f5940c;

    public /* synthetic */ p0(u uVar, int i6, int i10) {
        this.f5938a = i10;
        this.f5940c = uVar;
        this.f5939b = i6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        t tVar;
        switch (this.f5938a) {
            case 0:
                u uVar = this.f5940c;
                try {
                    if (TextUtils.isEmpty(uVar.d)) {
                        break;
                    } else {
                        List<t> listD = uVar.d(1004);
                        if (listD == null) {
                            listD = new ArrayList();
                        }
                        if (uVar.f5968e.get(1004) == null) {
                            uVar.f5968e.put(1004, new HashMap());
                        }
                        Object obj = ((Map) uVar.f5968e.get(1004)).get(uVar.d);
                        int i6 = this.f5939b;
                        if (obj == null) {
                            tVar = new t();
                            tVar.f5960a = 1004;
                            tVar.f5964g = u.f5965a;
                            tVar.f5961b = uVar.d;
                            tVar.f = aa.b().f5582o;
                            tVar.f5963e = aa.b().f5575h;
                            tVar.f5962c = System.currentTimeMillis();
                            tVar.d = i6;
                            ((Map) uVar.f5968e.get(1004)).put(uVar.d, tVar);
                        } else {
                            tVar = (t) ((Map) uVar.f5968e.get(1004)).get(uVar.d);
                            tVar.d = i6;
                        }
                        ArrayList arrayList = new ArrayList();
                        boolean z7 = false;
                        for (t tVar2 : listD) {
                            if (u.a(tVar2, tVar)) {
                                tVar2.d = tVar.d;
                                z7 = true;
                            }
                            if (u.b(tVar2, tVar)) {
                                arrayList.add(tVar2);
                            }
                        }
                        listD.removeAll(arrayList);
                        if (!z7) {
                            listD.add(tVar);
                        }
                        uVar.a(1004, (int) listD);
                        break;
                    }
                } catch (Exception unused) {
                    al.e("saveCrashRecord failed", new Object[0]);
                    return;
                }
            default:
                u uVar2 = this.f5940c;
                int i10 = this.f5939b;
                boolean zC = uVar2.c(i10);
                uVar2.f.edit().putBoolean(i10 + "_" + uVar2.d, !zC).commit();
                break;
        }
    }
}
