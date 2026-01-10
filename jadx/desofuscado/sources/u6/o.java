package u6;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.BitSet;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final w[] f10411a = new w[4];

    /* renamed from: b, reason: collision with root package name */
    public final Matrix[] f10412b = new Matrix[4];

    /* renamed from: c, reason: collision with root package name */
    public final Matrix[] f10413c = new Matrix[4];
    public final PointF d = new PointF();

    /* renamed from: e, reason: collision with root package name */
    public final Path f10414e = new Path();
    public final Path f = new Path();

    /* renamed from: g, reason: collision with root package name */
    public final w f10415g = new w();

    /* renamed from: h, reason: collision with root package name */
    public final float[] f10416h = new float[2];

    /* renamed from: i, reason: collision with root package name */
    public final float[] f10417i = new float[2];

    /* renamed from: j, reason: collision with root package name */
    public final Path f10418j = new Path();

    /* renamed from: k, reason: collision with root package name */
    public final Path f10419k = new Path();

    /* renamed from: l, reason: collision with root package name */
    public final boolean f10420l = true;

    public o() {
        for (int i6 = 0; i6 < 4; i6++) {
            this.f10411a[i6] = new w();
            this.f10412b[i6] = new Matrix();
            this.f10413c[i6] = new Matrix();
        }
    }

    public final void a(m mVar, float f, RectF rectF, s2.c cVar, Path path) {
        Matrix[] matrixArr;
        Matrix[] matrixArr2;
        w[] wVarArr;
        int i6;
        float[] fArr;
        Path path2;
        Path path3;
        o oVar = this;
        m mVar2 = mVar;
        s2.c cVar2 = cVar;
        path.rewind();
        Path path4 = oVar.f10414e;
        path4.rewind();
        Path path5 = oVar.f;
        path5.rewind();
        path5.addRect(rectF, Path.Direction.CW);
        int i10 = 0;
        while (true) {
            matrixArr = oVar.f10413c;
            matrixArr2 = oVar.f10412b;
            wVarArr = oVar.f10411a;
            fArr = oVar.f10416h;
            if (i10 >= 4) {
                break;
            }
            c cVar3 = i10 != 1 ? i10 != 2 ? i10 != 3 ? mVar2.f : mVar2.f10403e : mVar2.f10405h : mVar2.f10404g;
            n5.d dVar = i10 != 1 ? i10 != 2 ? i10 != 3 ? mVar2.f10401b : mVar2.f10400a : mVar2.d : mVar2.f10402c;
            w wVar = wVarArr[i10];
            dVar.getClass();
            dVar.u(wVar, f, cVar3.a(rectF));
            int i11 = i10 + 1;
            float f3 = i11 * 90;
            matrixArr2[i10].reset();
            PointF pointF = oVar.d;
            if (i10 == 1) {
                path3 = path4;
                pointF.set(rectF.right, rectF.bottom);
            } else if (i10 == 2) {
                path3 = path4;
                pointF.set(rectF.left, rectF.bottom);
            } else if (i10 != 3) {
                path3 = path4;
                pointF.set(rectF.right, rectF.top);
            } else {
                path3 = path4;
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i10].setTranslate(pointF.x, pointF.y);
            matrixArr2[i10].preRotate(f3);
            w wVar2 = wVarArr[i10];
            fArr[0] = wVar2.f10437c;
            fArr[1] = wVar2.d;
            matrixArr2[i10].mapPoints(fArr);
            matrixArr[i10].reset();
            matrixArr[i10].setTranslate(fArr[0], fArr[1]);
            matrixArr[i10].preRotate(f3);
            i10 = i11;
            path4 = path3;
        }
        Path path6 = path4;
        int i12 = 0;
        for (i6 = 4; i12 < i6; i6 = 4) {
            w wVar3 = wVarArr[i12];
            fArr[0] = wVar3.f10435a;
            fArr[1] = wVar3.f10436b;
            matrixArr2[i12].mapPoints(fArr);
            if (i12 == 0) {
                path.moveTo(fArr[0], fArr[1]);
            } else {
                path.lineTo(fArr[0], fArr[1]);
            }
            wVarArr[i12].c(matrixArr2[i12], path);
            if (cVar2 != null) {
                w wVar4 = wVarArr[i12];
                Matrix matrix = matrixArr2[i12];
                h hVar = (h) cVar2.f9745b;
                BitSet bitSet = hVar.d;
                wVar4.getClass();
                bitSet.set(i12, false);
                wVar4.b(wVar4.f);
                hVar.f10368b[i12] = new p(new ArrayList(wVar4.f10440h), new Matrix(matrix));
            }
            int i13 = i12 + 1;
            int i14 = i13 % 4;
            w wVar5 = wVarArr[i12];
            fArr[0] = wVar5.f10437c;
            fArr[1] = wVar5.d;
            matrixArr2[i12].mapPoints(fArr);
            w wVar6 = wVarArr[i14];
            float f4 = wVar6.f10435a;
            float[] fArr2 = oVar.f10417i;
            fArr2[0] = f4;
            fArr2[1] = wVar6.f10436b;
            matrixArr2[i14].mapPoints(fArr2);
            float fMax = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
            w wVar7 = wVarArr[i12];
            fArr[0] = wVar7.f10437c;
            fArr[1] = wVar7.d;
            matrixArr2[i12].mapPoints(fArr);
            float fAbs = (i12 == 1 || i12 == 3) ? Math.abs(rectF.centerX() - fArr[0]) : Math.abs(rectF.centerY() - fArr[1]);
            w wVar8 = oVar.f10415g;
            wVar8.e(0.0f, 0.0f, 270.0f, 0.0f);
            e eVar = i12 != 1 ? i12 != 2 ? i12 != 3 ? mVar2.f10407j : mVar2.f10406i : mVar2.f10409l : mVar2.f10408k;
            eVar.g(fMax, fAbs, f, wVar8);
            Path path7 = oVar.f10418j;
            path7.reset();
            wVar8.c(matrixArr[i12], path7);
            if (oVar.f10420l && (eVar.d() || oVar.b(path7, i12) || oVar.b(path7, i14))) {
                path7.op(path7, path5, Path.Op.DIFFERENCE);
                fArr[0] = wVar8.f10435a;
                fArr[1] = wVar8.f10436b;
                matrixArr[i12].mapPoints(fArr);
                path2 = path6;
                path2.moveTo(fArr[0], fArr[1]);
                wVar8.c(matrixArr[i12], path2);
            } else {
                path2 = path6;
                wVar8.c(matrixArr[i12], path);
            }
            if (cVar != null) {
                Matrix matrix2 = matrixArr[i12];
                h hVar2 = (h) cVar.f9745b;
                hVar2.d.set(i12 + 4, false);
                wVar8.b(wVar8.f);
                hVar2.f10369c[i12] = new p(new ArrayList(wVar8.f10440h), new Matrix(matrix2));
            }
            oVar = this;
            mVar2 = mVar;
            cVar2 = cVar;
            path6 = path2;
            i12 = i13;
        }
        Path path8 = path6;
        path.close();
        path8.close();
        if (path8.isEmpty()) {
            return;
        }
        path.op(path8, Path.Op.UNION);
    }

    public final boolean b(Path path, int i6) {
        Path path2 = this.f10419k;
        path2.reset();
        this.f10411a[i6].c(this.f10412b[i6], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }
}
