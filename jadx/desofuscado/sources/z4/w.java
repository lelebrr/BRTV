package z4;

import android.accounts.Account;
import android.content.Context;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zat;
import com.google.android.gms.internal.cast.d1;
import com.google.android.gms.internal.cast.x0;
import com.google.android.gms.signin.internal.zai;
import com.google.android.gms.signin.internal.zak;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class w extends com.google.android.gms.internal.cast.s implements y4.h, y4.i {

    /* renamed from: k, reason: collision with root package name */
    public static final d1 f11644k = u5.b.f10343a;
    public final Context d;

    /* renamed from: e, reason: collision with root package name */
    public final x0 f11645e;
    public final d1 f;

    /* renamed from: g, reason: collision with root package name */
    public final Set f11646g;

    /* renamed from: h, reason: collision with root package name */
    public final a4.h f11647h;

    /* renamed from: i, reason: collision with root package name */
    public v5.a f11648i;

    /* renamed from: j, reason: collision with root package name */
    public a.q f11649j;

    public w(Context context, x0 x0Var, a4.h hVar) {
        attachInterface(this, "com.google.android.gms.signin.internal.ISignInCallbacks");
        this.d = context;
        this.f11645e = x0Var;
        this.f11647h = hVar;
        this.f11646g = (Set) hVar.f123c;
        this.f = f11644k;
    }

    @Override // y4.h
    public final void g(int i6) {
        a.q qVar = this.f11649j;
        n nVar = (n) ((e) qVar.f).f11605j.get((b) qVar.f29c);
        if (nVar != null) {
            if (nVar.f11623k) {
                nVar.p(new ConnectionResult(17));
            } else {
                nVar.g(i6);
            }
        }
    }

    @Override // y4.i
    public final void l(ConnectionResult connectionResult) {
        this.f11649j.e(connectionResult);
    }

    @Override // y4.h
    public final void onConnected() throws NumberFormatException {
        GoogleSignInAccount googleSignInAccountJ;
        boolean z7 = false;
        v5.a aVar = this.f11648i;
        aVar.getClass();
        try {
            aVar.A.getClass();
            Account account = new Account("<<default account>>", "com.google");
            if ("<<default account>>".equals(account.name)) {
                Context context = aVar.f3991c;
                ReentrantLock reentrantLock = n4.a.f8444c;
                b5.l.e(context);
                ReentrantLock reentrantLock2 = n4.a.f8444c;
                reentrantLock2.lock();
                try {
                    if (n4.a.d == null) {
                        n4.a.d = new n4.a(context.getApplicationContext());
                    }
                    n4.a aVar2 = n4.a.d;
                    reentrantLock2.unlock();
                    String strA = aVar2.a("defaultGoogleSignInAccount");
                    if (!TextUtils.isEmpty(strA)) {
                        String strA2 = aVar2.a("googleSignInAccount:" + strA);
                        if (strA2 != null) {
                            try {
                                googleSignInAccountJ = GoogleSignInAccount.j(strA2);
                            } catch (JSONException unused) {
                            }
                        }
                    }
                    googleSignInAccountJ = null;
                } catch (Throwable th) {
                    reentrantLock2.unlock();
                    throw th;
                }
            } else {
                googleSignInAccountJ = null;
            }
            Integer num = aVar.C;
            b5.l.e(num);
            zat zatVar = new zat(2, account, num.intValue(), googleSignInAccountJ);
            v5.b bVar = (v5.b) aVar.p();
            zai zaiVar = new zai(1, zatVar);
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInterfaceToken(bVar.f4096e);
            int i6 = q5.a.f9236a;
            parcelObtain.writeInt(1);
            zaiVar.writeToParcel(parcelObtain, 0);
            parcelObtain.writeStrongBinder(this);
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                bVar.d.transact(12, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                parcelObtain.recycle();
                parcelObtain2.recycle();
            } catch (Throwable th2) {
                parcelObtain.recycle();
                parcelObtain2.recycle();
                throw th2;
            }
        } catch (RemoteException e5) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                this.f11645e.post(new ua.a(9, this, new zak(1, new ConnectionResult(8, null), null), z7));
            } catch (RemoteException unused2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e5);
            }
        }
    }
}
