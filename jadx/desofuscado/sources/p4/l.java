package p4;

import android.content.Context;
import android.os.Parcel;
import androidx.media3.common.PlaybackException;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.cast.d0;
import v4.w;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class l implements z4.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8885a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f8886b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f8887c;

    public /* synthetic */ l(o oVar, String str) {
        this.f8886b = oVar;
        this.f8887c = str;
    }

    @Override // z4.k
    public final void r(Object obj, Object obj2) {
        switch (this.f8885a) {
            case 0:
                w wVar = (w) obj;
                w5.d dVar = (w5.d) obj2;
                b5.l.g("Not active connection", this.f8886b.E != 1);
                Context context = wVar.f3991c;
                ApiMetadata apiMetadata = new ApiMetadata(new ComplianceOptions(-1, -1, 0, true));
                v4.d dVar2 = (v4.d) wVar.p();
                String str = this.f8887c;
                Parcel parcelL = dVar2.l();
                parcelL.writeString(str);
                d0.c(parcelL, apiMetadata);
                dVar2.y(parcelL, 12);
                v4.d dVar3 = (v4.d) wVar.p();
                Parcel parcelL2 = dVar3.l();
                parcelL2.writeString(str);
                d0.c(parcelL2, apiMetadata);
                dVar3.y(parcelL2, 11);
                dVar.b(null);
                return;
            default:
                o oVar = this.f8886b;
                String str2 = this.f8887c;
                w wVar2 = (w) obj;
                w5.d dVar4 = (w5.d) obj2;
                v4.b bVar = o.F;
                b5.l.g("Not connected to device", oVar.j());
                Context context2 = wVar2.f3991c;
                ComplianceOptions complianceOptions = new ComplianceOptions(-1, -1, 0, true);
                v4.d dVar5 = (v4.d) wVar2.p();
                ApiMetadata apiMetadata2 = new ApiMetadata(complianceOptions);
                Parcel parcelL3 = dVar5.l();
                parcelL3.writeString(str2);
                d0.c(parcelL3, apiMetadata2);
                dVar5.y(parcelL3, 5);
                synchronized (oVar.f8899r) {
                    try {
                        if (oVar.f8896o != null) {
                            dVar4.a(new y4.e(new Status(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, null, null, null)));
                            return;
                        } else {
                            oVar.f8896o = dVar4;
                            return;
                        }
                    } finally {
                    }
                }
        }
    }

    public /* synthetic */ l(o oVar, String str, r4.f fVar) {
        this.f8886b = oVar;
        this.f8887c = str;
    }
}
