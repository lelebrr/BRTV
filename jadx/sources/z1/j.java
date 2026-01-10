package z1;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class j extends i {

    /* renamed from: a, reason: collision with root package name */
    public f0.f[] f11475a;

    /* renamed from: b, reason: collision with root package name */
    public String f11476b;

    /* renamed from: c, reason: collision with root package name */
    public int f11477c;

    public j() {
        this.f11475a = null;
        this.f11477c = 0;
    }

    public f0.f[] getPathData() {
        return this.f11475a;
    }

    public String getPathName() {
        return this.f11476b;
    }

    public void setPathData(f0.f[] fVarArr) {
        if (!com.bumptech.glide.d.a(this.f11475a, fVarArr)) {
            this.f11475a = com.bumptech.glide.d.h(fVarArr);
            return;
        }
        f0.f[] fVarArr2 = this.f11475a;
        for (int i6 = 0; i6 < fVarArr.length; i6++) {
            fVarArr2[i6].f6758a = fVarArr[i6].f6758a;
            int i10 = 0;
            while (true) {
                float[] fArr = fVarArr[i6].f6759b;
                if (i10 < fArr.length) {
                    fVarArr2[i6].f6759b[i10] = fArr[i10];
                    i10++;
                }
            }
        }
    }

    public j(j jVar) {
        this.f11475a = null;
        this.f11477c = 0;
        this.f11476b = jVar.f11476b;
        this.f11475a = com.bumptech.glide.d.h(jVar.f11475a);
    }
}
