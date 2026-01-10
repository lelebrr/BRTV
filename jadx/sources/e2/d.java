package e2;

import java.io.IOException;
import java.util.ArrayList;
import okio.Path;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final String f6451a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f6452b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f6453c;
    public final ArrayList d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6454e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public c f6455g;

    /* renamed from: h, reason: collision with root package name */
    public int f6456h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ h f6457i;

    public d(h hVar, String str) {
        this.f6457i = hVar;
        this.f6451a = str;
        hVar.getClass();
        this.f6452b = new long[2];
        this.f6453c = new ArrayList(2);
        this.d = new ArrayList(2);
        StringBuilder sb = new StringBuilder(str);
        sb.append('.');
        int length = sb.length();
        for (int i6 = 0; i6 < 2; i6++) {
            sb.append(i6);
            this.f6453c.add(this.f6457i.f6463a.resolve(sb.toString()));
            sb.append(".tmp");
            this.d.add(this.f6457i.f6463a.resolve(sb.toString()));
            sb.setLength(length);
        }
    }

    public final e a() {
        if (!this.f6454e || this.f6455g != null || this.f) {
            return null;
        }
        ArrayList arrayList = this.f6453c;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            h hVar = this.f6457i;
            if (i6 >= size) {
                this.f6456h++;
                return new e(hVar, this);
            }
            if (!hVar.f6476p.exists((Path) arrayList.get(i6))) {
                try {
                    hVar.i(this);
                } catch (IOException unused) {
                }
                return null;
            }
            i6++;
        }
    }
}
