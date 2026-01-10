package com.google.android.gms.internal.cast;

import android.widget.ImageView;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g0 extends t4.a {

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f4159b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4160c;
    public final String d;

    public g0(ImageView imageView, ExpandedControllerActivity expandedControllerActivity) {
        this.f4159b = imageView;
        this.f4160c = expandedControllerActivity.getString(R.string.cast_closed_captions);
        this.d = expandedControllerActivity.getString(R.string.cast_closed_captions_unavailable);
        imageView.setEnabled(false);
    }

    @Override // t4.a
    public final void b() {
        f();
    }

    @Override // t4.a
    public final void c() {
        this.f4159b.setEnabled(false);
    }

    @Override // t4.a
    public final void d(q4.b bVar) {
        super.d(bVar);
        this.f4159b.setEnabled(true);
        f();
    }

    @Override // t4.a
    public final void e() {
        this.f4159b.setEnabled(false);
        this.f10136a = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void f() {
        /*
            r8 = this;
            r4.f r0 = r8.f10136a
            android.widget.ImageView r1 = r8.f4159b
            r2 = 0
            if (r0 == 0) goto L4b
            boolean r3 = r0.i()
            if (r3 == 0) goto L4b
            com.google.android.gms.cast.MediaInfo r3 = r0.e()
            if (r3 != 0) goto L14
            goto L4b
        L14:
            java.util.ArrayList r3 = r3.f
            if (r3 == 0) goto L4b
            boolean r4 = r3.isEmpty()
            if (r4 != 0) goto L4b
            java.util.Iterator r3 = r3.iterator()
            r4 = 0
        L23:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto L4b
            java.lang.Object r5 = r3.next()
            com.google.android.gms.cast.MediaTrack r5 = (com.google.android.gms.cast.MediaTrack) r5
            int r5 = r5.f3761b
            r6 = 2
            r7 = 1
            if (r5 != r6) goto L3a
            int r4 = r4 + 1
            if (r4 <= r7) goto L23
            goto L3c
        L3a:
            if (r5 != r7) goto L23
        L3c:
            boolean r0 = r0.o()
            if (r0 != 0) goto L4b
            r1.setEnabled(r7)
            java.lang.String r0 = r8.f4160c
            r1.setContentDescription(r0)
            return
        L4b:
            r1.setEnabled(r2)
            java.lang.String r0 = r8.d
            r1.setContentDescription(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.g0.f():void");
    }
}
