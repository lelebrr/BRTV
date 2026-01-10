package y2;

import android.graphics.Bitmap;
import android.os.Build;
import ea.q;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import r3.n;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class k {
    public static final Bitmap.Config[] d;

    /* renamed from: e, reason: collision with root package name */
    public static final Bitmap.Config[] f11370e;
    public static final Bitmap.Config[] f;

    /* renamed from: g, reason: collision with root package name */
    public static final Bitmap.Config[] f11371g;

    /* renamed from: h, reason: collision with root package name */
    public static final Bitmap.Config[] f11372h;

    /* renamed from: a, reason: collision with root package name */
    public final e f11373a = new e(1);

    /* renamed from: b, reason: collision with root package name */
    public final l6.h f11374b = new l6.h(12);

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f11375c = new HashMap();

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        d = configArr;
        f11370e = configArr;
        f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f11371g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f11372h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String c(int i6, Bitmap.Config config) {
        return "[" + i6 + "](" + config + ")";
    }

    public final void a(Integer num, Bitmap bitmap) {
        NavigableMap navigableMapD = d(bitmap.getConfig());
        Integer num2 = (Integer) navigableMapD.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapD.remove(num);
                return;
            } else {
                navigableMapD.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + c(n.c(bitmap), bitmap.getConfig()) + ", this: " + this);
    }

    public final Bitmap b(int i6, int i10, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int i11 = 0;
        int iD = n.d(config) * i6 * i10;
        e eVar = this.f11373a;
        h hVarE = (h) ((ArrayDeque) eVar.f6105a).poll();
        if (hVarE == null) {
            hVarE = eVar.e();
        }
        j jVar = (j) hVarE;
        jVar.f11368b = iD;
        jVar.f11369c = config;
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(config)) {
            int i12 = i.f11366a[config.ordinal()];
            configArr = i12 != 1 ? i12 != 2 ? i12 != 3 ? i12 != 4 ? new Bitmap.Config[]{config} : f11372h : f11371g : f : d;
        } else {
            configArr = f11370e;
        }
        int length = configArr.length;
        while (true) {
            if (i11 >= length) {
                break;
            }
            Bitmap.Config config2 = configArr[i11];
            Integer num = (Integer) d(config2).ceilingKey(Integer.valueOf(iD));
            if (num == null || num.intValue() > iD * 8) {
                i11++;
            } else if (num.intValue() != iD || (config2 != null ? !config2.equals(config) : config != null)) {
                eVar.c(jVar);
                int iIntValue = num.intValue();
                Object objE = (h) ((ArrayDeque) eVar.f6105a).poll();
                if (objE == null) {
                    objE = eVar.e();
                }
                jVar = (j) objE;
                jVar.f11368b = iIntValue;
                jVar.f11369c = config2;
            }
        }
        Bitmap bitmap = (Bitmap) this.f11374b.h(jVar);
        if (bitmap != null) {
            a(Integer.valueOf(jVar.f11368b), bitmap);
            bitmap.reconfigure(i6, i10, config);
        }
        return bitmap;
    }

    public final NavigableMap d(Bitmap.Config config) {
        HashMap map = this.f11375c;
        NavigableMap navigableMap = (NavigableMap) map.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(config, treeMap);
        return treeMap;
    }

    public final void e(Bitmap bitmap) {
        int iC = n.c(bitmap);
        Bitmap.Config config = bitmap.getConfig();
        e eVar = this.f11373a;
        h hVarE = (h) ((ArrayDeque) eVar.f6105a).poll();
        if (hVarE == null) {
            hVarE = eVar.e();
        }
        j jVar = (j) hVarE;
        jVar.f11368b = iC;
        jVar.f11369c = config;
        this.f11374b.p(jVar, bitmap);
        NavigableMap navigableMapD = d(bitmap.getConfig());
        Integer num = (Integer) navigableMapD.get(Integer.valueOf(jVar.f11368b));
        navigableMapD.put(Integer.valueOf(jVar.f11368b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public final String toString() {
        StringBuilder sbM = q.m("SizeConfigStrategy{groupedMap=");
        sbM.append(this.f11374b);
        sbM.append(", sortedSizes=(");
        HashMap map = this.f11375c;
        for (Map.Entry entry : map.entrySet()) {
            sbM.append(entry.getKey());
            sbM.append('[');
            sbM.append(entry.getValue());
            sbM.append("], ");
        }
        if (!map.isEmpty()) {
            sbM.replace(sbM.length() - 2, sbM.length(), "");
        }
        sbM.append(")}");
        return sbM.toString();
    }
}
