package com.google.android.gms.internal.cast;

import java.io.IOException;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y6 extends IOException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y6(long j10, long j11, int i6, IndexOutOfBoundsException indexOutOfBoundsException) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat("Pos: " + j10 + ", limit: " + j11 + ", len: " + i6), indexOutOfBoundsException);
        Locale locale = Locale.US;
    }

    public y6(IndexOutOfBoundsException indexOutOfBoundsException) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
    }

    public y6(String str, int i6, IOException iOException) {
        super(str + ", status code: " + i6, iOException);
    }
}
