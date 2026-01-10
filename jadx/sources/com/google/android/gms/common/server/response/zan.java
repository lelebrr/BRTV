package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import b5.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new a(3);

    /* renamed from: a, reason: collision with root package name */
    public final int f4068a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f4069b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4070c;

    public zan(int i6, String str, ArrayList arrayList) {
        this.f4068a = i6;
        HashMap map = new HashMap();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            zal zalVar = (zal) arrayList.get(i10);
            String str2 = zalVar.f4063b;
            HashMap map2 = new HashMap();
            ArrayList arrayList2 = zalVar.f4064c;
            l.e(arrayList2);
            int size2 = arrayList2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                zam zamVar = (zam) arrayList2.get(i11);
                map2.put(zamVar.f4066b, zamVar.f4067c);
            }
            map.put(str2, map2);
        }
        this.f4069b = map;
        l.e(str);
        this.f4070c = str;
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            Map map3 = (Map) map.get((String) it.next());
            Iterator it2 = map3.keySet().iterator();
            while (it2.hasNext()) {
                ((FastJsonResponse$Field) map3.get((String) it2.next())).f4055j = this;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        HashMap map = this.f4069b;
        for (String str : map.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map map2 = (Map) map.get(str);
            for (String str2 : map2.keySet()) {
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(map2.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f4068a);
        ArrayList arrayList = new ArrayList();
        HashMap map = this.f4069b;
        for (String str : map.keySet()) {
            arrayList.add(new zal(str, (Map) map.get(str)));
        }
        d.U(parcel, 2, arrayList);
        d.R(parcel, 3, this.f4070c);
        d.W(parcel, iV);
    }
}
