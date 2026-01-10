package com.google.android.gms.common.server.response;

import a.e;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.SparseArray;
import androidx.fragment.app.q;
import b5.l;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import h5.a;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import n5.d;
import r4.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new a(5);

    /* renamed from: a, reason: collision with root package name */
    public final int f4057a;

    /* renamed from: b, reason: collision with root package name */
    public final Parcel f4058b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4059c;
    public final zan d;

    /* renamed from: e, reason: collision with root package name */
    public final String f4060e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f4061g;

    public SafeParcelResponse(int i6, Parcel parcel, zan zanVar) {
        this.f4057a = i6;
        l.e(parcel);
        this.f4058b = parcel;
        this.f4059c = 2;
        this.d = zanVar;
        this.f4060e = zanVar == null ? null : zanVar.f4070c;
        this.f = 2;
    }

    public static void r(StringBuilder sb, Map map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry entry : map.entrySet()) {
            sparseArray.put(((FastJsonResponse$Field) entry.getValue()).f4052g, entry);
        }
        sb.append('{');
        int iV = d.V(parcel);
        boolean z7 = false;
        while (parcel.dataPosition() < iV) {
            int i6 = parcel.readInt();
            Map.Entry entry2 = (Map.Entry) sparseArray.get((char) i6);
            if (entry2 != null) {
                if (z7) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse$Field fastJsonResponse$Field = (FastJsonResponse$Field) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                StringToIntConverter stringToIntConverter = fastJsonResponse$Field.f4056k;
                BigInteger bigInteger = null;
                BigInteger bigInteger2 = null;
                Parcel[] parcelArr = null;
                boolean[] zArrCreateBooleanArray = null;
                BigDecimal[] bigDecimalArr = null;
                double[] dArrCreateDoubleArray = null;
                float[] fArrCreateFloatArray = null;
                BigInteger[] bigIntegerArr = null;
                Parcel parcelObtain = null;
                int i10 = fastJsonResponse$Field.d;
                if (stringToIntConverter != null) {
                    switch (i10) {
                        case 0:
                            t(sb, fastJsonResponse$Field, FastSafeParcelableJsonResponse.o(fastJsonResponse$Field, Integer.valueOf(d.K(parcel, i6))));
                            break;
                        case 1:
                            int iN = d.N(parcel, i6);
                            int iDataPosition = parcel.dataPosition();
                            if (iN != 0) {
                                byte[] bArrCreateByteArray = parcel.createByteArray();
                                parcel.setDataPosition(iDataPosition + iN);
                                bigInteger2 = new BigInteger(bArrCreateByteArray);
                            }
                            t(sb, fastJsonResponse$Field, FastSafeParcelableJsonResponse.o(fastJsonResponse$Field, bigInteger2));
                            break;
                        case 2:
                            t(sb, fastJsonResponse$Field, FastSafeParcelableJsonResponse.o(fastJsonResponse$Field, Long.valueOf(d.M(parcel, i6))));
                            break;
                        case 3:
                            t(sb, fastJsonResponse$Field, FastSafeParcelableJsonResponse.o(fastJsonResponse$Field, Float.valueOf(d.I(parcel, i6))));
                            break;
                        case 4:
                            t(sb, fastJsonResponse$Field, FastSafeParcelableJsonResponse.o(fastJsonResponse$Field, Double.valueOf(d.H(parcel, i6))));
                            break;
                        case 5:
                            t(sb, fastJsonResponse$Field, FastSafeParcelableJsonResponse.o(fastJsonResponse$Field, d.e(parcel, i6)));
                            break;
                        case 6:
                            t(sb, fastJsonResponse$Field, FastSafeParcelableJsonResponse.o(fastJsonResponse$Field, Boolean.valueOf(d.F(parcel, i6))));
                            break;
                        case 7:
                            t(sb, fastJsonResponse$Field, FastSafeParcelableJsonResponse.o(fastJsonResponse$Field, d.k(parcel, i6)));
                            break;
                        case 8:
                        case 9:
                            t(sb, fastJsonResponse$Field, FastSafeParcelableJsonResponse.o(fastJsonResponse$Field, d.g(parcel, i6)));
                            break;
                        case 10:
                            Bundle bundleF = d.f(parcel, i6);
                            HashMap map2 = new HashMap();
                            for (String str2 : bundleF.keySet()) {
                                String string = bundleF.getString(str2);
                                l.e(string);
                                map2.put(str2, string);
                            }
                            t(sb, fastJsonResponse$Field, FastSafeParcelableJsonResponse.o(fastJsonResponse$Field, map2));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            throw new IllegalArgumentException(e.n(i10, "Unknown field out type = "));
                    }
                } else {
                    boolean z10 = fastJsonResponse$Field.f4051e;
                    String str3 = fastJsonResponse$Field.f4054i;
                    if (z10) {
                        sb.append("[");
                        switch (i10) {
                            case 0:
                                int[] iArrH = d.h(parcel, i6);
                                int length = iArrH.length;
                                for (int i11 = 0; i11 < length; i11++) {
                                    if (i11 != 0) {
                                        sb.append(",");
                                    }
                                    sb.append(iArrH[i11]);
                                }
                                break;
                            case 1:
                                int iN2 = d.N(parcel, i6);
                                int iDataPosition2 = parcel.dataPosition();
                                if (iN2 != 0) {
                                    int i12 = parcel.readInt();
                                    bigIntegerArr = new BigInteger[i12];
                                    for (int i13 = 0; i13 < i12; i13++) {
                                        bigIntegerArr[i13] = new BigInteger(parcel.createByteArray());
                                    }
                                    parcel.setDataPosition(iDataPosition2 + iN2);
                                }
                                int length2 = bigIntegerArr.length;
                                for (int i14 = 0; i14 < length2; i14++) {
                                    if (i14 != 0) {
                                        sb.append(",");
                                    }
                                    sb.append(bigIntegerArr[i14]);
                                }
                                break;
                            case 2:
                                long[] jArrI = d.i(parcel, i6);
                                int length3 = jArrI.length;
                                for (int i15 = 0; i15 < length3; i15++) {
                                    if (i15 != 0) {
                                        sb.append(",");
                                    }
                                    sb.append(jArrI[i15]);
                                }
                                break;
                            case 3:
                                int iN3 = d.N(parcel, i6);
                                int iDataPosition3 = parcel.dataPosition();
                                if (iN3 != 0) {
                                    fArrCreateFloatArray = parcel.createFloatArray();
                                    parcel.setDataPosition(iDataPosition3 + iN3);
                                }
                                int length4 = fArrCreateFloatArray.length;
                                for (int i16 = 0; i16 < length4; i16++) {
                                    if (i16 != 0) {
                                        sb.append(",");
                                    }
                                    sb.append(fArrCreateFloatArray[i16]);
                                }
                                break;
                            case 4:
                                int iN4 = d.N(parcel, i6);
                                int iDataPosition4 = parcel.dataPosition();
                                if (iN4 != 0) {
                                    dArrCreateDoubleArray = parcel.createDoubleArray();
                                    parcel.setDataPosition(iDataPosition4 + iN4);
                                }
                                int length5 = dArrCreateDoubleArray.length;
                                for (int i17 = 0; i17 < length5; i17++) {
                                    if (i17 != 0) {
                                        sb.append(",");
                                    }
                                    sb.append(dArrCreateDoubleArray[i17]);
                                }
                                break;
                            case 5:
                                int iN5 = d.N(parcel, i6);
                                int iDataPosition5 = parcel.dataPosition();
                                if (iN5 != 0) {
                                    int i18 = parcel.readInt();
                                    bigDecimalArr = new BigDecimal[i18];
                                    for (int i19 = 0; i19 < i18; i19++) {
                                        bigDecimalArr[i19] = new BigDecimal(new BigInteger(parcel.createByteArray()), parcel.readInt());
                                    }
                                    parcel.setDataPosition(iDataPosition5 + iN5);
                                }
                                int length6 = bigDecimalArr.length;
                                for (int i20 = 0; i20 < length6; i20++) {
                                    if (i20 != 0) {
                                        sb.append(",");
                                    }
                                    sb.append(bigDecimalArr[i20]);
                                }
                                break;
                            case 6:
                                int iN6 = d.N(parcel, i6);
                                int iDataPosition6 = parcel.dataPosition();
                                if (iN6 != 0) {
                                    zArrCreateBooleanArray = parcel.createBooleanArray();
                                    parcel.setDataPosition(iDataPosition6 + iN6);
                                }
                                int length7 = zArrCreateBooleanArray.length;
                                for (int i21 = 0; i21 < length7; i21++) {
                                    if (i21 != 0) {
                                        sb.append(",");
                                    }
                                    sb.append(zArrCreateBooleanArray[i21]);
                                }
                                break;
                            case 7:
                                String[] strArrL = d.l(parcel, i6);
                                int length8 = strArrL.length;
                                for (int i22 = 0; i22 < length8; i22++) {
                                    if (i22 != 0) {
                                        sb.append(",");
                                    }
                                    sb.append("\"");
                                    sb.append(strArrL[i22]);
                                    sb.append("\"");
                                }
                                break;
                            case 8:
                            case 9:
                            case 10:
                                throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                            case 11:
                                int iN7 = d.N(parcel, i6);
                                int iDataPosition7 = parcel.dataPosition();
                                if (iN7 != 0) {
                                    int i23 = parcel.readInt();
                                    Parcel[] parcelArr2 = new Parcel[i23];
                                    for (int i24 = 0; i24 < i23; i24++) {
                                        int i25 = parcel.readInt();
                                        if (i25 != 0) {
                                            int iDataPosition8 = parcel.dataPosition();
                                            Parcel parcelObtain2 = Parcel.obtain();
                                            parcelObtain2.appendFrom(parcel, iDataPosition8, i25);
                                            parcelArr2[i24] = parcelObtain2;
                                            parcel.setDataPosition(iDataPosition8 + i25);
                                        } else {
                                            parcelArr2[i24] = null;
                                        }
                                    }
                                    parcel.setDataPosition(iDataPosition7 + iN7);
                                    parcelArr = parcelArr2;
                                }
                                int length9 = parcelArr.length;
                                for (int i26 = 0; i26 < length9; i26++) {
                                    if (i26 > 0) {
                                        sb.append(",");
                                    }
                                    parcelArr[i26].setDataPosition(0);
                                    l.e(str3);
                                    l.e(fastJsonResponse$Field.f4055j);
                                    Map map3 = (Map) fastJsonResponse$Field.f4055j.f4069b.get(str3);
                                    l.e(map3);
                                    r(sb, map3, parcelArr[i26]);
                                }
                                break;
                            default:
                                throw new IllegalStateException("Unknown field type out.");
                        }
                        sb.append("]");
                    } else {
                        switch (i10) {
                            case 0:
                                sb.append(d.K(parcel, i6));
                                break;
                            case 1:
                                int iN8 = d.N(parcel, i6);
                                int iDataPosition9 = parcel.dataPosition();
                                if (iN8 != 0) {
                                    byte[] bArrCreateByteArray2 = parcel.createByteArray();
                                    parcel.setDataPosition(iDataPosition9 + iN8);
                                    bigInteger = new BigInteger(bArrCreateByteArray2);
                                }
                                sb.append(bigInteger);
                                break;
                            case 2:
                                sb.append(d.M(parcel, i6));
                                break;
                            case 3:
                                sb.append(d.I(parcel, i6));
                                break;
                            case 4:
                                sb.append(d.H(parcel, i6));
                                break;
                            case 5:
                                sb.append(d.e(parcel, i6));
                                break;
                            case 6:
                                sb.append(d.F(parcel, i6));
                                break;
                            case 7:
                                String strK = d.k(parcel, i6);
                                sb.append("\"");
                                sb.append(k5.a.b(strK));
                                sb.append("\"");
                                break;
                            case 8:
                                byte[] bArrG = d.g(parcel, i6);
                                sb.append("\"");
                                sb.append(bArrG != null ? Base64.encodeToString(bArrG, 0) : null);
                                sb.append("\"");
                                break;
                            case 9:
                                byte[] bArrG2 = d.g(parcel, i6);
                                sb.append("\"");
                                sb.append(bArrG2 != null ? Base64.encodeToString(bArrG2, 10) : null);
                                sb.append("\"");
                                break;
                            case 10:
                                Bundle bundleF2 = d.f(parcel, i6);
                                Set<String> setKeySet = bundleF2.keySet();
                                sb.append("{");
                                boolean z11 = true;
                                for (String str4 : setKeySet) {
                                    if (!z11) {
                                        sb.append(",");
                                    }
                                    sb.append("\"");
                                    sb.append(str4);
                                    sb.append("\":\"");
                                    sb.append(k5.a.b(bundleF2.getString(str4)));
                                    sb.append("\"");
                                    z11 = false;
                                }
                                sb.append("}");
                                break;
                            case 11:
                                int iN9 = d.N(parcel, i6);
                                int iDataPosition10 = parcel.dataPosition();
                                if (iN9 != 0) {
                                    parcelObtain = Parcel.obtain();
                                    parcelObtain.appendFrom(parcel, iDataPosition10, iN9);
                                    parcel.setDataPosition(iDataPosition10 + iN9);
                                }
                                parcelObtain.setDataPosition(0);
                                l.e(str3);
                                l.e(fastJsonResponse$Field.f4055j);
                                Map map4 = (Map) fastJsonResponse$Field.f4055j.f4069b.get(str3);
                                l.e(map4);
                                r(sb, map4, parcelObtain);
                                break;
                            default:
                                throw new IllegalStateException("Unknown field type out");
                        }
                    }
                }
                z7 = true;
            }
        }
        if (parcel.dataPosition() != iV) {
            throw new q(e.n(iV, "Overread allowed size end="), parcel);
        }
        sb.append('}');
    }

    public static final void s(StringBuilder sb, int i6, Object obj) {
        switch (i6) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"");
                l.e(obj);
                sb.append(k5.a.b(obj.toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                byte[] bArr = (byte[]) obj;
                sb.append(bArr != null ? Base64.encodeToString(bArr, 0) : null);
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                byte[] bArr2 = (byte[]) obj;
                sb.append(bArr2 != null ? Base64.encodeToString(bArr2, 10) : null);
                sb.append("\"");
                return;
            case 10:
                l.e(obj);
                b.Q(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException(e.n(i6, "Unknown type = "));
        }
    }

    public static final void t(StringBuilder sb, FastJsonResponse$Field fastJsonResponse$Field, Object obj) {
        boolean z7 = fastJsonResponse$Field.f4050c;
        int i6 = fastJsonResponse$Field.f4049b;
        if (!z7) {
            s(sb, i6, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb.append("[");
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 != 0) {
                sb.append(",");
            }
            s(sb, i6, arrayList.get(i10));
        }
        sb.append("]");
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse
    public final Map h() {
        zan zanVar = this.d;
        if (zanVar == null) {
            return null;
        }
        String str = this.f4060e;
        l.e(str);
        return (Map) zanVar.f4069b.get(str);
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse
    public final Object l() {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse
    public final boolean n() {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public final Parcel q() {
        int i6 = this.f;
        Parcel parcel = this.f4058b;
        if (i6 == 0) {
            int iV = o9.d.V(parcel, 20293);
            this.f4061g = iV;
            o9.d.W(parcel, iV);
            this.f = 2;
        } else if (i6 == 1) {
            o9.d.W(parcel, this.f4061g);
            this.f = 2;
        }
        return parcel;
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse
    public final String toString() {
        zan zanVar = this.d;
        l.f(zanVar, "Cannot convert to JSON on client side.");
        Parcel parcelQ = q();
        parcelQ.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        String str = this.f4060e;
        l.e(str);
        Map map = (Map) zanVar.f4069b.get(str);
        l.e(map);
        r(sb, map, parcelQ);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f4057a);
        Parcel parcelQ = q();
        if (parcelQ != null) {
            int iV2 = o9.d.V(parcel, 2);
            parcel.appendFrom(parcelQ, 0, parcelQ.dataSize());
            o9.d.W(parcel, iV2);
        }
        o9.d.Q(parcel, 3, this.f4059c != 0 ? this.d : null, i6);
        o9.d.W(parcel, iV);
    }
}
