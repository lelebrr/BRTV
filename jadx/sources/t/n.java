package t;

import android.util.Log;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public int f9952c;

    /* renamed from: a, reason: collision with root package name */
    public float f9950a = 1.0f;

    /* renamed from: b, reason: collision with root package name */
    public int f9951b = 0;
    public float d = 0.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f9953e = 0.0f;
    public float f = 0.0f;

    /* renamed from: g, reason: collision with root package name */
    public float f9954g = 0.0f;

    /* renamed from: h, reason: collision with root package name */
    public float f9955h = 1.0f;

    /* renamed from: i, reason: collision with root package name */
    public float f9956i = 1.0f;

    /* renamed from: j, reason: collision with root package name */
    public float f9957j = Float.NaN;

    /* renamed from: k, reason: collision with root package name */
    public float f9958k = Float.NaN;

    /* renamed from: l, reason: collision with root package name */
    public float f9959l = 0.0f;

    /* renamed from: m, reason: collision with root package name */
    public float f9960m = 0.0f;

    /* renamed from: n, reason: collision with root package name */
    public float f9961n = 0.0f;

    /* renamed from: o, reason: collision with root package name */
    public float f9962o = Float.NaN;

    /* renamed from: p, reason: collision with root package name */
    public float f9963p = Float.NaN;

    /* renamed from: q, reason: collision with root package name */
    public final LinkedHashMap f9964q = new LinkedHashMap();

    public static boolean b(float f, float f3) {
        return (Float.isNaN(f) || Float.isNaN(f3)) ? Float.isNaN(f) != Float.isNaN(f3) : Math.abs(f - f3) > 1.0E-6f;
    }

    public final void a(HashMap map, int i6) {
        h0 h0Var;
        for (String str : map.keySet()) {
            h0Var = (h0) map.get(str);
            str.getClass();
            switch (str) {
                case "rotationX":
                    h0Var.b(i6, Float.isNaN(this.f) ? 0.0f : this.f);
                    break;
                case "rotationY":
                    h0Var.b(i6, Float.isNaN(this.f9954g) ? 0.0f : this.f9954g);
                    break;
                case "translationX":
                    h0Var.b(i6, Float.isNaN(this.f9959l) ? 0.0f : this.f9959l);
                    break;
                case "translationY":
                    h0Var.b(i6, Float.isNaN(this.f9960m) ? 0.0f : this.f9960m);
                    break;
                case "translationZ":
                    h0Var.b(i6, Float.isNaN(this.f9961n) ? 0.0f : this.f9961n);
                    break;
                case "progress":
                    h0Var.b(i6, Float.isNaN(this.f9963p) ? 0.0f : this.f9963p);
                    break;
                case "scaleX":
                    h0Var.b(i6, Float.isNaN(this.f9955h) ? 1.0f : this.f9955h);
                    break;
                case "scaleY":
                    h0Var.b(i6, Float.isNaN(this.f9956i) ? 1.0f : this.f9956i);
                    break;
                case "transformPivotX":
                    h0Var.b(i6, Float.isNaN(this.f9957j) ? 0.0f : this.f9957j);
                    break;
                case "transformPivotY":
                    h0Var.b(i6, Float.isNaN(this.f9958k) ? 0.0f : this.f9958k);
                    break;
                case "rotation":
                    h0Var.b(i6, Float.isNaN(this.f9953e) ? 0.0f : this.f9953e);
                    break;
                case "elevation":
                    h0Var.b(i6, Float.isNaN(this.d) ? 0.0f : this.d);
                    break;
                case "transitionPathRotate":
                    h0Var.b(i6, Float.isNaN(this.f9962o) ? 0.0f : this.f9962o);
                    break;
                case "alpha":
                    h0Var.b(i6, Float.isNaN(this.f9950a) ? 1.0f : this.f9950a);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        LinkedHashMap linkedHashMap = this.f9964q;
                        if (linkedHashMap.containsKey(str2)) {
                            y.a aVar = (y.a) linkedHashMap.get(str2);
                            if (h0Var instanceof e0) {
                                ((e0) h0Var).f.append(i6, aVar);
                                break;
                            } else {
                                Log.e("MotionPaths", str + " splineSet not a CustomSet frame = " + i6 + ", value" + aVar.b() + h0Var);
                                break;
                            }
                        } else {
                            Log.e("MotionPaths", "UNKNOWN customName " + str2);
                            break;
                        }
                    } else {
                        Log.e("MotionPaths", "UNKNOWN spline ".concat(str));
                        break;
                    }
            }
        }
    }

    public final void c(v.e eVar, androidx.constraintlayout.widget.d dVar, int i6) {
        eVar.n();
        eVar.o();
        androidx.constraintlayout.widget.c cVarG = dVar.g(i6);
        y.f fVar = cVarG.f1092b;
        int i10 = fVar.f11195c;
        this.f9951b = i10;
        int i11 = fVar.f11194b;
        this.f9952c = i11;
        this.f9950a = (i11 == 0 || i10 != 0) ? fVar.d : 0.0f;
        y.g gVar = cVarG.f1094e;
        boolean z7 = gVar.f11207l;
        this.d = gVar.f11208m;
        this.f9953e = gVar.f11199b;
        this.f = gVar.f11200c;
        this.f9954g = gVar.d;
        this.f9955h = gVar.f11201e;
        this.f9956i = gVar.f;
        this.f9957j = gVar.f11202g;
        this.f9958k = gVar.f11203h;
        this.f9959l = gVar.f11204i;
        this.f9960m = gVar.f11205j;
        this.f9961n = gVar.f11206k;
        y.e eVar2 = cVarG.f1093c;
        s.e.c(eVar2.f11190c);
        this.f9962o = eVar2.f11192g;
        this.f9963p = cVarG.f1092b.f11196e;
        for (String str : cVarG.f.keySet()) {
            y.a aVar = (y.a) cVarG.f.get(str);
            if (aVar.f11142b != 5) {
                this.f9964q.put(str, aVar);
            }
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        ((n) obj).getClass();
        return Float.compare(0.0f, 0.0f);
    }
}
