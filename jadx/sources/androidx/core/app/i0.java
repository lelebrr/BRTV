package androidx.core.app;

import android.app.Notification;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f1171a;

    /* renamed from: b, reason: collision with root package name */
    public final long f1172b;

    /* renamed from: c, reason: collision with root package name */
    public final b1 f1173c;
    public final Bundle d = new Bundle();

    /* renamed from: e, reason: collision with root package name */
    public String f1174e;
    public Uri f;

    public i0(CharSequence charSequence, long j10, b1 b1Var) {
        this.f1171a = charSequence;
        this.f1172b = j10;
        this.f1173c = b1Var;
    }

    public static Bundle[] a(ArrayList arrayList) {
        Bundle[] bundleArr = new Bundle[arrayList.size()];
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            i0 i0Var = (i0) arrayList.get(i6);
            i0Var.getClass();
            Bundle bundle = new Bundle();
            CharSequence charSequence = i0Var.f1171a;
            if (charSequence != null) {
                bundle.putCharSequence("text", charSequence);
            }
            bundle.putLong("time", i0Var.f1172b);
            b1 b1Var = i0Var.f1173c;
            if (b1Var != null) {
                bundle.putCharSequence("sender", b1Var.f1153a);
                if (Build.VERSION.SDK_INT >= 28) {
                    bundle.putParcelable("sender_person", h0.a(a1.b(b1Var)));
                } else {
                    bundle.putBundle("person", b1Var.b());
                }
            }
            String str = i0Var.f1174e;
            if (str != null) {
                bundle.putString(SessionDescription.ATTR_TYPE, str);
            }
            Uri uri = i0Var.f;
            if (uri != null) {
                bundle.putParcelable("uri", uri);
            }
            Bundle bundle2 = i0Var.d;
            if (bundle2 != null) {
                bundle.putBundle("extras", bundle2);
            }
            bundleArr[i6] = bundle;
        }
        return bundleArr;
    }

    public static ArrayList b(Parcelable[] parcelableArr) {
        b1 b1VarA;
        ArrayList arrayList = new ArrayList(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable instanceof Bundle) {
                Bundle bundle = (Bundle) parcelable;
                i0 i0Var = null;
                try {
                    if (bundle.containsKey("text") && bundle.containsKey("time")) {
                        if (bundle.containsKey("person")) {
                            b1VarA = b1.a(bundle.getBundle("person"));
                        } else if (bundle.containsKey("sender_person") && Build.VERSION.SDK_INT >= 28) {
                            b1VarA = a1.a(android.support.v4.media.session.b.d(bundle.getParcelable("sender_person")));
                        } else if (bundle.containsKey("sender")) {
                            CharSequence charSequence = bundle.getCharSequence("sender");
                            b1 b1Var = new b1();
                            b1Var.f1153a = charSequence;
                            b1Var.f1154b = null;
                            b1Var.f1155c = null;
                            b1Var.d = null;
                            b1Var.f1156e = false;
                            b1Var.f = false;
                            b1VarA = b1Var;
                        } else {
                            b1VarA = null;
                        }
                        i0 i0Var2 = new i0(bundle.getCharSequence("text"), bundle.getLong("time"), b1VarA);
                        if (bundle.containsKey(SessionDescription.ATTR_TYPE) && bundle.containsKey("uri")) {
                            String string = bundle.getString(SessionDescription.ATTR_TYPE);
                            Uri uri = (Uri) bundle.getParcelable("uri");
                            i0Var2.f1174e = string;
                            i0Var2.f = uri;
                        }
                        if (bundle.containsKey("extras")) {
                            i0Var2.d.putAll(bundle.getBundle("extras"));
                        }
                        i0Var = i0Var2;
                    }
                } catch (ClassCastException unused) {
                }
                if (i0Var != null) {
                    arrayList.add(i0Var);
                }
            }
        }
        return arrayList;
    }

    public final Notification.MessagingStyle.Message c() {
        Notification.MessagingStyle.Message messageA;
        int i6 = Build.VERSION.SDK_INT;
        long j10 = this.f1172b;
        CharSequence charSequence = this.f1171a;
        b1 b1Var = this.f1173c;
        if (i6 >= 28) {
            messageA = h0.b(charSequence, j10, b1Var != null ? a1.b(b1Var) : null);
        } else {
            messageA = g0.a(charSequence, j10, b1Var != null ? b1Var.f1153a : null);
        }
        String str = this.f1174e;
        if (str != null) {
            g0.b(messageA, str, this.f);
        }
        return messageA;
    }
}
