package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import o9.d;
import p4.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new p(29);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4088a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4089b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4090c;
    public final int d;

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        r8.d = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public zzq(java.lang.String r9, int r10, int r11, boolean r12) {
        /*
            r8 = this;
            r0 = 2
            r1 = 3
            r2 = 6
            r3 = 1
            r8.<init>()
            r8.f4088a = r12
            r8.f4089b = r9
            int[] r9 = new int[r2]
            r9 = {x003e: FILL_ARRAY_DATA , data: [1, 2, 3, 4, 5, 6} // fill-array
            r12 = 0
            r4 = 0
        L12:
            r5 = 0
            if (r4 >= r2) goto L21
            r6 = r9[r4]
            int r7 = r6 + (-1)
            if (r6 == 0) goto L20
            if (r7 != r10) goto L1e
            goto L22
        L1e:
            int r4 = r4 + r3
            goto L12
        L20:
            throw r5
        L21:
            r6 = 1
        L22:
            int r6 = r6 + (-1)
            r8.f4090c = r6
            int[] r9 = new int[]{r3, r0, r1}
        L2a:
            if (r12 >= r1) goto L39
            r10 = r9[r12]
            int r0 = r10 + (-1)
            if (r10 == 0) goto L38
            if (r0 != r11) goto L36
            r3 = r10
            goto L39
        L36:
            int r12 = r12 + r3
            goto L2a
        L38:
            throw r5
        L39:
            int r3 = r3 + (-1)
            r8.d = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zzq.<init>(java.lang.String, int, int, boolean):void");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f4088a ? 1 : 0);
        d.R(parcel, 2, this.f4089b);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f4090c);
        d.X(parcel, 4, 4);
        parcel.writeInt(this.d);
        d.W(parcel, iV);
    }
}
