package s2;

import java.io.File;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f9735a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f9736b;

    /* renamed from: c, reason: collision with root package name */
    public final File[] f9737c;
    public final File[] d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f9738e;
    public e2.c f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ d f9739g;

    public b(d dVar, String str) {
        this.f9739g = dVar;
        this.f9735a = str;
        int i6 = dVar.f9750g;
        this.f9736b = new long[i6];
        this.f9737c = new File[i6];
        this.d = new File[i6];
        StringBuilder sb = new StringBuilder(str);
        sb.append('.');
        int length = sb.length();
        for (int i10 = 0; i10 < dVar.f9750g; i10++) {
            sb.append(i10);
            File[] fileArr = this.f9737c;
            String string = sb.toString();
            File file = dVar.f9746a;
            fileArr[i10] = new File(file, string);
            sb.append(".tmp");
            this.d[i10] = new File(file, sb.toString());
            sb.setLength(length);
        }
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        for (long j10 : this.f9736b) {
            sb.append(' ');
            sb.append(j10);
        }
        return sb.toString();
    }
}
