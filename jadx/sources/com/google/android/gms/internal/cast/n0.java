package com.google.android.gms.internal.cast;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n0 extends t4.a implements r4.e {

    /* renamed from: b, reason: collision with root package name */
    public final TextView f4358b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f4359c;
    public final r4.n d;

    public n0(View view, r4.n nVar) throws Resources.NotFoundException {
        TextView textView = (TextView) view.findViewById(R.id.live_indicator_text);
        this.f4358b = textView;
        ImageView imageView = (ImageView) view.findViewById(R.id.live_indicator_dot);
        this.f4359c = imageView;
        this.d = nVar;
        TypedArray typedArrayObtainStyledAttributes = imageView.getContext().obtainStyledAttributes(null, q4.d.f9222a, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(13, 0);
        typedArrayObtainStyledAttributes.recycle();
        imageView.getDrawable().setColorFilter(imageView.getContext().getResources().getColor(resourceId), PorterDuff.Mode.SRC_IN);
        textView.setVisibility(8);
        imageView.setVisibility(8);
    }

    @Override // r4.e
    public final void a() {
        f();
    }

    @Override // t4.a
    public final void b() {
        f();
    }

    @Override // t4.a
    public final void d(q4.b bVar) {
        super.d(bVar);
        r4.f fVar = this.f10136a;
        if (fVar != null) {
            fVar.a(this);
        }
        f();
    }

    @Override // t4.a
    public final void e() {
        r4.f fVar = this.f10136a;
        if (fVar != null) {
            fVar.s(this);
        }
        this.f10136a = null;
        f();
    }

    public final void f() {
        boolean zL;
        r4.f fVar = this.f10136a;
        ImageView imageView = this.f4359c;
        TextView textView = this.f4358b;
        if (fVar == null || !fVar.i() || !fVar.k()) {
            textView.setVisibility(8);
            imageView.setVisibility(8);
            return;
        }
        if (fVar.D()) {
            r4.n nVar = this.d;
            zL = nVar.l(nVar.e() + nVar.a());
        } else {
            zL = fVar.n();
        }
        textView.setVisibility(0);
        imageView.setVisibility(true == zL ? 0 : 8);
        l2.a(m2.CAF_EXPANDED_CONTROLLER_WITH_LIVE_CONTENT);
    }
}
