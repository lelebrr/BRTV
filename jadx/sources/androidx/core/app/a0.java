package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import androidx.core.graphics.drawable.IconCompat;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 extends k0 {

    /* renamed from: a, reason: collision with root package name */
    public int f1145a;

    /* renamed from: b, reason: collision with root package name */
    public b1 f1146b;

    /* renamed from: c, reason: collision with root package name */
    public PendingIntent f1147c;
    public PendingIntent d;

    /* renamed from: e, reason: collision with root package name */
    public PendingIntent f1148e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public Integer f1149g;

    /* renamed from: h, reason: collision with root package name */
    public Integer f1150h;

    /* renamed from: i, reason: collision with root package name */
    public IconCompat f1151i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f1152j;

    @Override // androidx.core.app.k0
    public final void addCompatExtras(Bundle bundle) {
        super.addCompatExtras(bundle);
        bundle.putInt("android.callType", this.f1145a);
        bundle.putBoolean("android.callIsVideo", this.f);
        b1 b1Var = this.f1146b;
        if (b1Var != null) {
            if (Build.VERSION.SDK_INT >= 28) {
                b1Var.getClass();
                bundle.putParcelable("android.callPerson", y.b(a1.b(b1Var)));
            } else {
                bundle.putParcelable("android.callPersonCompat", b1Var.b());
            }
        }
        IconCompat iconCompat = this.f1151i;
        if (iconCompat != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                bundle.putParcelable("android.verificationIcon", x.a(iconCompat.n(this.mBuilder.f1206a)));
            } else {
                bundle.putParcelable("android.verificationIconCompat", iconCompat.m());
            }
        }
        bundle.putCharSequence("android.verificationText", this.f1152j);
        bundle.putParcelable("android.answerIntent", this.f1147c);
        bundle.putParcelable("android.declineIntent", this.d);
        bundle.putParcelable("android.hangUpIntent", this.f1148e);
        Integer num = this.f1149g;
        if (num != null) {
            bundle.putInt("android.answerColor", num.intValue());
        }
        Integer num2 = this.f1150h;
        if (num2 != null) {
            bundle.putInt("android.declineColor", num2.intValue());
        }
    }

    @Override // androidx.core.app.k0
    public final void apply(n nVar) throws Resources.NotFoundException {
        IconCompat iconCompat;
        int i6 = Build.VERSION.SDK_INT;
        String string = null;
        callStyleA = null;
        Notification.CallStyle callStyleA = null;
        if (i6 < 31) {
            t0 t0Var = (t0) nVar;
            b1 b1Var = this.f1146b;
            CharSequence charSequence = b1Var != null ? b1Var.f1153a : null;
            Notification.Builder builder = t0Var.f1204b;
            builder.setContentTitle(charSequence);
            Bundle bundle = this.mBuilder.f1224u;
            CharSequence charSequence2 = (bundle == null || !bundle.containsKey("android.text")) ? null : this.mBuilder.f1224u.getCharSequence("android.text");
            if (charSequence2 == null) {
                int i10 = this.f1145a;
                if (i10 == 1) {
                    string = this.mBuilder.f1206a.getResources().getString(R.string.call_notification_incoming_text);
                } else if (i10 == 2) {
                    string = this.mBuilder.f1206a.getResources().getString(R.string.call_notification_ongoing_text);
                } else if (i10 == 3) {
                    string = this.mBuilder.f1206a.getResources().getString(R.string.call_notification_screening_text);
                }
                charSequence2 = string;
            }
            builder.setContentText(charSequence2);
            b1 b1Var2 = this.f1146b;
            if (b1Var2 != null) {
                if (i6 >= 23 && (iconCompat = b1Var2.f1154b) != null) {
                    x.c(builder, iconCompat.n(this.mBuilder.f1206a));
                }
                if (i6 >= 28) {
                    b1 b1Var3 = this.f1146b;
                    b1Var3.getClass();
                    y.a(builder, a1.b(b1Var3));
                } else {
                    w.a(builder, this.f1146b.f1155c);
                }
            }
            w.b(builder, "call");
            return;
        }
        int i11 = this.f1145a;
        if (i11 == 1) {
            b1 b1Var4 = this.f1146b;
            b1Var4.getClass();
            callStyleA = z.a(a1.b(b1Var4), this.d, this.f1147c);
        } else if (i11 == 2) {
            b1 b1Var5 = this.f1146b;
            b1Var5.getClass();
            callStyleA = z.b(a1.b(b1Var5), this.f1148e);
        } else if (i11 == 3) {
            b1 b1Var6 = this.f1146b;
            b1Var6.getClass();
            callStyleA = z.c(a1.b(b1Var6), this.f1148e, this.f1147c);
        } else if (Log.isLoggable("NotifCompat", 3)) {
            Log.d("NotifCompat", "Unrecognized call type in CallStyle: " + String.valueOf(this.f1145a));
        }
        if (callStyleA != null) {
            callStyleA.setBuilder(((t0) nVar).f1204b);
            Integer num = this.f1149g;
            if (num != null) {
                z.d(callStyleA, num.intValue());
            }
            Integer num2 = this.f1150h;
            if (num2 != null) {
                z.f(callStyleA, num2.intValue());
            }
            z.i(callStyleA, this.f1152j);
            IconCompat iconCompat2 = this.f1151i;
            if (iconCompat2 != null) {
                z.h(callStyleA, iconCompat2.n(this.mBuilder.f1206a));
            }
            z.g(callStyleA, this.f);
        }
    }

    public final p c(int i6, int i10, Integer num, int i11, PendingIntent pendingIntent) {
        if (num == null) {
            num = Integer.valueOf(u7.d.i(this.mBuilder.f1206a, i11));
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) this.mBuilder.f1206a.getResources().getString(i10));
        spannableStringBuilder.setSpan(new ForegroundColorSpan(num.intValue()), 0, spannableStringBuilder.length(), 18);
        Context context = this.mBuilder.f1206a;
        PorterDuff.Mode mode = IconCompat.f1252k;
        context.getClass();
        p pVarA = new o(IconCompat.e(context.getResources(), context.getPackageName(), i6), spannableStringBuilder, pendingIntent, new Bundle()).a();
        pVarA.f1192a.putBoolean("key_action_priority", true);
        return pVarA;
    }

    @Override // androidx.core.app.k0
    public final boolean displayCustomViewInline() {
        return true;
    }

    @Override // androidx.core.app.k0
    public final String getClassName() {
        return "androidx.core.app.NotificationCompat$CallStyle";
    }

    @Override // androidx.core.app.k0
    public final void restoreFromCompatExtras(Bundle bundle) {
        super.restoreFromCompatExtras(bundle);
        this.f1145a = bundle.getInt("android.callType");
        this.f = bundle.getBoolean("android.callIsVideo");
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 28 && bundle.containsKey("android.callPerson")) {
            this.f1146b = a1.a(android.support.v4.media.session.b.d(bundle.getParcelable("android.callPerson")));
        } else if (bundle.containsKey("android.callPersonCompat")) {
            this.f1146b = b1.a(bundle.getBundle("android.callPersonCompat"));
        }
        if (i6 >= 23 && bundle.containsKey("android.verificationIcon")) {
            this.f1151i = IconCompat.c(android.support.v4.media.a.g(bundle.getParcelable("android.verificationIcon")));
        } else if (bundle.containsKey("android.verificationIconCompat")) {
            this.f1151i = IconCompat.b(bundle.getBundle("android.verificationIconCompat"));
        }
        this.f1152j = bundle.getCharSequence("android.verificationText");
        this.f1147c = (PendingIntent) bundle.getParcelable("android.answerIntent");
        this.d = (PendingIntent) bundle.getParcelable("android.declineIntent");
        this.f1148e = (PendingIntent) bundle.getParcelable("android.hangUpIntent");
        this.f1149g = bundle.containsKey("android.answerColor") ? Integer.valueOf(bundle.getInt("android.answerColor")) : null;
        this.f1150h = bundle.containsKey("android.declineColor") ? Integer.valueOf(bundle.getInt("android.declineColor")) : null;
    }
}
