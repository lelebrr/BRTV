package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.p1;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 extends androidx.recyclerview.widget.k0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2552a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final LayoutInflater f2553b;

    /* renamed from: c, reason: collision with root package name */
    public final Drawable f2554c;
    public final Drawable d;

    /* renamed from: e, reason: collision with root package name */
    public final Drawable f2555e;
    public final Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ c0 f2556g;

    public b0(c0 c0Var) {
        this.f2556g = c0Var;
        this.f2553b = LayoutInflater.from(c0Var.f2560g);
        Context context = c0Var.f2560g;
        this.f2554c = o9.d.o(context, R.attr.mediaRouteDefaultIconDrawable);
        this.d = o9.d.o(context, R.attr.mediaRouteTvIconDrawable);
        this.f2555e = o9.d.o(context, R.attr.mediaRouteSpeakerIconDrawable);
        this.f = o9.d.o(context, R.attr.mediaRouteSpeakerGroupIconDrawable);
        a();
    }

    public final void a() {
        ArrayList arrayList = this.f2552a;
        arrayList.clear();
        c0 c0Var = this.f2556g;
        arrayList.add(new y(c0Var.f2560g.getString(R.string.mr_chooser_title)));
        Iterator it = c0Var.f2562i.iterator();
        while (it.hasNext()) {
            arrayList.add(new y((q1.s0) it.next()));
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f2552a.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemViewType(int i6) {
        return ((y) this.f2552a.get(i6)).f2734b;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006f  */
    @Override // androidx.recyclerview.widget.k0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 r9, int r10) {
        /*
            r8 = this;
            int r0 = r8.getItemViewType(r10)
            java.util.ArrayList r1 = r8.f2552a
            java.lang.Object r10 = r1.get(r10)
            androidx.mediarouter.app.y r10 = (androidx.mediarouter.app.y) r10
            r1 = 1
            if (r0 == r1) goto L8e
            java.lang.String r2 = "RecyclerAdapter"
            r3 = 2
            if (r0 == r3) goto L1b
            java.lang.String r9 = "Cannot bind item to ViewHolder because of wrong view type"
            android.util.Log.w(r2, r9)
            goto L9e
        L1b:
            androidx.mediarouter.app.a0 r9 = (androidx.mediarouter.app.a0) r9
            r9.getClass()
            java.lang.Object r10 = r10.f2733a
            q1.s0 r10 = (q1.s0) r10
            r0 = 0
            android.view.View r4 = r9.f2546a
            r4.setVisibility(r0)
            android.widget.ProgressBar r0 = r9.f2548c
            r5 = 4
            r0.setVisibility(r5)
            androidx.mediarouter.app.z r0 = new androidx.mediarouter.app.z
            r5 = 0
            r0.<init>(r9, r5, r10)
            r4.setOnClickListener(r0)
            java.lang.String r0 = r10.d
            android.widget.TextView r4 = r9.d
            r4.setText(r0)
            androidx.mediarouter.app.b0 r0 = r9.f2549e
            r0.getClass()
            android.net.Uri r4 = r10.f
            if (r4 == 0) goto L6f
            androidx.mediarouter.app.c0 r5 = r0.f2556g     // Catch: java.io.IOException -> L5d
            android.content.Context r5 = r5.f2560g     // Catch: java.io.IOException -> L5d
            android.content.ContentResolver r5 = r5.getContentResolver()     // Catch: java.io.IOException -> L5d
            java.io.InputStream r5 = r5.openInputStream(r4)     // Catch: java.io.IOException -> L5d
            r6 = 0
            android.graphics.drawable.Drawable r2 = android.graphics.drawable.Drawable.createFromStream(r5, r6)     // Catch: java.io.IOException -> L5d
            if (r2 == 0) goto L6f
            goto L88
        L5d:
            r5 = move-exception
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "Failed to load "
            r6.<init>(r7)
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            android.util.Log.w(r2, r4, r5)
        L6f:
            int r2 = r10.f9140n
            if (r2 == r1) goto L85
            if (r2 == r3) goto L82
            boolean r10 = r10.e()
            if (r10 == 0) goto L7f
            android.graphics.drawable.Drawable r10 = r0.f
        L7d:
            r2 = r10
            goto L88
        L7f:
            android.graphics.drawable.Drawable r10 = r0.f2554c
            goto L7d
        L82:
            android.graphics.drawable.Drawable r10 = r0.f2555e
            goto L7d
        L85:
            android.graphics.drawable.Drawable r10 = r0.d
            goto L7d
        L88:
            android.widget.ImageView r9 = r9.f2547b
            r9.setImageDrawable(r2)
            goto L9e
        L8e:
            androidx.mediarouter.app.x r9 = (androidx.mediarouter.app.x) r9
            r9.getClass()
            java.lang.Object r10 = r10.f2733a
            java.lang.String r10 = r10.toString()
            android.widget.TextView r9 = r9.f2732a
            r9.setText(r10)
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.b0.onBindViewHolder(androidx.recyclerview.widget.p1, int):void");
    }

    @Override // androidx.recyclerview.widget.k0
    public final p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        LayoutInflater layoutInflater = this.f2553b;
        if (i6 != 1) {
            if (i6 == 2) {
                return new a0(this, layoutInflater.inflate(R.layout.mr_picker_route_item, viewGroup, false));
            }
            throw new IllegalStateException();
        }
        View viewInflate = layoutInflater.inflate(R.layout.mr_picker_header_item, viewGroup, false);
        x xVar = new x(viewInflate);
        xVar.f2732a = (TextView) viewInflate.findViewById(R.id.mr_picker_header_name);
        return xVar;
    }
}
