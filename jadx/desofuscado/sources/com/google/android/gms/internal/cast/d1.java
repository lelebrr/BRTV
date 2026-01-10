package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.alibaba.fastjson.asm.Opcodes;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d1 extends l5.a {

    /* renamed from: r, reason: collision with root package name */
    public final /* synthetic */ int f4129r;

    public /* synthetic */ d1(int i6) {
        this.f4129r = i6;
    }

    @Override // l5.a
    public y4.c c(Context context, Looper looper, a4.h hVar, Object obj, y4.h hVar2, y4.i iVar) {
        switch (this.f4129r) {
            case 0:
                return new i1(context, looper, hVar, (z4.n) hVar2, (z4.n) iVar);
            case 1:
            default:
                return super.c(context, looper, hVar, obj, hVar2, iVar);
            case 2:
                return new u0(context, looper, 83, hVar, hVar2, iVar);
            case 3:
                p4.a aVar = (p4.a) obj;
                b5.l.f(aVar, "Setting the API options is required.");
                return new v4.w(context, looper, hVar, aVar.f8869a, 0, aVar.f8871c, aVar.d, (z4.n) hVar2, (z4.n) iVar);
            case 4:
                p4.a aVar2 = (p4.a) obj;
                b5.l.f(aVar2, "Setting the API options is required.");
                return new v4.v(context, looper, hVar, aVar2.f8869a, 0, aVar2.f8870b, aVar2.f8871c, (z4.n) hVar2, (z4.n) iVar);
            case 5:
                if (obj != null) {
                    throw new ClassCastException();
                }
                new Bundle();
                throw null;
            case 6:
                hVar.getClass();
                Integer num = (Integer) hVar.f122b;
                Bundle bundle = new Bundle();
                bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", null);
                if (num != null) {
                    bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
                }
                bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
                bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
                bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
                bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
                bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
                bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
                bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
                bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
                return new v5.a(context, looper, hVar, bundle, hVar2, iVar);
            case 7:
                obj.getClass();
                throw new ClassCastException();
            case 8:
                return new v4.s(context, looper, Opcodes.IF_ICMPLT, hVar, hVar2, iVar);
        }
    }

    @Override // l5.a
    public /* synthetic */ y4.c d(Context context, Looper looper, a4.h hVar, Object obj, z4.n nVar, z4.n nVar2) {
        switch (this.f4129r) {
            case 1:
                return new d5.c(context, looper, hVar, (b5.e) obj, nVar, nVar2);
            default:
                return super.d(context, looper, hVar, obj, nVar, nVar2);
        }
    }
}
