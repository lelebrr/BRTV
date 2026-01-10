package androidx.constraintlayout.widget;

import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import java.util.HashMap;
import y.e;
import y.f;
import y.g;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public int f1091a;

    /* renamed from: b, reason: collision with root package name */
    public final f f1092b;

    /* renamed from: c, reason: collision with root package name */
    public final e f1093c;
    public final y.d d;

    /* renamed from: e, reason: collision with root package name */
    public final g f1094e;
    public HashMap f;

    public c() {
        f fVar = new f();
        fVar.f11193a = false;
        fVar.f11194b = 0;
        fVar.f11195c = 0;
        fVar.d = 1.0f;
        fVar.f11196e = Float.NaN;
        this.f1092b = fVar;
        e eVar = new e();
        eVar.f11188a = false;
        eVar.f11189b = -1;
        eVar.f11190c = null;
        eVar.d = -1;
        eVar.f11191e = 0;
        eVar.f = Float.NaN;
        eVar.f11192g = Float.NaN;
        this.f1093c = eVar;
        y.d dVar = new y.d();
        dVar.f11154a = false;
        dVar.f11156b = false;
        dVar.f11161e = -1;
        dVar.f = -1;
        dVar.f11164g = -1.0f;
        dVar.f11166h = -1;
        dVar.f11168i = -1;
        dVar.f11169j = -1;
        dVar.f11171k = -1;
        dVar.f11172l = -1;
        dVar.f11173m = -1;
        dVar.f11174n = -1;
        dVar.f11175o = -1;
        dVar.f11176p = -1;
        dVar.f11177q = -1;
        dVar.f11178r = -1;
        dVar.f11179s = -1;
        dVar.f11180t = -1;
        dVar.f11181u = 0.5f;
        dVar.f11182v = 0.5f;
        dVar.f11183w = null;
        dVar.f11184x = -1;
        dVar.f11185y = 0;
        dVar.f11186z = 0.0f;
        dVar.A = -1;
        dVar.B = -1;
        dVar.C = -1;
        dVar.D = -1;
        dVar.E = -1;
        dVar.F = -1;
        dVar.G = -1;
        dVar.H = -1;
        dVar.I = -1;
        dVar.J = -1;
        dVar.K = -1;
        dVar.L = -1;
        dVar.M = -1;
        dVar.N = -1;
        dVar.O = -1;
        dVar.P = -1.0f;
        dVar.Q = -1.0f;
        dVar.R = 0;
        dVar.S = 0;
        dVar.T = 0;
        dVar.U = 0;
        dVar.V = -1;
        dVar.W = -1;
        dVar.X = -1;
        dVar.Y = -1;
        dVar.Z = 1.0f;
        dVar.f11155a0 = 1.0f;
        dVar.f11157b0 = -1;
        dVar.f11159c0 = 0;
        dVar.f11160d0 = -1;
        dVar.f11167h0 = false;
        dVar.i0 = false;
        dVar.f11170j0 = true;
        this.d = dVar;
        g gVar = new g();
        gVar.f11198a = false;
        gVar.f11199b = 0.0f;
        gVar.f11200c = 0.0f;
        gVar.d = 0.0f;
        gVar.f11201e = 1.0f;
        gVar.f = 1.0f;
        gVar.f11202g = Float.NaN;
        gVar.f11203h = Float.NaN;
        gVar.f11204i = 0.0f;
        gVar.f11205j = 0.0f;
        gVar.f11206k = 0.0f;
        gVar.f11207l = false;
        gVar.f11208m = 0.0f;
        this.f1094e = gVar;
        this.f = new HashMap();
    }

    public final void a(ConstraintLayout.LayoutParams layoutParams) {
        y.d dVar = this.d;
        layoutParams.d = dVar.f11166h;
        layoutParams.f1039e = dVar.f11168i;
        layoutParams.f = dVar.f11169j;
        layoutParams.f1042g = dVar.f11171k;
        layoutParams.f1044h = dVar.f11172l;
        layoutParams.f1046i = dVar.f11173m;
        layoutParams.f1047j = dVar.f11174n;
        layoutParams.f1049k = dVar.f11175o;
        layoutParams.f1051l = dVar.f11176p;
        layoutParams.f1056p = dVar.f11177q;
        layoutParams.f1057q = dVar.f11178r;
        layoutParams.f1058r = dVar.f11179s;
        layoutParams.f1059s = dVar.f11180t;
        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = dVar.D;
        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = dVar.E;
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = dVar.F;
        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = dVar.G;
        layoutParams.f1064x = dVar.O;
        layoutParams.f1065y = dVar.N;
        layoutParams.f1061u = dVar.K;
        layoutParams.f1063w = dVar.M;
        layoutParams.f1066z = dVar.f11181u;
        layoutParams.A = dVar.f11182v;
        layoutParams.f1053m = dVar.f11184x;
        layoutParams.f1054n = dVar.f11185y;
        layoutParams.f1055o = dVar.f11186z;
        layoutParams.B = dVar.f11183w;
        layoutParams.P = dVar.A;
        layoutParams.Q = dVar.B;
        layoutParams.E = dVar.P;
        layoutParams.D = dVar.Q;
        layoutParams.G = dVar.S;
        layoutParams.F = dVar.R;
        layoutParams.S = dVar.f11167h0;
        layoutParams.T = dVar.i0;
        layoutParams.H = dVar.T;
        layoutParams.I = dVar.U;
        layoutParams.L = dVar.V;
        layoutParams.M = dVar.W;
        layoutParams.J = dVar.X;
        layoutParams.K = dVar.Y;
        layoutParams.N = dVar.Z;
        layoutParams.O = dVar.f11155a0;
        layoutParams.R = dVar.C;
        layoutParams.f1036c = dVar.f11164g;
        layoutParams.f1032a = dVar.f11161e;
        layoutParams.f1034b = dVar.f;
        ((ViewGroup.MarginLayoutParams) layoutParams).width = dVar.f11158c;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = dVar.d;
        String str = dVar.f11165g0;
        if (str != null) {
            layoutParams.U = str;
        }
        layoutParams.setMarginStart(dVar.I);
        layoutParams.setMarginEnd(dVar.H);
        layoutParams.a();
    }

    public final void b(int i6, ConstraintLayout.LayoutParams layoutParams) {
        this.f1091a = i6;
        int i10 = layoutParams.d;
        y.d dVar = this.d;
        dVar.f11166h = i10;
        dVar.f11168i = layoutParams.f1039e;
        dVar.f11169j = layoutParams.f;
        dVar.f11171k = layoutParams.f1042g;
        dVar.f11172l = layoutParams.f1044h;
        dVar.f11173m = layoutParams.f1046i;
        dVar.f11174n = layoutParams.f1047j;
        dVar.f11175o = layoutParams.f1049k;
        dVar.f11176p = layoutParams.f1051l;
        dVar.f11177q = layoutParams.f1056p;
        dVar.f11178r = layoutParams.f1057q;
        dVar.f11179s = layoutParams.f1058r;
        dVar.f11180t = layoutParams.f1059s;
        dVar.f11181u = layoutParams.f1066z;
        dVar.f11182v = layoutParams.A;
        dVar.f11183w = layoutParams.B;
        dVar.f11184x = layoutParams.f1053m;
        dVar.f11185y = layoutParams.f1054n;
        dVar.f11186z = layoutParams.f1055o;
        dVar.A = layoutParams.P;
        dVar.B = layoutParams.Q;
        dVar.C = layoutParams.R;
        dVar.f11164g = layoutParams.f1036c;
        dVar.f11161e = layoutParams.f1032a;
        dVar.f = layoutParams.f1034b;
        dVar.f11158c = ((ViewGroup.MarginLayoutParams) layoutParams).width;
        dVar.d = ((ViewGroup.MarginLayoutParams) layoutParams).height;
        dVar.D = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        dVar.E = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        dVar.F = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        dVar.G = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        dVar.P = layoutParams.E;
        dVar.Q = layoutParams.D;
        dVar.S = layoutParams.G;
        dVar.R = layoutParams.F;
        dVar.f11167h0 = layoutParams.S;
        dVar.i0 = layoutParams.T;
        dVar.T = layoutParams.H;
        dVar.U = layoutParams.I;
        dVar.V = layoutParams.L;
        dVar.W = layoutParams.M;
        dVar.X = layoutParams.J;
        dVar.Y = layoutParams.K;
        dVar.Z = layoutParams.N;
        dVar.f11155a0 = layoutParams.O;
        dVar.f11165g0 = layoutParams.U;
        dVar.K = layoutParams.f1061u;
        dVar.M = layoutParams.f1063w;
        dVar.J = layoutParams.f1060t;
        dVar.L = layoutParams.f1062v;
        dVar.O = layoutParams.f1064x;
        dVar.N = layoutParams.f1065y;
        dVar.H = layoutParams.getMarginEnd();
        dVar.I = layoutParams.getMarginStart();
    }

    public final void c(int i6, Constraints.LayoutParams layoutParams) {
        b(i6, layoutParams);
        this.f1092b.d = layoutParams.f1068m0;
        float f = layoutParams.f1071p0;
        g gVar = this.f1094e;
        gVar.f11199b = f;
        gVar.f11200c = layoutParams.f1072q0;
        gVar.d = layoutParams.f1073r0;
        gVar.f11201e = layoutParams.f1074s0;
        gVar.f = layoutParams.f1075t0;
        gVar.f11202g = layoutParams.f1076u0;
        gVar.f11203h = layoutParams.f1077v0;
        gVar.f11204i = layoutParams.f1078w0;
        gVar.f11205j = layoutParams.x0;
        gVar.f11206k = layoutParams.f1079y0;
        gVar.f11208m = layoutParams.f1070o0;
        gVar.f11207l = layoutParams.f1069n0;
    }

    public final Object clone() {
        c cVar = new c();
        cVar.d.a(this.d);
        cVar.f1093c.a(this.f1093c);
        f fVar = cVar.f1092b;
        f fVar2 = this.f1092b;
        fVar.f11193a = fVar2.f11193a;
        fVar.f11194b = fVar2.f11194b;
        fVar.d = fVar2.d;
        fVar.f11196e = fVar2.f11196e;
        fVar.f11195c = fVar2.f11195c;
        cVar.f1094e.a(this.f1094e);
        cVar.f1091a = this.f1091a;
        return cVar;
    }
}
