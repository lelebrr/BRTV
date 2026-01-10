package com.google.android.gms.internal.cast;

import android.content.res.ColorStateList;
import android.graphics.Shader;
import java.io.IOException;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e0 implements w5.c {

    /* renamed from: a, reason: collision with root package name */
    public int f4143a;

    /* renamed from: b, reason: collision with root package name */
    public Object f4144b;

    /* renamed from: c, reason: collision with root package name */
    public Object f4145c;

    public e0(int i6) {
        this.f4143a = i6;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01f1, code lost:
    
        if (r5 == 1) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01f3, code lost:
    
        if (r5 == 2) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01f5, code lost:
    
        r1 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01f7, code lost:
    
        r17 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01fa, code lost:
    
        r1 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01fd, code lost:
    
        r1 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0200, code lost:
    
        r1 = 0;
        r3 = new android.graphics.LinearGradient(r11, r27, r26, r25, (int[]) r0.f169b, (float[]) r0.f170c, r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0217, code lost:
    
        r1 = 0;
        r3 = new android.graphics.SweepGradient(r22, r23, (int[]) r0.f169b, (float[]) r0.f170c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x022a, code lost:
    
        r9 = r22;
        r15 = r23;
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0232, code lost:
    
        if (r24 <= 0.0f) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0237, code lost:
    
        if (r5 == 1) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x023a, code lost:
    
        if (r5 == 2) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x023c, code lost:
    
        r2 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0241, code lost:
    
        r2 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0244, code lost:
    
        r2 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0247, code lost:
    
        r3 = new android.graphics.RadialGradient(r9, r15, r24, (int[]) r0.f169b, (float[]) r0.f170c, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0264, code lost:
    
        return new com.google.android.gms.internal.cast.e0(r3, r1, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x026c, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01cf, code lost:
    
        if (r14.size() <= 0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01d1, code lost:
    
        r0 = new a7.f(r14, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01d7, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d8, code lost:
    
        if (r0 == null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01dc, code lost:
    
        if (r19 == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01de, code lost:
    
        r0 = new a7.f(r6, r9, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e4, code lost:
    
        r0 = new a7.f(r6, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01ea, code lost:
    
        if (r8 == 1) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01ed, code lost:
    
        if (r8 == 2) goto L107;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.cast.e0 a(android.content.res.Resources r29, int r30, android.content.res.Resources.Theme r31) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 659
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.e0.a(android.content.res.Resources, int, android.content.res.Resources$Theme):com.google.android.gms.internal.cast.e0");
    }

    public boolean b() {
        ColorStateList colorStateList;
        return ((Shader) this.f4144b) == null && (colorStateList = (ColorStateList) this.f4145c) != null && colorStateList.isStateful();
    }

    @Override // w5.c
    public void onSuccess(Object obj) {
        int i6 = 0;
        if (((Boolean) obj).booleanValue()) {
            b3 b3VarN = c3.n((c3) this.f4145c);
            m1 m1Var = (m1) this.f4144b;
            String str = m1Var.d;
            b3VarN.c();
            c3.x((c3) b3VarN.f4117b, str);
            b3VarN.c();
            c3.r((c3) b3VarN.f4117b, str);
            Long l9 = m1Var.f4318e;
            if (l9 != null) {
                int iLongValue = (int) l9.longValue();
                b3VarN.c();
                c3.u((c3) b3VarN.f4117b, iLongValue);
            }
            c3 c3Var = (c3) b3VarN.a();
            int i10 = m1Var.f4321i;
            int i11 = i10 - 1;
            x3.a aVar = null;
            if (i10 == 0) {
                throw null;
            }
            int i12 = this.f4143a;
            if (i11 == 0) {
                aVar = new x3.a(Integer.valueOf(i12 - 1), c3Var, x3.c.f10992b);
            } else if (i11 == 1) {
                aVar = new x3.a(Integer.valueOf(i12 - 1), c3Var, x3.c.f10991a);
            }
            m1.f4313j.b("analytics event: %s", aVar);
            b5.l.e(aVar);
            a1.b bVar = m1Var.f4319g;
            if (bVar != null) {
                a4.s sVar = new a4.s(i6);
                a4.j jVar = (a4.j) bVar.f47b;
                x3.b bVar2 = (x3.b) bVar.f48c;
                a4.t tVar = (a4.t) bVar.d;
                a1.b bVarA = a4.j.a();
                bVarA.G(jVar.f129a);
                bVarA.d = aVar.f10989c;
                bVarA.f48c = jVar.f130b;
                a4.j jVarH = bVarA.h();
                a4.h hVar = new a4.h();
                hVar.f = new HashMap();
                hVar.d = Long.valueOf(tVar.f148a.c());
                hVar.f124e = Long.valueOf(tVar.f149b.c());
                hVar.f121a = "CAST_SENDER_SDK";
                c3 c3Var2 = aVar.f10988b;
                try {
                    int i13 = c3Var2.i();
                    byte[] bArr = new byte[i13];
                    x6 x6Var = new x6(bArr, i13);
                    v7 v7VarA = s7.f4412c.a(c3.class);
                    l7 l7Var = x6Var.d;
                    if (l7Var == null) {
                        l7Var = new l7(x6Var);
                    }
                    v7VarA.a(c3Var2, l7Var);
                    if (i13 - x6Var.f4466g != 0) {
                        throw new IllegalStateException("Did not write as much data as expected.");
                    }
                    hVar.f123c = new a4.n(bVar2, bArr);
                    hVar.f122b = aVar.f10987a;
                    a4.i iVarC = hVar.c();
                    g4.a aVar2 = (g4.a) tVar.f150c;
                    aVar2.getClass();
                    aVar2.f7100b.execute(new androidx.media3.common.util.i(aVar2, jVarH, sVar, iVarC));
                } catch (IOException e5) {
                    throw new RuntimeException(a.e.r("Serializing ", c3.class.getName(), " to a byte array threw an IOException (should never happen)."), e5);
                }
            }
        }
    }

    public /* synthetic */ e0(Object obj, int i6, Object obj2) {
        this.f4144b = obj;
        this.f4145c = obj2;
        this.f4143a = i6;
    }
}
