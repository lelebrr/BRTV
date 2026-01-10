package com.google.android.gms.common.server.response;

import a7.f;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import com.google.android.gms.common.server.converter.zaa;
import i5.a;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class FastJsonResponse$Field<I, O> extends AbstractSafeParcelable {
    public static final a CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final int f4048a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4049b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4050c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4051e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4052g;

    /* renamed from: h, reason: collision with root package name */
    public final Class f4053h;

    /* renamed from: i, reason: collision with root package name */
    public final String f4054i;

    /* renamed from: j, reason: collision with root package name */
    public zan f4055j;

    /* renamed from: k, reason: collision with root package name */
    public final StringToIntConverter f4056k;

    public FastJsonResponse$Field(int i6, int i10, boolean z7, int i11, boolean z10, String str, int i12, String str2, zaa zaaVar) {
        this.f4048a = i6;
        this.f4049b = i10;
        this.f4050c = z7;
        this.d = i11;
        this.f4051e = z10;
        this.f = str;
        this.f4052g = i12;
        if (str2 == null) {
            this.f4053h = null;
            this.f4054i = null;
        } else {
            this.f4053h = SafeParcelResponse.class;
            this.f4054i = str2;
        }
        if (zaaVar == null) {
            this.f4056k = null;
            return;
        }
        StringToIntConverter stringToIntConverter = zaaVar.f4044b;
        if (stringToIntConverter == null) {
            throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
        }
        this.f4056k = stringToIntConverter;
    }

    public final String toString() {
        f fVar = new f(this);
        fVar.c(Integer.valueOf(this.f4048a), "versionCode");
        fVar.c(Integer.valueOf(this.f4049b), "typeIn");
        fVar.c(Boolean.valueOf(this.f4050c), "typeInArray");
        fVar.c(Integer.valueOf(this.d), "typeOut");
        fVar.c(Boolean.valueOf(this.f4051e), "typeOutArray");
        fVar.c(this.f, "outputFieldName");
        fVar.c(Integer.valueOf(this.f4052g), "safeParcelFieldId");
        String str = this.f4054i;
        if (str == null) {
            str = null;
        }
        fVar.c(str, "concreteTypeName");
        Class cls = this.f4053h;
        if (cls != null) {
            fVar.c(cls.getCanonicalName(), "concreteType.class");
        }
        if (this.f4056k != null) {
            fVar.c(StringToIntConverter.class.getCanonicalName(), "converterName");
        }
        return fVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f4048a);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f4049b);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f4050c ? 1 : 0);
        d.X(parcel, 4, 4);
        parcel.writeInt(this.d);
        d.X(parcel, 5, 4);
        parcel.writeInt(this.f4051e ? 1 : 0);
        d.R(parcel, 6, this.f);
        d.X(parcel, 7, 4);
        parcel.writeInt(this.f4052g);
        String str = this.f4054i;
        if (str == null) {
            str = null;
        }
        d.R(parcel, 8, str);
        StringToIntConverter stringToIntConverter = this.f4056k;
        d.Q(parcel, 9, stringToIntConverter != null ? new zaa(stringToIntConverter) : null, i6);
        d.W(parcel, iV);
    }
}
