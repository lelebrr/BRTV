package androidx.mediarouter.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.p2elite.brtv2.R;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends ArrayAdapter implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final LayoutInflater f2570a;

    /* renamed from: b, reason: collision with root package name */
    public final Drawable f2571b;

    /* renamed from: c, reason: collision with root package name */
    public final Drawable f2572c;
    public final Drawable d;

    /* renamed from: e, reason: collision with root package name */
    public final Drawable f2573e;

    public d(Context context, ArrayList arrayList) {
        super(context, 0, arrayList);
        this.f2570a = LayoutInflater.from(context);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.mediaRouteDefaultIconDrawable, R.attr.mediaRouteTvIconDrawable, R.attr.mediaRouteSpeakerIconDrawable, R.attr.mediaRouteSpeakerGroupIconDrawable});
        this.f2571b = com.bumptech.glide.c.h(context, typedArrayObtainStyledAttributes.getResourceId(0, 0));
        this.f2572c = com.bumptech.glide.c.h(context, typedArrayObtainStyledAttributes.getResourceId(1, 0));
        this.d = com.bumptech.glide.c.h(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
        this.f2573e = com.bumptech.glide.c.h(context, typedArrayObtainStyledAttributes.getResourceId(3, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean areAllItemsEnabled() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0090  */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            r6 = this;
            r0 = 0
            if (r8 != 0) goto Lc
            android.view.LayoutInflater r8 = r6.f2570a
            r1 = 2131624142(0x7f0e00ce, float:1.8875455E38)
            android.view.View r8 = r8.inflate(r1, r9, r0)
        Lc:
            java.lang.Object r7 = r6.getItem(r7)
            q1.s0 r7 = (q1.s0) r7
            r9 = 2131428054(0x7f0b02d6, float:1.8477742E38)
            android.view.View r9 = r8.findViewById(r9)
            android.widget.TextView r9 = (android.widget.TextView) r9
            r1 = 2131428052(0x7f0b02d4, float:1.8477738E38)
            android.view.View r1 = r8.findViewById(r1)
            android.widget.TextView r1 = (android.widget.TextView) r1
            java.lang.String r2 = r7.d
            r9.setText(r2)
            java.lang.String r2 = r7.f9132e
            int r3 = r7.f9135i
            r4 = 1
            r5 = 2
            if (r3 == r5) goto L33
            if (r3 != r4) goto L45
        L33:
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto L45
            r3 = 80
            r9.setGravity(r3)
            r1.setVisibility(r0)
            r1.setText(r2)
            goto L54
        L45:
            r0 = 16
            r9.setGravity(r0)
            r9 = 8
            r1.setVisibility(r9)
            java.lang.String r9 = ""
            r1.setText(r9)
        L54:
            boolean r9 = r7.f9133g
            r8.setEnabled(r9)
            r9 = 2131428053(0x7f0b02d5, float:1.847774E38)
            android.view.View r9 = r8.findViewById(r9)
            android.widget.ImageView r9 = (android.widget.ImageView) r9
            if (r9 == 0) goto Lac
            android.net.Uri r0 = r7.f
            if (r0 == 0) goto L90
            android.content.Context r1 = r6.getContext()     // Catch: java.io.IOException -> L7c
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch: java.io.IOException -> L7c
            java.io.InputStream r1 = r1.openInputStream(r0)     // Catch: java.io.IOException -> L7c
            r2 = 0
            android.graphics.drawable.Drawable r0 = android.graphics.drawable.Drawable.createFromStream(r1, r2)     // Catch: java.io.IOException -> L7c
            if (r0 == 0) goto L90
            goto La9
        L7c:
            r1 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Failed to load "
            r2.<init>(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            java.lang.String r2 = "MediaRouteChooserDialog"
            android.util.Log.w(r2, r0, r1)
        L90:
            int r0 = r7.f9140n
            if (r0 == r4) goto La6
            if (r0 == r5) goto La3
            boolean r7 = r7.e()
            if (r7 == 0) goto La0
            android.graphics.drawable.Drawable r7 = r6.f2573e
        L9e:
            r0 = r7
            goto La9
        La0:
            android.graphics.drawable.Drawable r7 = r6.f2571b
            goto L9e
        La3:
            android.graphics.drawable.Drawable r7 = r6.d
            goto L9e
        La6:
            android.graphics.drawable.Drawable r7 = r6.f2572c
            goto L9e
        La9:
            r9.setImageDrawable(r0)
        Lac:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.d.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean isEnabled(int i6) {
        return ((q1.s0) getItem(i6)).f9133g;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j10) {
        q1.s0 s0Var = (q1.s0) getItem(i6);
        ImageView imageView = (ImageView) view.findViewById(R.id.mr_chooser_route_icon);
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_chooser_route_progress_bar);
        if (imageView != null && progressBar != null) {
            imageView.setVisibility(8);
            progressBar.setVisibility(0);
        }
        s0Var.l(true);
    }
}
