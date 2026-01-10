package androidx.core.app;

import android.content.res.ColorStateList;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 extends k0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1178a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1179b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public b1 f1180c;
    public CharSequence d;

    /* renamed from: e, reason: collision with root package name */
    public Boolean f1181e;

    @Override // androidx.core.app.k0
    public final void addCompatExtras(Bundle bundle) {
        super.addCompatExtras(bundle);
        bundle.putCharSequence("android.selfDisplayName", this.f1180c.f1153a);
        bundle.putBundle("android.messagingStyleUser", this.f1180c.b());
        bundle.putCharSequence("android.hiddenConversationTitle", this.d);
        if (this.d != null && this.f1181e.booleanValue()) {
            bundle.putCharSequence("android.conversationTitle", this.d);
        }
        ArrayList arrayList = this.f1178a;
        if (!arrayList.isEmpty()) {
            bundle.putParcelableArray("android.messages", i0.a(arrayList));
        }
        ArrayList arrayList2 = this.f1179b;
        if (!arrayList2.isEmpty()) {
            bundle.putParcelableArray("android.messages.historic", i0.a(arrayList2));
        }
        Boolean bool = this.f1181e;
        if (bool != null) {
            bundle.putBoolean("android.isGroupConversation", bool.booleanValue());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c  */
    @Override // androidx.core.app.k0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void apply(androidx.core.app.n r10) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.j0.apply(androidx.core.app.n):void");
    }

    public final SpannableStringBuilder c(i0 i0Var) {
        l0.b bVarC = l0.b.c();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        b1 b1Var = i0Var.f1173c;
        CharSequence charSequence = b1Var == null ? "" : b1Var.f1153a;
        int i6 = -16777216;
        if (TextUtils.isEmpty(charSequence)) {
            charSequence = this.f1180c.f1153a;
            int i10 = this.mBuilder.f1225v;
            if (i10 != 0) {
                i6 = i10;
            }
        }
        bVarC.getClass();
        androidx.appcompat.app.r0 r0Var = l0.j.f7940a;
        SpannableStringBuilder spannableStringBuilderD = bVarC.d(charSequence);
        spannableStringBuilder.append((CharSequence) spannableStringBuilderD);
        spannableStringBuilder.setSpan(new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i6), null), spannableStringBuilder.length() - spannableStringBuilderD.length(), spannableStringBuilder.length(), 33);
        CharSequence charSequence2 = i0Var.f1171a;
        spannableStringBuilder.append((CharSequence) "  ").append((CharSequence) bVarC.d(charSequence2 != null ? charSequence2 : ""));
        return spannableStringBuilder;
    }

    @Override // androidx.core.app.k0
    public final void clearCompatExtraKeys(Bundle bundle) {
        super.clearCompatExtraKeys(bundle);
        bundle.remove("android.messagingStyleUser");
        bundle.remove("android.selfDisplayName");
        bundle.remove("android.conversationTitle");
        bundle.remove("android.hiddenConversationTitle");
        bundle.remove("android.messages");
        bundle.remove("android.messages.historic");
        bundle.remove("android.isGroupConversation");
    }

    @Override // androidx.core.app.k0
    public final String getClassName() {
        return "androidx.core.app.NotificationCompat$MessagingStyle";
    }

    @Override // androidx.core.app.k0
    public final void restoreFromCompatExtras(Bundle bundle) {
        super.restoreFromCompatExtras(bundle);
        ArrayList arrayList = this.f1178a;
        arrayList.clear();
        if (bundle.containsKey("android.messagingStyleUser")) {
            this.f1180c = b1.a(bundle.getBundle("android.messagingStyleUser"));
        } else {
            String string = bundle.getString("android.selfDisplayName");
            b1 b1Var = new b1();
            b1Var.f1153a = string;
            b1Var.f1154b = null;
            b1Var.f1155c = null;
            b1Var.d = null;
            b1Var.f1156e = false;
            b1Var.f = false;
            this.f1180c = b1Var;
        }
        CharSequence charSequence = bundle.getCharSequence("android.conversationTitle");
        this.d = charSequence;
        if (charSequence == null) {
            this.d = bundle.getCharSequence("android.hiddenConversationTitle");
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray("android.messages");
        if (parcelableArray != null) {
            arrayList.addAll(i0.b(parcelableArray));
        }
        Parcelable[] parcelableArray2 = bundle.getParcelableArray("android.messages.historic");
        if (parcelableArray2 != null) {
            this.f1179b.addAll(i0.b(parcelableArray2));
        }
        if (bundle.containsKey("android.isGroupConversation")) {
            this.f1181e = Boolean.valueOf(bundle.getBoolean("android.isGroupConversation"));
        }
    }
}
