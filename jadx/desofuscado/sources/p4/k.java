package p4;

import android.content.Context;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.internal.cast.d0;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicLong;
import v4.w;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class k implements z4.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8882a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f8883b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f8884c;
    public final /* synthetic */ String d;

    public /* synthetic */ k(o oVar, String str, String str2, int i6) {
        this.f8882a = i6;
        this.f8883b = oVar;
        this.f8884c = str;
        this.d = str2;
    }

    @Override // z4.k
    public final void r(Object obj, Object obj2) {
        switch (this.f8882a) {
            case 0:
                w wVar = (w) obj;
                w5.d dVar = (w5.d) obj2;
                v4.b bVar = o.F;
                o oVar = this.f8883b;
                b5.l.g("Not connected to device", oVar.j());
                Context context = wVar.f3991c;
                ComplianceOptions complianceOptions = new ComplianceOptions(-1, -1, 0, true);
                v4.d dVar2 = (v4.d) wVar.p();
                ApiMetadata apiMetadata = new ApiMetadata(complianceOptions);
                Parcel parcelL = dVar2.l();
                parcelL.writeString(this.f8884c);
                parcelL.writeString(this.d);
                int i6 = d0.f4128a;
                parcelL.writeInt(0);
                d0.c(parcelL, apiMetadata);
                dVar2.y(parcelL, 14);
                synchronized (oVar.f8898q) {
                    try {
                        if (oVar.f8895n != null) {
                            oVar.h(2477);
                        }
                        oVar.f8895n = dVar;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            default:
                String str = this.f8884c;
                String str2 = this.d;
                w wVar2 = (w) obj;
                w5.d dVar3 = (w5.d) obj2;
                o oVar2 = this.f8883b;
                AtomicLong atomicLong = oVar2.f8897p;
                HashMap map = oVar2.A;
                long jIncrementAndGet = atomicLong.incrementAndGet();
                b5.l.g("Not connected to device", oVar2.j());
                try {
                    map.put(Long.valueOf(jIncrementAndGet), dVar3);
                    Context context2 = wVar2.f3991c;
                    ApiMetadata apiMetadata2 = new ApiMetadata(new ComplianceOptions(-1, -1, 0, true));
                    v4.d dVar4 = (v4.d) wVar2.p();
                    Parcel parcelL2 = dVar4.l();
                    parcelL2.writeString(str);
                    parcelL2.writeString(str2);
                    parcelL2.writeLong(jIncrementAndGet);
                    d0.c(parcelL2, apiMetadata2);
                    dVar4.y(parcelL2, 9);
                    return;
                } catch (RemoteException e5) {
                    map.remove(Long.valueOf(jIncrementAndGet));
                    dVar3.a(e5);
                    return;
                }
        }
    }
}
