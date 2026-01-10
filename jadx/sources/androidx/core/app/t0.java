package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t0 implements n {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1203a;

    /* renamed from: b, reason: collision with root package name */
    public final Notification.Builder f1204b;

    /* renamed from: c, reason: collision with root package name */
    public final u f1205c;
    public final Bundle d;

    public t0(u uVar) {
        String str;
        int i6;
        Bundle[] bundleArr;
        ArrayList arrayList;
        p pVarC;
        new ArrayList();
        this.d = new Bundle();
        this.f1205c = uVar;
        Context context = uVar.f1206a;
        this.f1203a = context;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            this.f1204b = p0.a(context, uVar.f1227x);
        } else {
            this.f1204b = new Notification.Builder(uVar.f1206a);
        }
        Notification notification = uVar.B;
        int i11 = 2;
        this.f1204b.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(uVar.f1209e).setContentText(uVar.f).setContentInfo(null).setContentIntent(uVar.f1210g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setNumber(0).setProgress(uVar.f1217n, uVar.f1218o, uVar.f1219p);
        if (i10 < 23) {
            Notification.Builder builder = this.f1204b;
            IconCompat iconCompat = uVar.f1211h;
            builder.setLargeIcon(iconCompat == null ? null : iconCompat.f());
        } else {
            Notification.Builder builder2 = this.f1204b;
            IconCompat iconCompat2 = uVar.f1211h;
            n0.b(builder2, iconCompat2 == null ? null : iconCompat2.n(context));
        }
        this.f1204b.setSubText(uVar.f1216m).setUsesChronometer(uVar.f1214k).setPriority(uVar.f1212i);
        k0 k0Var = uVar.f1215l;
        if (k0Var instanceof a0) {
            a0 a0Var = (a0) k0Var;
            PendingIntent pendingIntent = a0Var.d;
            p pVarC2 = pendingIntent == null ? a0Var.c(R.drawable.ic_call_decline, R.string.call_notification_hang_up_action, a0Var.f1150h, R.color.call_notification_decline_color, a0Var.f1148e) : a0Var.c(R.drawable.ic_call_decline, R.string.call_notification_decline_action, a0Var.f1150h, R.color.call_notification_decline_color, pendingIntent);
            PendingIntent pendingIntent2 = a0Var.f1147c;
            if (pendingIntent2 == null) {
                pVarC = null;
            } else {
                boolean z7 = a0Var.f;
                pVarC = a0Var.c(z7 ? R.drawable.ic_call_answer_video : R.drawable.ic_call_answer, z7 ? R.string.call_notification_answer_video_action : R.string.call_notification_answer_action, a0Var.f1149g, R.color.call_notification_answer_color, pendingIntent2);
            }
            ArrayList arrayList2 = new ArrayList(3);
            arrayList2.add(pVarC2);
            ArrayList arrayList3 = a0Var.mBuilder.f1207b;
            if (arrayList3 != null) {
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    p pVar = (p) it.next();
                    pVar.getClass();
                    if (!pVar.f1192a.getBoolean("key_action_priority") && i11 > 1) {
                        arrayList2.add(pVar);
                        i11--;
                    }
                    if (pVarC != null && i11 == 1) {
                        arrayList2.add(pVarC);
                        i11--;
                    }
                }
            }
            if (pVarC != null && i11 >= 1) {
                arrayList2.add(pVarC);
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                a((p) it2.next());
            }
        } else {
            Iterator it3 = uVar.f1207b.iterator();
            while (it3.hasNext()) {
                a((p) it3.next());
            }
        }
        Bundle bundle = uVar.f1224u;
        if (bundle != null) {
            this.d.putAll(bundle);
        }
        int i12 = Build.VERSION.SDK_INT;
        this.f1204b.setShowWhen(uVar.f1213j);
        l0.i(this.f1204b, uVar.f1221r);
        l0.g(this.f1204b, uVar.f1220q);
        l0.j(this.f1204b, null);
        l0.h(this.f1204b, false);
        m0.b(this.f1204b, null);
        m0.c(this.f1204b, uVar.f1225v);
        m0.f(this.f1204b, uVar.f1226w);
        m0.d(this.f1204b, null);
        m0.e(this.f1204b, notification.sound, notification.audioAttributes);
        ArrayList arrayList4 = uVar.C;
        ArrayList arrayList5 = uVar.f1208c;
        if (i12 < 28) {
            if (arrayList5 == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(arrayList5.size());
                Iterator it4 = arrayList5.iterator();
                while (it4.hasNext()) {
                    b1 b1Var = (b1) it4.next();
                    String str2 = b1Var.f1155c;
                    if (str2 == null) {
                        CharSequence charSequence = b1Var.f1153a;
                        str2 = charSequence != null ? "name:" + ((Object) charSequence) : "";
                    }
                    arrayList.add(str2);
                }
            }
            if (arrayList != null) {
                if (arrayList4 == null) {
                    arrayList4 = arrayList;
                } else {
                    p.f fVar = new p.f(arrayList4.size() + arrayList.size());
                    fVar.addAll(arrayList);
                    fVar.addAll(arrayList4);
                    arrayList4 = new ArrayList(fVar);
                }
            }
        }
        if (arrayList4 != null && !arrayList4.isEmpty()) {
            Iterator it5 = arrayList4.iterator();
            while (it5.hasNext()) {
                m0.a(this.f1204b, (String) it5.next());
            }
        }
        ArrayList arrayList6 = uVar.d;
        if (arrayList6.size() > 0) {
            if (uVar.f1224u == null) {
                uVar.f1224u = new Bundle();
            }
            Bundle bundle2 = uVar.f1224u.getBundle("android.car.EXTENSIONS");
            bundle2 = bundle2 == null ? new Bundle() : bundle2;
            Bundle bundle3 = new Bundle(bundle2);
            Bundle bundle4 = new Bundle();
            for (int i13 = 0; i13 < arrayList6.size(); i13++) {
                String string = Integer.toString(i13);
                p pVar2 = (p) arrayList6.get(i13);
                Bundle bundle5 = new Bundle();
                IconCompat iconCompatA = pVar2.a();
                bundle5.putInt("icon", iconCompatA != null ? iconCompatA.g() : 0);
                bundle5.putCharSequence("title", pVar2.f1196g);
                bundle5.putParcelable("actionIntent", pVar2.f1197h);
                Bundle bundle6 = pVar2.f1192a;
                Bundle bundle7 = bundle6 != null ? new Bundle(bundle6) : new Bundle();
                bundle7.putBoolean("android.support.allowGeneratedReplies", pVar2.d);
                bundle5.putBundle("extras", bundle7);
                c1[] c1VarArr = pVar2.f1194c;
                if (c1VarArr == null) {
                    bundleArr = null;
                } else {
                    bundleArr = new Bundle[c1VarArr.length];
                    if (c1VarArr.length > 0) {
                        c1 c1Var = c1VarArr[0];
                        new Bundle();
                        throw null;
                    }
                }
                bundle5.putParcelableArray("remoteInputs", bundleArr);
                bundle5.putBoolean("showsUserInterface", pVar2.f1195e);
                bundle5.putInt("semanticAction", 0);
                bundle4.putBundle(string, bundle5);
            }
            bundle2.putBundle("invisible_actions", bundle4);
            bundle3.putBundle("invisible_actions", bundle4);
            if (uVar.f1224u == null) {
                uVar.f1224u = new Bundle();
            }
            uVar.f1224u.putBundle("android.car.EXTENSIONS", bundle2);
            this.d.putBundle("android.car.EXTENSIONS", bundle3);
        }
        int i14 = Build.VERSION.SDK_INT;
        if (i14 >= 24) {
            this.f1204b.setExtras(uVar.f1224u);
            str = null;
            o0.e(this.f1204b, null);
        } else {
            str = null;
        }
        if (i14 >= 26) {
            p0.b(this.f1204b, uVar.f1228y);
            p0.e(this.f1204b, str);
            p0.f(this.f1204b, str);
            p0.g(this.f1204b, 0L);
            p0.d(this.f1204b, 0);
            if (uVar.f1223t) {
                p0.c(this.f1204b, uVar.f1222s);
            }
            if (!TextUtils.isEmpty(uVar.f1227x)) {
                this.f1204b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i14 >= 28) {
            Iterator it6 = arrayList5.iterator();
            while (it6.hasNext()) {
                b1 b1Var2 = (b1) it6.next();
                Notification.Builder builder3 = this.f1204b;
                b1Var2.getClass();
                q0.a(builder3, a1.b(b1Var2));
            }
        }
        int i15 = Build.VERSION.SDK_INT;
        if (i15 >= 29) {
            r0.a(this.f1204b, uVar.A);
            r0.b(this.f1204b, null);
        }
        if (i15 < 31 || (i6 = uVar.f1229z) == 0) {
            return;
        }
        s0.b(this.f1204b, i6);
    }

    public final void a(p pVar) {
        int i6 = Build.VERSION.SDK_INT;
        IconCompat iconCompatA = pVar.a();
        PendingIntent pendingIntent = pVar.f1197h;
        CharSequence charSequence = pVar.f1196g;
        Notification.Action.Builder builderA = i6 >= 23 ? n0.a(iconCompatA != null ? iconCompatA.n(null) : null, charSequence, pendingIntent) : l0.e(iconCompatA != null ? iconCompatA.g() : 0, charSequence, pendingIntent);
        c1[] c1VarArr = pVar.f1194c;
        if (c1VarArr != null) {
            RemoteInput[] remoteInputArr = new RemoteInput[c1VarArr.length];
            if (c1VarArr.length > 0) {
                c1 c1Var = c1VarArr[0];
                throw null;
            }
            for (RemoteInput remoteInput : remoteInputArr) {
                l0.c(builderA, remoteInput);
            }
        }
        Bundle bundle = pVar.f1192a;
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        boolean z7 = pVar.d;
        bundle2.putBoolean("android.support.allowGeneratedReplies", z7);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 24) {
            o0.a(builderA, z7);
        }
        bundle2.putInt("android.support.action.semanticAction", 0);
        if (i10 >= 28) {
            q0.b(builderA, 0);
        }
        if (i10 >= 29) {
            r0.c(builderA, false);
        }
        if (i10 >= 31) {
            s0.a(builderA, false);
        }
        bundle2.putBoolean("android.support.action.showsUserInterface", pVar.f1195e);
        l0.b(builderA, bundle2);
        l0.a(this.f1204b, l0.d(builderA));
    }
}
