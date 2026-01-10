package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import o9.d;
import y4.b;

/* compiled from: MyApplication */
@Deprecated
/* loaded from: classes.dex */
public class GoogleSignInOptions extends AbstractSafeParcelable implements b, ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    /* renamed from: a, reason: collision with root package name */
    public final int f3614a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3615b;

    /* renamed from: c, reason: collision with root package name */
    public final Account f3616c;
    public final boolean d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f3617e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final String f3618g;

    /* renamed from: h, reason: collision with root package name */
    public final String f3619h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f3620i;

    /* renamed from: j, reason: collision with root package name */
    public final String f3621j;

    static {
        Scope scope = new Scope(1, "profile");
        new Scope(1, "email");
        Scope scope2 = new Scope(1, "openid");
        Scope scope3 = new Scope(1, "https://www.googleapis.com/auth/games_lite");
        Scope scope4 = new Scope(1, "https://www.googleapis.com/auth/games");
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        hashSet.add(scope2);
        hashSet.add(scope);
        if (hashSet.contains(scope4) && hashSet.contains(scope3)) {
            hashSet.remove(scope3);
        }
        new GoogleSignInOptions(3, new ArrayList(hashSet), null, false, false, false, null, null, map, null);
        HashSet hashSet2 = new HashSet();
        HashMap map2 = new HashMap();
        hashSet2.add(scope3);
        hashSet2.addAll(Arrays.asList(new Scope[0]));
        if (hashSet2.contains(scope4) && hashSet2.contains(scope3)) {
            hashSet2.remove(scope3);
        }
        new GoogleSignInOptions(3, new ArrayList(hashSet2), null, false, false, false, null, null, map2, null);
        CREATOR = new a(8);
    }

    public GoogleSignInOptions(int i6, ArrayList arrayList, Account account, boolean z7, boolean z10, boolean z11, String str, String str2, HashMap map, String str3) {
        this.f3614a = i6;
        this.f3615b = arrayList;
        this.f3616c = account;
        this.d = z7;
        this.f3617e = z10;
        this.f = z11;
        this.f3618g = str;
        this.f3619h = str2;
        this.f3620i = new ArrayList(map.values());
        this.f3621j = str3;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004f A[Catch: ClassCastException -> 0x007b, TryCatch #0 {ClassCastException -> 0x007b, blocks: (B:5:0x0008, B:7:0x0018, B:10:0x0021, B:12:0x0030, B:15:0x003c, B:21:0x0049, B:23:0x004f, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:35:0x006f, B:26:0x0056, B:19:0x0043), top: B:41:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0056 A[Catch: ClassCastException -> 0x007b, TryCatch #0 {ClassCastException -> 0x007b, blocks: (B:5:0x0008, B:7:0x0018, B:10:0x0021, B:12:0x0030, B:15:0x003c, B:21:0x0049, B:23:0x004f, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:35:0x006f, B:26:0x0056, B:19:0x0043), top: B:41:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0079 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.String r0 = r8.f3618g
            java.util.ArrayList r1 = r8.f3615b
            r2 = 0
            if (r9 != 0) goto L8
            return r2
        L8:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r9 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r9     // Catch: java.lang.ClassCastException -> L7b
            java.util.ArrayList r3 = r9.f3615b     // Catch: java.lang.ClassCastException -> L7b
            java.lang.String r4 = r9.f3618g     // Catch: java.lang.ClassCastException -> L7b
            android.accounts.Account r5 = r9.f3616c     // Catch: java.lang.ClassCastException -> L7b
            java.util.ArrayList r6 = r8.f3620i     // Catch: java.lang.ClassCastException -> L7b
            boolean r6 = r6.isEmpty()     // Catch: java.lang.ClassCastException -> L7b
            if (r6 == 0) goto L7b
            java.util.ArrayList r6 = r9.f3620i     // Catch: java.lang.ClassCastException -> L7b
            boolean r6 = r6.isEmpty()     // Catch: java.lang.ClassCastException -> L7b
            if (r6 != 0) goto L21
            goto L7b
        L21:
            int r6 = r1.size()     // Catch: java.lang.ClassCastException -> L7b
            java.util.ArrayList r7 = new java.util.ArrayList     // Catch: java.lang.ClassCastException -> L7b
            r7.<init>(r3)     // Catch: java.lang.ClassCastException -> L7b
            int r7 = r7.size()     // Catch: java.lang.ClassCastException -> L7b
            if (r6 != r7) goto L7b
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch: java.lang.ClassCastException -> L7b
            r6.<init>(r3)     // Catch: java.lang.ClassCastException -> L7b
            boolean r1 = r1.containsAll(r6)     // Catch: java.lang.ClassCastException -> L7b
            if (r1 != 0) goto L3c
            goto L7b
        L3c:
            android.accounts.Account r1 = r8.f3616c     // Catch: java.lang.ClassCastException -> L7b
            if (r1 != 0) goto L43
            if (r5 != 0) goto L7b
            goto L49
        L43:
            boolean r1 = r1.equals(r5)     // Catch: java.lang.ClassCastException -> L7b
            if (r1 == 0) goto L7b
        L49:
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.ClassCastException -> L7b
            if (r1 == 0) goto L56
            boolean r0 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.ClassCastException -> L7b
            if (r0 == 0) goto L7b
            goto L5d
        L56:
            boolean r0 = r0.equals(r4)     // Catch: java.lang.ClassCastException -> L7b
            if (r0 != 0) goto L5d
            goto L7b
        L5d:
            boolean r0 = r8.f     // Catch: java.lang.ClassCastException -> L7b
            boolean r1 = r9.f     // Catch: java.lang.ClassCastException -> L7b
            if (r0 != r1) goto L7b
            boolean r0 = r8.d     // Catch: java.lang.ClassCastException -> L7b
            boolean r1 = r9.d     // Catch: java.lang.ClassCastException -> L7b
            if (r0 != r1) goto L7b
            boolean r0 = r8.f3617e     // Catch: java.lang.ClassCastException -> L7b
            boolean r1 = r9.f3617e     // Catch: java.lang.ClassCastException -> L7b
            if (r0 != r1) goto L7b
            java.lang.String r0 = r8.f3621j     // Catch: java.lang.ClassCastException -> L7b
            java.lang.String r9 = r9.f3621j     // Catch: java.lang.ClassCastException -> L7b
            boolean r9 = android.text.TextUtils.equals(r0, r9)     // Catch: java.lang.ClassCastException -> L7b
            if (r9 == 0) goto L7b
            r9 = 1
            return r9
        L7b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f3615b;
        int size = arrayList2.size();
        for (int i6 = 0; i6 < size; i6++) {
            arrayList.add(((Scope) arrayList2.get(i6)).f3922b);
        }
        Collections.sort(arrayList);
        int iHashCode = arrayList.hashCode() + (1 * 31);
        Account account = this.f3616c;
        int iHashCode2 = (iHashCode * 31) + (account == null ? 0 : account.hashCode());
        String str = this.f3618g;
        int iHashCode3 = (((((((iHashCode2 * 31) + (str == null ? 0 : str.hashCode())) * 31) + (this.f ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.f3617e ? 1 : 0);
        String str2 = this.f3621j;
        return (iHashCode3 * 31) + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f3614a);
        d.U(parcel, 2, new ArrayList(this.f3615b));
        d.Q(parcel, 3, this.f3616c, i6);
        d.X(parcel, 4, 4);
        parcel.writeInt(this.d ? 1 : 0);
        d.X(parcel, 5, 4);
        parcel.writeInt(this.f3617e ? 1 : 0);
        d.X(parcel, 6, 4);
        parcel.writeInt(this.f ? 1 : 0);
        d.R(parcel, 7, this.f3618g);
        d.R(parcel, 8, this.f3619h);
        d.U(parcel, 9, this.f3620i);
        d.R(parcel, 10, this.f3621j);
        d.W(parcel, iV);
    }
}
