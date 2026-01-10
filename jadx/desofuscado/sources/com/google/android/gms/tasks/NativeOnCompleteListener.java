package com.google.android.gms.tasks;

import w5.a;
import w5.g;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class NativeOnCompleteListener implements a {
    @Override // w5.a
    public final void e(g gVar) {
        Object objD;
        String message;
        if (gVar.e()) {
            objD = gVar.d();
            message = null;
        } else {
            Exception excC = gVar.c();
            if (excC != null) {
                message = excC.getMessage();
                objD = null;
            } else {
                objD = null;
                message = null;
            }
        }
        nativeOnComplete(0L, objD, gVar.e(), false, message);
    }

    public native void nativeOnComplete(long j10, Object obj, boolean z7, boolean z10, String str);
}
