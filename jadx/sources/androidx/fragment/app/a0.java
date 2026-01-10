package androidx.fragment.app;

import android.util.Log;
import androidx.activity.result.ActivityResult;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1427a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j0 f1428b;

    public /* synthetic */ a0(j0 j0Var, int i6) {
        this.f1427a = i6;
        this.f1428b = j0Var;
    }

    public final void a(Object obj) {
        switch (this.f1427a) {
            case 0:
                ActivityResult activityResult = (ActivityResult) obj;
                j0 j0Var = this.f1428b;
                FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo = (FragmentManager$LaunchedFragmentInfo) j0Var.f1477w.pollFirst();
                if (fragmentManager$LaunchedFragmentInfo == null) {
                    Log.w("FragmentManager", "No IntentSenders were started for " + this);
                    break;
                } else {
                    a1.b bVar = j0Var.f1459c;
                    String str = fragmentManager$LaunchedFragmentInfo.f1387a;
                    s sVarM = bVar.m(str);
                    if (sVarM == null) {
                        Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
                        break;
                    } else {
                        sVarM.p(fragmentManager$LaunchedFragmentInfo.f1388b, activityResult.f208a, activityResult.f209b);
                        break;
                    }
                }
            case 1:
                Map map = (Map) obj;
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i6 = 0; i6 < arrayList.size(); i6++) {
                    iArr[i6] = ((Boolean) arrayList.get(i6)).booleanValue() ? 0 : -1;
                }
                j0 j0Var2 = this.f1428b;
                FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo2 = (FragmentManager$LaunchedFragmentInfo) j0Var2.f1477w.pollFirst();
                if (fragmentManager$LaunchedFragmentInfo2 == null) {
                    Log.w("FragmentManager", "No permissions were requested for " + this);
                    break;
                } else {
                    a1.b bVar2 = j0Var2.f1459c;
                    String str2 = fragmentManager$LaunchedFragmentInfo2.f1387a;
                    if (bVar2.m(str2) == null) {
                        Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str2);
                        break;
                    }
                }
                break;
            default:
                ActivityResult activityResult2 = (ActivityResult) obj;
                j0 j0Var3 = this.f1428b;
                FragmentManager$LaunchedFragmentInfo fragmentManager$LaunchedFragmentInfo3 = (FragmentManager$LaunchedFragmentInfo) j0Var3.f1477w.pollFirst();
                if (fragmentManager$LaunchedFragmentInfo3 == null) {
                    Log.w("FragmentManager", "No Activities were started for result for " + this);
                    break;
                } else {
                    a1.b bVar3 = j0Var3.f1459c;
                    String str3 = fragmentManager$LaunchedFragmentInfo3.f1387a;
                    s sVarM2 = bVar3.m(str3);
                    if (sVarM2 == null) {
                        Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str3);
                        break;
                    } else {
                        sVarM2.p(fragmentManager$LaunchedFragmentInfo3.f1388b, activityResult2.f208a, activityResult2.f209b);
                        break;
                    }
                }
        }
    }
}
