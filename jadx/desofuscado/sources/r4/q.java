package r4;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.google.android.gms.cast.MediaTrack;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f9573a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f9574b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f9575c;

    public q(g gVar, s sVar, s sVar2) {
        this.f9573a = sVar;
        this.f9574b = sVar2;
        this.f9575c = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        g gVar = this.f9575c;
        if (!gVar.f9550k0) {
            AlertDialog alertDialog = gVar.f9554o0;
            if (alertDialog != null) {
                alertDialog.cancel();
                gVar.f9554o0 = null;
                return;
            }
            return;
        }
        f fVar = gVar.f9555p0;
        b5.l.e(fVar);
        if (!fVar.i()) {
            AlertDialog alertDialog2 = gVar.f9554o0;
            if (alertDialog2 != null) {
                alertDialog2.cancel();
                gVar.f9554o0 = null;
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        s sVar = this.f9573a;
        int i10 = sVar.f9579b;
        MediaTrack mediaTrack = (i10 < 0 || i10 >= sVar.getCount()) ? null : (MediaTrack) sVar.getItem(sVar.f9579b);
        if (mediaTrack != null) {
            long j10 = mediaTrack.f3760a;
            if (j10 != -1) {
                arrayList.add(Long.valueOf(j10));
            }
        }
        s sVar2 = this.f9574b;
        int i11 = sVar2.f9579b;
        MediaTrack mediaTrack2 = (i11 < 0 || i11 >= sVar2.getCount()) ? null : (MediaTrack) sVar2.getItem(sVar2.f9579b);
        if (mediaTrack2 != null) {
            arrayList.add(Long.valueOf(mediaTrack2.f3760a));
        }
        long[] jArr = gVar.f9553n0;
        if (jArr != null && jArr.length > 0) {
            HashSet hashSet = new HashSet();
            Iterator it = gVar.f9552m0.iterator();
            while (it.hasNext()) {
                hashSet.add(Long.valueOf(((MediaTrack) it.next()).f3760a));
            }
            Iterator it2 = gVar.f9551l0.iterator();
            while (it2.hasNext()) {
                hashSet.add(Long.valueOf(((MediaTrack) it2.next()).f3760a));
            }
            for (long j11 : jArr) {
                Long lValueOf = Long.valueOf(j11);
                if (!hashSet.contains(lValueOf)) {
                    arrayList.add(lValueOf);
                }
            }
        }
        long[] jArr2 = new long[arrayList.size()];
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            jArr2[i12] = ((Long) arrayList.get(i12)).longValue();
        }
        Arrays.sort(jArr2);
        b5.l.b("Must be called from the main thread.");
        if (fVar.F()) {
            f.G(new i(fVar, jArr2, 2));
        } else {
            f.x();
        }
        AlertDialog alertDialog3 = gVar.f9554o0;
        if (alertDialog3 != null) {
            alertDialog3.cancel();
            gVar.f9554o0 = null;
        }
    }
}
