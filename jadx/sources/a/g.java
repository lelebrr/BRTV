package a;

import android.content.Intent;
import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.a0;
import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public Random f8a = new Random();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f9b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f10c = new HashMap();
    public final HashMap d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f11e = new ArrayList();
    public final transient HashMap f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f12g = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    public final Bundle f13h = new Bundle();

    public g(ComponentActivity componentActivity) {
    }

    public final boolean a(int i6, int i10, Intent intent) {
        String str = (String) this.f9b.get(Integer.valueOf(i6));
        if (str == null) {
            return false;
        }
        c.a aVar = (c.a) this.f.get(str);
        if (aVar != null) {
            a0 a0Var = aVar.f3329a;
            if (this.f11e.contains(str)) {
                a0Var.a(aVar.f3330b.J(intent, i10));
                this.f11e.remove(str);
                return true;
            }
        }
        this.f12g.remove(str);
        this.f13h.putParcelable(str, new ActivityResult(intent, i10));
        return true;
    }

    public final a7.f b(String str, a2.a aVar, a0 a0Var) {
        int i6;
        HashMap map;
        HashMap map2 = this.f10c;
        if (((Integer) map2.get(str)) == null) {
            int iNextInt = this.f8a.nextInt(2147418112);
            while (true) {
                i6 = iNextInt + C.DEFAULT_BUFFER_SEGMENT_SIZE;
                map = this.f9b;
                if (!map.containsKey(Integer.valueOf(i6))) {
                    break;
                }
                iNextInt = this.f8a.nextInt(2147418112);
            }
            map.put(Integer.valueOf(i6), str);
            map2.put(str, Integer.valueOf(i6));
        }
        this.f.put(str, new c.a(a0Var, aVar));
        HashMap map3 = this.f12g;
        if (map3.containsKey(str)) {
            Object obj = map3.get(str);
            map3.remove(str);
            a0Var.a(obj);
        }
        Bundle bundle = this.f13h;
        ActivityResult activityResult = (ActivityResult) bundle.getParcelable(str);
        if (activityResult != null) {
            bundle.remove(str);
            a0Var.a(aVar.J(activityResult.f209b, activityResult.f208a));
        }
        return new a7.f(this, str, aVar);
    }
}
