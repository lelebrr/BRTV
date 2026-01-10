package v4;

import android.content.Context;
import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.internal.cast.d0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final /* synthetic */ class p implements z4.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10707a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String[] f10708b;

    public /* synthetic */ p(r rVar, String[] strArr, int i6) {
        this.f10707a = i6;
        this.f10708b = strArr;
    }

    @Override // z4.k
    public final void r(Object obj, Object obj2) {
        s sVar = (s) obj;
        w5.d dVar = (w5.d) obj2;
        switch (this.f10707a) {
            case 0:
                q qVar = new q(1, dVar);
                Context context = sVar.f3991c;
                ComplianceOptions complianceOptions = new ComplianceOptions(-1, -1, 0, true);
                g gVar = (g) sVar.p();
                ApiMetadata apiMetadata = new ApiMetadata(complianceOptions);
                Parcel parcelL = gVar.l();
                d0.d(parcelL, qVar);
                parcelL.writeStringArray(this.f10708b);
                d0.c(parcelL, apiMetadata);
                gVar.y(parcelL, 6);
                break;
            case 1:
                q qVar2 = new q(0, dVar);
                Context context2 = sVar.f3991c;
                ComplianceOptions complianceOptions2 = new ComplianceOptions(-1, -1, 0, true);
                g gVar2 = (g) sVar.p();
                ApiMetadata apiMetadata2 = new ApiMetadata(complianceOptions2);
                Parcel parcelL2 = gVar2.l();
                d0.d(parcelL2, qVar2);
                parcelL2.writeStringArray(this.f10708b);
                d0.c(parcelL2, apiMetadata2);
                gVar2.y(parcelL2, 5);
                break;
            default:
                q qVar3 = new q(2, dVar);
                Context context3 = sVar.f3991c;
                ComplianceOptions complianceOptions3 = new ComplianceOptions(-1, -1, 0, true);
                g gVar3 = (g) sVar.p();
                ApiMetadata apiMetadata3 = new ApiMetadata(complianceOptions3);
                Parcel parcelL3 = gVar3.l();
                d0.d(parcelL3, qVar3);
                parcelL3.writeStringArray(this.f10708b);
                d0.c(parcelL3, apiMetadata3);
                gVar3.y(parcelL3, 7);
                break;
        }
    }
}
