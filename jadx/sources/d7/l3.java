package d7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l3 implements g3 {

    /* renamed from: b, reason: collision with root package name */
    public static final l3 f6207b = new l3(0);

    /* renamed from: c, reason: collision with root package name */
    public static final l3 f6208c = new l3(1);
    public static final l3 d = new l3(2);

    /* renamed from: e, reason: collision with root package name */
    public static final l3 f6209e = new l3(3);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6210a;

    public /* synthetic */ l3(int i6) {
        this.f6210a = i6;
    }

    @Override // d7.g3
    public final f3 a(h3 h3Var, Object obj, int i6, f3 f3Var) {
        switch (this.f6210a) {
            case 0:
                n3 n3Var = (n3) f3Var;
                return n3Var == null ? new n3(i6, obj) : new m3(obj, i6, n3Var);
            case 1:
                q3 q3Var = (q3) f3Var;
                return q3Var == null ? new q3(i6, obj) : new p3(obj, i6, q3Var);
            case 2:
                u3 u3Var = (u3) h3Var;
                t3 t3Var = (t3) f3Var;
                return t3Var == null ? new t3(obj, i6, u3Var.f6279h) : new s3(u3Var.f6279h, obj, i6, t3Var);
            default:
                x3 x3Var = (x3) h3Var;
                w3 w3Var = (w3) f3Var;
                return w3Var == null ? new w3(obj, i6, x3Var.f6300h) : new v3(x3Var.f6300h, obj, i6, w3Var);
        }
    }

    @Override // d7.g3
    public final h3 b(c4 c4Var, int i6) {
        switch (this.f6210a) {
            case 0:
                return new o3(c4Var, i6);
            case 1:
                return new r3(c4Var, i6);
            case 2:
                return new u3(c4Var, i6);
            default:
                return new x3(c4Var, i6);
        }
    }

    @Override // d7.g3
    public final void c(h3 h3Var, f3 f3Var, Object obj) {
        switch (this.f6210a) {
            case 0:
                ((n3) f3Var).f6224c = obj;
                break;
            case 1:
                q3 q3Var = (q3) f3Var;
                z3 z3Var = q3Var.f6244c;
                q3Var.f6244c = new a4(((r3) h3Var).f6255h, obj, q3Var);
                z3Var.clear();
                break;
            case 2:
                ((t3) f3Var).f6272b = obj;
                break;
            default:
                w3 w3Var = (w3) f3Var;
                z3 z3Var2 = w3Var.f6289b;
                w3Var.f6289b = new a4(((x3) h3Var).f6301i, obj, w3Var);
                z3Var2.clear();
                break;
        }
    }

    @Override // d7.g3
    public final k3 d() {
        switch (this.f6210a) {
            case 0:
                return k3.f6199a;
            case 1:
                return k3.f6200b;
            case 2:
                return k3.f6199a;
            default:
                return k3.f6200b;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10, types: [d7.w3] */
    /* JADX WARN: Type inference failed for: r7v8, types: [d7.t3] */
    @Override // d7.g3
    public final f3 e(h3 h3Var, f3 f3Var, f3 f3Var2) {
        q3 q3Var = null;
        w3Var = null;
        v3 w3Var = null;
        s3 t3Var = null;
        switch (this.f6210a) {
            case 0:
                n3 n3Var = (n3) f3Var;
                n3 n3Var2 = (n3) f3Var2;
                Object obj = n3Var.f6093a;
                int i6 = n3Var.f6094b;
                n3 n3Var3 = n3Var2 == null ? new n3(i6, obj) : new m3(obj, i6, n3Var2);
                n3Var3.f6224c = n3Var.f6224c;
                return n3Var3;
            case 1:
                r3 r3Var = (r3) h3Var;
                q3 q3Var2 = (q3) f3Var;
                q3 q3Var3 = (q3) f3Var2;
                int i10 = h3.f6160g;
                if (q3Var2.getValue() != null) {
                    Object obj2 = q3Var2.f6093a;
                    int i11 = q3Var2.f6094b;
                    q3Var = q3Var3 == null ? new q3(i11, obj2) : new p3(obj2, i11, q3Var3);
                    q3Var.f6244c = q3Var2.f6244c.b(r3Var.f6255h, q3Var);
                }
                return q3Var;
            case 2:
                u3 u3Var = (u3) h3Var;
                t3 t3Var2 = (t3) f3Var;
                t3 t3Var3 = (t3) f3Var2;
                Object obj3 = t3Var2.get();
                if (obj3 != null) {
                    int i12 = t3Var2.f6106a;
                    t3Var = t3Var3 == null ? new t3(obj3, i12, u3Var.f6279h) : new s3(u3Var.f6279h, obj3, i12, t3Var3);
                    t3Var.f6272b = t3Var2.f6272b;
                }
                return t3Var;
            default:
                x3 x3Var = (x3) h3Var;
                w3 w3Var2 = (w3) f3Var;
                w3 w3Var3 = (w3) f3Var2;
                Object obj4 = w3Var2.get();
                if (obj4 != null) {
                    int i13 = h3.f6160g;
                    if (w3Var2.f6289b.get() != null) {
                        int i14 = w3Var2.f6106a;
                        w3Var = w3Var3 == null ? new w3(obj4, i14, x3Var.f6300h) : new v3(x3Var.f6300h, obj4, i14, w3Var3);
                        w3Var.f6289b = w3Var2.f6289b.b(x3Var.f6301i, w3Var);
                    }
                }
                return w3Var;
        }
    }
}
