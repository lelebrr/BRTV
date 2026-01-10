package androidx.fragment.app;

import android.content.Intent;
import androidx.activity.result.ActivityResult;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f0 extends a2.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1447b;

    public /* synthetic */ f0(int i6) {
        this.f1447b = i6;
    }

    @Override // a2.a
    public final Object J(Intent intent, int i6) {
        switch (this.f1447b) {
            case 0:
                return new ActivityResult(intent, i6);
            case 1:
                x8.s sVar = x8.s.f11099a;
                if (i6 != -1 || intent == null) {
                    return sVar;
                }
                String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                if (intArrayExtra == null || stringArrayExtra == null) {
                    return sVar;
                }
                ArrayList arrayList = new ArrayList(intArrayExtra.length);
                for (int i10 : intArrayExtra) {
                    arrayList.add(Boolean.valueOf(i10 == 0));
                }
                ArrayList arrayListJ = x8.i.J(stringArrayExtra);
                Iterator it = arrayListJ.iterator();
                Iterator it2 = arrayList.iterator();
                ArrayList arrayList2 = new ArrayList(Math.min(x8.l.Q(arrayListJ), x8.l.Q(arrayList)));
                while (it.hasNext() && it2.hasNext()) {
                    arrayList2.add(new w8.f(it.next(), it2.next()));
                }
                return x8.u.q(arrayList2);
            default:
                return new ActivityResult(intent, i6);
        }
    }
}
