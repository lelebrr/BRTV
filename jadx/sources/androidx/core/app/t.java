package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t extends k0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1201a;

    /* renamed from: b, reason: collision with root package name */
    public Object f1202b;

    public t(int i6) {
        this.f1201a = i6;
        switch (i6) {
            case 1:
                this.f1202b = new ArrayList();
                break;
        }
    }

    @Override // androidx.core.app.k0
    public final void apply(n nVar) {
        switch (this.f1201a) {
            case 0:
                Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(((t0) nVar).f1204b).setBigContentTitle(this.mBigContentTitle).bigText((CharSequence) this.f1202b);
                if (this.mSummaryTextSet) {
                    bigTextStyleBigText.setSummaryText(this.mSummaryText);
                    break;
                }
                break;
            default:
                Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(((t0) nVar).f1204b).setBigContentTitle(this.mBigContentTitle);
                if (this.mSummaryTextSet) {
                    bigContentTitle.setSummaryText(this.mSummaryText);
                }
                Iterator it = ((ArrayList) this.f1202b).iterator();
                while (it.hasNext()) {
                    bigContentTitle.addLine((CharSequence) it.next());
                }
                break;
        }
    }

    @Override // androidx.core.app.k0
    public final void clearCompatExtraKeys(Bundle bundle) {
        switch (this.f1201a) {
            case 0:
                super.clearCompatExtraKeys(bundle);
                bundle.remove("android.bigText");
                break;
            default:
                super.clearCompatExtraKeys(bundle);
                bundle.remove("android.textLines");
                break;
        }
    }

    @Override // androidx.core.app.k0
    public final String getClassName() {
        switch (this.f1201a) {
            case 0:
                return "androidx.core.app.NotificationCompat$BigTextStyle";
            default:
                return "androidx.core.app.NotificationCompat$InboxStyle";
        }
    }

    @Override // androidx.core.app.k0
    public final void restoreFromCompatExtras(Bundle bundle) {
        switch (this.f1201a) {
            case 0:
                super.restoreFromCompatExtras(bundle);
                this.f1202b = bundle.getCharSequence("android.bigText");
                break;
            default:
                super.restoreFromCompatExtras(bundle);
                ArrayList arrayList = (ArrayList) this.f1202b;
                arrayList.clear();
                if (bundle.containsKey("android.textLines")) {
                    Collections.addAll(arrayList, bundle.getCharSequenceArray("android.textLines"));
                    break;
                }
                break;
        }
    }
}
