package s4;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.cast.d0;
import q4.w;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends AsyncTask {

    /* renamed from: c, reason: collision with root package name */
    public static final v4.b f9766c = new v4.b("FetchBitmapTask", null);

    /* renamed from: a, reason: collision with root package name */
    public final e f9767a;

    /* renamed from: b, reason: collision with root package name */
    public final c2.b f9768b;

    public b(Context context, int i6, int i10, c2.b bVar) {
        e eVarD;
        this.f9768b = bVar;
        Context applicationContext = context.getApplicationContext();
        w wVar = new w(this);
        v4.b bVar2 = com.google.android.gms.internal.cast.i.f4216a;
        try {
            com.google.android.gms.internal.cast.k kVarB = com.google.android.gms.internal.cast.i.b(applicationContext.getApplicationContext());
            m5.b bVar3 = new m5.b(applicationContext.getApplicationContext());
            Parcel parcelW = kVarB.w(kVarB.l(), 8);
            int i11 = parcelW.readInt();
            parcelW.recycle();
            eVarD = i11 >= 233700000 ? kVarB.D(bVar3, new m5.b(this), wVar, i6, i10) : kVarB.C(new m5.b(this), wVar, i6, i10);
        } catch (RemoteException | q4.c e5) {
            com.google.android.gms.internal.cast.i.f4216a.a(e5, "Unable to call %s on %s.", "newFetchBitmapTaskImpl", com.google.android.gms.internal.cast.k.class.getSimpleName());
            eVarD = null;
        }
        this.f9767a = eVarD;
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        Uri uri;
        e eVar;
        Uri[] uriArr = (Uri[]) objArr;
        if (uriArr.length != 1 || (uri = uriArr[0]) == null || (eVar = this.f9767a) == null) {
            return null;
        }
        try {
            c cVar = (c) eVar;
            Parcel parcelL = cVar.l();
            d0.c(parcelL, uri);
            Parcel parcelW = cVar.w(parcelL, 1);
            Bitmap bitmap = (Bitmap) d0.a(parcelW, Bitmap.CREATOR);
            parcelW.recycle();
            return bitmap;
        } catch (RemoteException e5) {
            f9766c.a(e5, "Unable to call %s on %s.", "doFetch", e.class.getSimpleName());
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        Bitmap bitmap = (Bitmap) obj;
        c2.b bVar = this.f9768b;
        if (bVar != null) {
            a aVar = (a) bVar.f;
            if (aVar != null) {
                aVar.f(bitmap);
            }
            bVar.f3342e = null;
        }
    }
}
