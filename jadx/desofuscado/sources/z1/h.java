package z1;

import android.graphics.Matrix;
import android.graphics.Paint;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class h extends i {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f11466a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f11467b;

    /* renamed from: c, reason: collision with root package name */
    public float f11468c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f11469e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f11470g;

    /* renamed from: h, reason: collision with root package name */
    public float f11471h;

    /* renamed from: i, reason: collision with root package name */
    public float f11472i;

    /* renamed from: j, reason: collision with root package name */
    public final Matrix f11473j;

    /* renamed from: k, reason: collision with root package name */
    public String f11474k;

    public h() {
        this.f11466a = new Matrix();
        this.f11467b = new ArrayList();
        this.f11468c = 0.0f;
        this.d = 0.0f;
        this.f11469e = 0.0f;
        this.f = 1.0f;
        this.f11470g = 1.0f;
        this.f11471h = 0.0f;
        this.f11472i = 0.0f;
        this.f11473j = new Matrix();
        this.f11474k = null;
    }

    @Override // z1.i
    public final boolean a() {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f11467b;
            if (i6 >= arrayList.size()) {
                return false;
            }
            if (((i) arrayList.get(i6)).a()) {
                return true;
            }
            i6++;
        }
    }

    @Override // z1.i
    public final boolean b(int[] iArr) {
        int i6 = 0;
        boolean zB = false;
        while (true) {
            ArrayList arrayList = this.f11467b;
            if (i6 >= arrayList.size()) {
                return zB;
            }
            zB |= ((i) arrayList.get(i6)).b(iArr);
            i6++;
        }
    }

    public final void c() {
        Matrix matrix = this.f11473j;
        matrix.reset();
        matrix.postTranslate(-this.d, -this.f11469e);
        matrix.postScale(this.f, this.f11470g);
        matrix.postRotate(this.f11468c, 0.0f, 0.0f);
        matrix.postTranslate(this.f11471h + this.d, this.f11472i + this.f11469e);
    }

    public String getGroupName() {
        return this.f11474k;
    }

    public Matrix getLocalMatrix() {
        return this.f11473j;
    }

    public float getPivotX() {
        return this.d;
    }

    public float getPivotY() {
        return this.f11469e;
    }

    public float getRotation() {
        return this.f11468c;
    }

    public float getScaleX() {
        return this.f;
    }

    public float getScaleY() {
        return this.f11470g;
    }

    public float getTranslateX() {
        return this.f11471h;
    }

    public float getTranslateY() {
        return this.f11472i;
    }

    public void setPivotX(float f) {
        if (f != this.d) {
            this.d = f;
            c();
        }
    }

    public void setPivotY(float f) {
        if (f != this.f11469e) {
            this.f11469e = f;
            c();
        }
    }

    public void setRotation(float f) {
        if (f != this.f11468c) {
            this.f11468c = f;
            c();
        }
    }

    public void setScaleX(float f) {
        if (f != this.f) {
            this.f = f;
            c();
        }
    }

    public void setScaleY(float f) {
        if (f != this.f11470g) {
            this.f11470g = f;
            c();
        }
    }

    public void setTranslateX(float f) {
        if (f != this.f11471h) {
            this.f11471h = f;
            c();
        }
    }

    public void setTranslateY(float f) {
        if (f != this.f11472i) {
            this.f11472i = f;
            c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(h hVar, p.e eVar) {
        f fVar;
        this.f11466a = new Matrix();
        this.f11467b = new ArrayList();
        this.f11468c = 0.0f;
        this.d = 0.0f;
        this.f11469e = 0.0f;
        this.f = 1.0f;
        this.f11470g = 1.0f;
        this.f11471h = 0.0f;
        this.f11472i = 0.0f;
        Matrix matrix = new Matrix();
        this.f11473j = matrix;
        this.f11474k = null;
        this.f11468c = hVar.f11468c;
        this.d = hVar.d;
        this.f11469e = hVar.f11469e;
        this.f = hVar.f;
        this.f11470g = hVar.f11470g;
        this.f11471h = hVar.f11471h;
        this.f11472i = hVar.f11472i;
        String str = hVar.f11474k;
        this.f11474k = str;
        if (str != null) {
            eVar.put(str, this);
        }
        matrix.set(hVar.f11473j);
        ArrayList arrayList = hVar.f11467b;
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            Object obj = arrayList.get(i6);
            if (obj instanceof h) {
                this.f11467b.add(new h((h) obj, eVar));
            } else {
                if (obj instanceof g) {
                    g gVar = (g) obj;
                    g gVar2 = new g(gVar);
                    gVar2.f11457e = 0.0f;
                    gVar2.f11458g = 1.0f;
                    gVar2.f11459h = 1.0f;
                    gVar2.f11460i = 0.0f;
                    gVar2.f11461j = 1.0f;
                    gVar2.f11462k = 0.0f;
                    gVar2.f11463l = Paint.Cap.BUTT;
                    gVar2.f11464m = Paint.Join.MITER;
                    gVar2.f11465n = 4.0f;
                    gVar2.d = gVar.d;
                    gVar2.f11457e = gVar.f11457e;
                    gVar2.f11458g = gVar.f11458g;
                    gVar2.f = gVar.f;
                    gVar2.f11477c = gVar.f11477c;
                    gVar2.f11459h = gVar.f11459h;
                    gVar2.f11460i = gVar.f11460i;
                    gVar2.f11461j = gVar.f11461j;
                    gVar2.f11462k = gVar.f11462k;
                    gVar2.f11463l = gVar.f11463l;
                    gVar2.f11464m = gVar.f11464m;
                    gVar2.f11465n = gVar.f11465n;
                    fVar = gVar2;
                } else if (obj instanceof f) {
                    fVar = new f((f) obj);
                } else {
                    throw new IllegalStateException("Unknown object in the tree!");
                }
                this.f11467b.add(fVar);
                Object obj2 = fVar.f11476b;
                if (obj2 != null) {
                    eVar.put(obj2, fVar);
                }
            }
        }
    }
}
