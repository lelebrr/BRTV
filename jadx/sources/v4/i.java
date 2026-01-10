package v4;

import android.util.Log;
import androidx.media3.common.PlaybackException;
import java.util.Iterator;
import q4.z;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i implements m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10676a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f10677b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f10678c;

    public /* synthetic */ i(l lVar, m mVar, int i6) {
        this.f10676a = i6;
        this.f10677b = mVar;
        this.f10678c = lVar;
    }

    @Override // v4.m
    public final void l(String str, long j10, int i6, k kVar, long j11, long j12) {
        int i10;
        l lVar = this.f10678c;
        switch (this.f10676a) {
            case 0:
                lVar.f10681g = null;
                m mVar = this.f10677b;
                if (mVar != null) {
                    mVar.l(str, j10, i6, kVar, j11, j12);
                    break;
                }
                break;
            default:
                m mVar2 = this.f10677b;
                if (mVar2 != null) {
                    if (i6 == 2001) {
                        Object[] objArr = {Integer.valueOf(lVar.f10683i)};
                        b bVar = lVar.f10704a;
                        Log.w(bVar.f10671a, bVar.d("Possibility of local queue out of sync with receiver queue. Refetching sequence number. Current Local Sequence Number = %d", objArr));
                        Iterator it = lVar.f10682h.f9566a.f9547h.iterator();
                        while (it.hasNext()) {
                            z zVar = (z) it.next();
                            switch (zVar.f9234a) {
                                case 1:
                                    ((r4.a) zVar.f9235b).d();
                                    break;
                            }
                        }
                        i10 = PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED;
                    } else {
                        i10 = i6;
                    }
                    mVar2.l(str, j10, i10, kVar, j11, j12);
                    break;
                }
                break;
        }
    }

    @Override // v4.m
    public final void q(String str, long j10, long j11, long j12) {
        switch (this.f10676a) {
            case 0:
                m mVar = this.f10677b;
                if (mVar != null) {
                    mVar.q(str, j10, j11, j12);
                    break;
                }
                break;
            default:
                m mVar2 = this.f10677b;
                if (mVar2 != null) {
                    mVar2.q(str, j10, j11, j12);
                    break;
                }
                break;
        }
    }
}
