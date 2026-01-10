package b5;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiActivity;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3249a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Intent f3250b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3251c;

    public /* synthetic */ g(Intent intent, Object obj, int i6) {
        this.f3249a = i6;
        this.f3250b = intent;
        this.f3251c = obj;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, z4.f] */
    public final void a() {
        switch (this.f3249a) {
            case 0:
                Intent intent = this.f3250b;
                if (intent != null) {
                    ((GoogleApiActivity) this.f3251c).startActivityForResult(intent, 2);
                    break;
                }
                break;
            default:
                Intent intent2 = this.f3250b;
                if (intent2 != null) {
                    this.f3251c.a(intent2, 2);
                    break;
                }
                break;
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        try {
            try {
                a();
            } catch (ActivityNotFoundException e5) {
                Log.e("DialogRedirect", true == Build.FINGERPRINT.contains("generic") ? "Failed to start resolution intent. This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store." : "Failed to start resolution intent.", e5);
            }
        } finally {
            dialogInterface.dismiss();
        }
    }
}
