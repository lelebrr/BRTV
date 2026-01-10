package u7;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final c[] f10441a;

    /* renamed from: b, reason: collision with root package name */
    public final x7.a f10442b;

    /* renamed from: c, reason: collision with root package name */
    public final s2.c f10443c;
    public final e d;

    /* renamed from: e, reason: collision with root package name */
    public volatile e f10444e;

    public a(c[] cVarArr) {
        e eVar = e.f10448a;
        this.f10443c = new s2.c(5);
        this.f10444e = null;
        this.f10444e = eVar;
        this.f10441a = (c[]) cVarArr.clone();
        x7.a aVar = new x7.a(256, 1.0f, true);
        aVar.f11088a = 256;
        this.f10442b = aVar;
        e eVar2 = new e();
        new AtomicInteger();
        this.d = eVar2;
    }

    public static f[] a(f[] fVarArr) {
        String str;
        if (fVarArr == null || fVarArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(fVarArr.length);
        for (f fVar : fVarArr) {
            if (fVar != null && (str = fVar.f10449a) != null && str.length() > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                int i6 = fVar.f10451c;
                if (i6 == -1 || fVar.d + i6 >= jCurrentTimeMillis) {
                    arrayList.add(fVar);
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return (f[]) arrayList.toArray(new f[arrayList.size()]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x007f, code lost:
    
        if (r11.charAt(r11.length() - 1) == '.') goto L33;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final u7.f[] b(java.lang.String r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 546
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: u7.a.b(java.lang.String):u7.f[]");
    }
}
