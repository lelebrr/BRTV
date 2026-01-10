package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.p1;
import com.p2elite.brtv2.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import q1.u0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o0 extends androidx.recyclerview.widget.k0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2644a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final LayoutInflater f2645b;

    /* renamed from: c, reason: collision with root package name */
    public final Drawable f2646c;
    public final Drawable d;

    /* renamed from: e, reason: collision with root package name */
    public final Drawable f2647e;
    public final Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public m0 f2648g;

    /* renamed from: h, reason: collision with root package name */
    public final int f2649h;

    /* renamed from: i, reason: collision with root package name */
    public final AccelerateDecelerateInterpolator f2650i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ q0 f2651j;

    public o0(q0 q0Var) {
        this.f2651j = q0Var;
        this.f2645b = LayoutInflater.from(q0Var.f2665m);
        Context context = q0Var.f2665m;
        this.f2646c = o9.d.o(context, R.attr.mediaRouteDefaultIconDrawable);
        this.d = o9.d.o(context, R.attr.mediaRouteTvIconDrawable);
        this.f2647e = o9.d.o(context, R.attr.mediaRouteSpeakerIconDrawable);
        this.f = o9.d.o(context, R.attr.mediaRouteSpeakerGroupIconDrawable);
        this.f2649h = context.getResources().getInteger(R.integer.mr_cast_volume_slider_layout_animation_duration_ms);
        this.f2650i = new AccelerateDecelerateInterpolator();
        d();
    }

    public final void a(int i6, View view) {
        m mVar = new m(i6, view.getLayoutParams().height, 1, view);
        mVar.setAnimationListener(new o(2, this));
        mVar.setDuration(this.f2649h);
        mVar.setInterpolator(this.f2650i);
        view.startAnimation(mVar);
    }

    public final Drawable b(q1.s0 s0Var) {
        Uri uri = s0Var.f;
        if (uri != null) {
            try {
                Drawable drawableCreateFromStream = Drawable.createFromStream(this.f2651j.f2665m.getContentResolver().openInputStream(uri), null);
                if (drawableCreateFromStream != null) {
                    return drawableCreateFromStream;
                }
            } catch (IOException e5) {
                Log.w("MediaRouteCtrlDialog", "Failed to load " + uri, e5);
            }
        }
        int i6 = s0Var.f9140n;
        return i6 != 1 ? i6 != 2 ? s0Var.e() ? this.f : this.f2646c : this.f2647e : this.d;
    }

    public final void c() {
        q0 q0Var = this.f2651j;
        q0Var.f2664l.clear();
        ArrayList arrayList = q0Var.f2664l;
        ArrayList arrayList2 = q0Var.f2662j;
        ArrayList arrayList3 = new ArrayList();
        q1.p0 p0VarA = q0Var.f2660h.a();
        if (p0VarA != null) {
            q1.r0 r0Var = q0Var.f2660h.f9129a;
            r0Var.getClass();
            u0.b();
            for (q1.s0 s0Var : Collections.unmodifiableList(r0Var.f9123b)) {
                if (p0VarA.o(s0Var)) {
                    arrayList3.add(s0Var);
                }
            }
        }
        HashSet hashSet = new HashSet(arrayList2);
        hashSet.removeAll(arrayList3);
        arrayList.addAll(hashSet);
        notifyDataSetChanged();
    }

    public final void d() {
        ArrayList arrayList = this.f2644a;
        arrayList.clear();
        q0 q0Var = this.f2651j;
        this.f2648g = new m0(1, q0Var.f2660h);
        ArrayList arrayList2 = q0Var.f2661i;
        if (arrayList2.isEmpty()) {
            arrayList.add(new m0(3, q0Var.f2660h));
        } else {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(new m0(3, (q1.s0) it.next()));
            }
        }
        ArrayList arrayList3 = q0Var.f2662j;
        boolean z7 = false;
        if (!arrayList3.isEmpty()) {
            Iterator it2 = arrayList3.iterator();
            boolean z10 = false;
            while (it2.hasNext()) {
                q1.s0 s0Var = (q1.s0) it2.next();
                if (!arrayList2.contains(s0Var)) {
                    if (!z10) {
                        q0Var.f2660h.getClass();
                        q1.b0 b0VarB = q1.s0.b();
                        String strK = b0VarB != null ? b0VarB.k() : null;
                        if (TextUtils.isEmpty(strK)) {
                            strK = q0Var.f2665m.getString(R.string.mr_dialog_groupable_header);
                        }
                        arrayList.add(new m0(2, strK));
                        z10 = true;
                    }
                    arrayList.add(new m0(3, s0Var));
                }
            }
        }
        ArrayList arrayList4 = q0Var.f2663k;
        if (!arrayList4.isEmpty()) {
            Iterator it3 = arrayList4.iterator();
            while (it3.hasNext()) {
                q1.s0 s0Var2 = (q1.s0) it3.next();
                q1.s0 s0Var3 = q0Var.f2660h;
                if (s0Var3 != s0Var2) {
                    if (!z7) {
                        s0Var3.getClass();
                        q1.b0 b0VarB2 = q1.s0.b();
                        String strL = b0VarB2 != null ? b0VarB2.l() : null;
                        if (TextUtils.isEmpty(strL)) {
                            strL = q0Var.f2665m.getString(R.string.mr_dialog_transferable_header);
                        }
                        arrayList.add(new m0(2, strL));
                        z7 = true;
                    }
                    arrayList.add(new m0(4, s0Var2));
                }
            }
        }
        c();
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f2644a.size() + 1;
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemViewType(int i6) {
        return (i6 == 0 ? this.f2648g : (m0) this.f2644a.get(i6 - 1)).f2629b;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(p1 p1Var, int i6) {
        q1.p0 p0VarA;
        q1.z zVar;
        ArrayList arrayList = this.f2644a;
        int i10 = (i6 == 0 ? this.f2648g : (m0) arrayList.get(i6 - 1)).f2629b;
        boolean z7 = true;
        m0 m0Var = i6 == 0 ? this.f2648g : (m0) arrayList.get(i6 - 1);
        q0 q0Var = this.f2651j;
        int i11 = 0;
        if (i10 == 1) {
            q0Var.f2673u.put(((q1.s0) m0Var.f2628a).f9131c, (h0) p1Var);
            k0 k0Var = (k0) p1Var;
            View view = k0Var.itemView;
            q0 q0Var2 = k0Var.f2621g.f2651j;
            if (q0Var2.R && Collections.unmodifiableList(q0Var2.f2660h.f9148v).size() > 1) {
                i11 = k0Var.f;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = i11;
            view.setLayoutParams(layoutParams);
            q1.s0 s0Var = (q1.s0) m0Var.f2628a;
            k0Var.b(s0Var);
            k0Var.f2620e.setText(s0Var.d);
            return;
        }
        if (i10 == 2) {
            l0 l0Var = (l0) p1Var;
            l0Var.getClass();
            l0Var.f2624a.setText(m0Var.f2628a.toString());
            return;
        }
        float f = 1.0f;
        if (i10 != 3) {
            if (i10 != 4) {
                throw new IllegalStateException();
            }
            j0 j0Var = (j0) p1Var;
            j0Var.getClass();
            q1.s0 s0Var2 = (q1.s0) m0Var.f2628a;
            j0Var.f = s0Var2;
            ImageView imageView = j0Var.f2614b;
            imageView.setVisibility(0);
            j0Var.f2615c.setVisibility(4);
            o0 o0Var = j0Var.f2617g;
            List listUnmodifiableList = Collections.unmodifiableList(o0Var.f2651j.f2660h.f9148v);
            if (listUnmodifiableList.size() == 1 && listUnmodifiableList.get(0) == s0Var2) {
                f = j0Var.f2616e;
            }
            View view2 = j0Var.f2613a;
            view2.setAlpha(f);
            view2.setOnClickListener(new g0(3, j0Var));
            imageView.setImageDrawable(o0Var.b(s0Var2));
            j0Var.d.setText(s0Var2.d);
            return;
        }
        q0Var.f2673u.put(((q1.s0) m0Var.f2628a).f9131c, (h0) p1Var);
        n0 n0Var = (n0) p1Var;
        n0Var.getClass();
        q1.s0 s0Var3 = (q1.s0) m0Var.f2628a;
        o0 o0Var2 = n0Var.f2641n;
        q0 q0Var3 = o0Var2.f2651j;
        if (s0Var3 == q0Var3.f2660h && Collections.unmodifiableList(s0Var3.f9148v).size() > 0) {
            Iterator it = Collections.unmodifiableList(s0Var3.f9148v).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                q1.s0 s0Var4 = (q1.s0) it.next();
                if (!q0Var3.f2662j.contains(s0Var4)) {
                    s0Var3 = s0Var4;
                    break;
                }
            }
        }
        n0Var.b(s0Var3);
        Drawable drawableB = o0Var2.b(s0Var3);
        ImageView imageView2 = n0Var.f;
        imageView2.setImageDrawable(drawableB);
        n0Var.f2635h.setText(s0Var3.d);
        CheckBox checkBox = n0Var.f2637j;
        checkBox.setVisibility(0);
        boolean zD = n0Var.d(s0Var3);
        boolean z10 = !q0Var3.f2664l.contains(s0Var3) && (!n0Var.d(s0Var3) || Collections.unmodifiableList(q0Var3.f2660h.f9148v).size() >= 2) && !(n0Var.d(s0Var3) && ((p0VarA = q0Var3.f2660h.a()) == null || (zVar = (q1.z) p0VarA.f9106x.get(s0Var3.f9131c)) == null || !zVar.f9187c));
        checkBox.setChecked(zD);
        n0Var.f2634g.setVisibility(4);
        imageView2.setVisibility(0);
        View view3 = n0Var.f2633e;
        view3.setEnabled(z10);
        checkBox.setEnabled(z10);
        n0Var.f2607b.setEnabled(z10 || zD);
        if (!z10 && !zD) {
            z7 = false;
        }
        n0Var.f2608c.setEnabled(z7);
        g0 g0Var = n0Var.f2640m;
        view3.setOnClickListener(g0Var);
        checkBox.setOnClickListener(g0Var);
        if (zD && !n0Var.f2606a.e()) {
            i11 = n0Var.f2639l;
        }
        RelativeLayout relativeLayout = n0Var.f2636i;
        ViewGroup.LayoutParams layoutParams2 = relativeLayout.getLayoutParams();
        layoutParams2.height = i11;
        relativeLayout.setLayoutParams(layoutParams2);
        float f3 = n0Var.f2638k;
        view3.setAlpha((z10 || zD) ? 1.0f : f3);
        if (!z10 && zD) {
            f = f3;
        }
        checkBox.setAlpha(f);
    }

    @Override // androidx.recyclerview.widget.k0
    public final p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        LayoutInflater layoutInflater = this.f2645b;
        if (i6 == 1) {
            return new k0(this, layoutInflater.inflate(R.layout.mr_cast_group_volume_item, viewGroup, false));
        }
        if (i6 == 2) {
            return new l0(layoutInflater.inflate(R.layout.mr_cast_header_item, viewGroup, false));
        }
        if (i6 == 3) {
            return new n0(this, layoutInflater.inflate(R.layout.mr_cast_route_item, viewGroup, false));
        }
        if (i6 == 4) {
            return new j0(this, layoutInflater.inflate(R.layout.mr_cast_group_item, viewGroup, false));
        }
        throw new IllegalStateException();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onViewRecycled(p1 p1Var) {
        super.onViewRecycled(p1Var);
        this.f2651j.f2673u.values().remove(p1Var);
    }
}
