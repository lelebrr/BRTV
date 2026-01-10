package com.google.android.gms.internal.cast;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4500a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4501b;

    public /* synthetic */ z(int i6, Object obj) {
        this.f4500a = i6;
        this.f4501b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4500a) {
            case 0:
                a0.d.b("get checkbox consent timed out", new Object[0]);
                ((w5.d) this.f4501b).d(Boolean.FALSE);
                return;
            case 1:
                List list = ((r0) this.f4501b).f4400e;
                if (list != null) {
                    list.isEmpty();
                }
                throw null;
            case 2:
                g2 g2Var = (g2) this.f4501b;
                h2 h2Var = g2Var.f4166g;
                if (h2Var != null) {
                    g2Var.f4162a.a((c3) g2Var.f4164c.b(h2Var).a(), 223);
                }
                g2Var.e();
                return;
            default:
                l2 l2Var = (l2) this.f4501b;
                HashSet hashSet = l2Var.f;
                if (hashSet.isEmpty()) {
                    return;
                }
                HashSet hashSet2 = l2Var.f4305g;
                long j10 = true != hashSet2.equals(hashSet) ? 86400000L : 172800000L;
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j11 = l2Var.f4306h;
                if (j11 == 0 || jCurrentTimeMillis - j11 >= j10) {
                    l2.f4298i.b("Upload the feature usage report.", new Object[0]);
                    s2 s2VarL = t2.l();
                    String str = l2.f4299j;
                    s2VarL.c();
                    t2.n((t2) s2VarL.f4117b, str);
                    s2VarL.c();
                    t2.m((t2) s2VarL.f4117b, l2Var.f4303c);
                    t2 t2Var = (t2) s2VarL.a();
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(hashSet);
                    o2 o2VarL = p2.l();
                    o2VarL.c();
                    p2.m((p2) o2VarL.f4117b, arrayList);
                    o2VarL.c();
                    p2.n((p2) o2VarL.f4117b, t2Var);
                    p2 p2Var = (p2) o2VarL.a();
                    b3 b3VarM = c3.m();
                    b3VarM.c();
                    c3.p((c3) b3VarM.f4117b, p2Var);
                    l2Var.f4301a.a((c3) b3VarM.a(), 243);
                    SharedPreferences sharedPreferences = l2Var.f4302b;
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    if (!hashSet2.equals(hashSet)) {
                        hashSet2.clear();
                        hashSet2.addAll(hashSet);
                        Iterator it = hashSet2.iterator();
                        while (it.hasNext()) {
                            String string = Integer.toString(((m2) it.next()).f4352a);
                            String strP = ea.q.p("feature_usage_timestamp_reported_feature_", string);
                            if (!sharedPreferences.contains(strP)) {
                                strP = ea.q.p("feature_usage_timestamp_detected_feature_", string);
                            }
                            String strP2 = ea.q.p("feature_usage_timestamp_reported_feature_", string);
                            if (!TextUtils.equals(strP, strP2)) {
                                long j12 = sharedPreferences.getLong(strP, 0L);
                                editorEdit.remove(strP);
                                if (j12 != 0) {
                                    editorEdit.putLong(strP2, j12);
                                }
                            }
                        }
                    }
                    l2Var.f4306h = jCurrentTimeMillis;
                    editorEdit.putLong("feature_usage_last_report_time", jCurrentTimeMillis).apply();
                    return;
                }
                return;
        }
    }
}
