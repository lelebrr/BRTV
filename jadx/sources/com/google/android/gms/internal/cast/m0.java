package com.google.android.gms.internal.cast;

import android.widget.TextView;
import com.google.android.gms.cast.MediaInfo;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m0 extends t4.a implements r4.e {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4311b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f4312c;
    public final r4.n d;

    public m0(TextView textView, r4.n nVar, int i6) {
        this.f4311b = i6;
        switch (i6) {
            case 1:
                this.f4312c = textView;
                this.d = nVar;
                textView.setText(textView.getContext().getString(R.string.cast_invalid_stream_duration_text));
                break;
            default:
                this.f4312c = textView;
                this.d = nVar;
                textView.setText(textView.getContext().getString(R.string.cast_invalid_stream_duration_text));
                break;
        }
    }

    @Override // r4.e
    public final void a() {
        switch (this.f4311b) {
            case 0:
                f();
                break;
            default:
                f();
                break;
        }
    }

    @Override // t4.a
    public final void b() {
        switch (this.f4311b) {
            case 0:
                f();
                break;
            default:
                f();
                break;
        }
    }

    @Override // t4.a
    public final void d(q4.b bVar) {
        switch (this.f4311b) {
            case 0:
                super.d(bVar);
                r4.f fVar = this.f10136a;
                if (fVar != null) {
                    fVar.a(this);
                }
                f();
                break;
            default:
                super.d(bVar);
                r4.f fVar2 = this.f10136a;
                if (fVar2 != null) {
                    fVar2.a(this);
                }
                f();
                break;
        }
    }

    @Override // t4.a
    public final void e() {
        switch (this.f4311b) {
            case 0:
                r4.f fVar = this.f10136a;
                if (fVar != null) {
                    fVar.s(this);
                }
                this.f10136a = null;
                f();
                break;
            default:
                r4.f fVar2 = this.f10136a;
                if (fVar2 != null) {
                    fVar2.s(this);
                }
                this.f10136a = null;
                f();
                break;
        }
    }

    public final void f() {
        switch (this.f4311b) {
            case 0:
                r4.f fVar = this.f10136a;
                TextView textView = this.f4312c;
                if (fVar != null && fVar.i()) {
                    boolean zK = fVar.k();
                    r4.n nVar = this.d;
                    if (!zK || nVar.h() != null) {
                        textView.setVisibility(0);
                        textView.setText(nVar.k(nVar.e() + nVar.b()));
                        break;
                    } else {
                        textView.setVisibility(8);
                        break;
                    }
                } else {
                    textView.setText(textView.getContext().getString(R.string.cast_invalid_stream_duration_text));
                    break;
                }
                break;
            default:
                r4.f fVar2 = this.f10136a;
                TextView textView2 = this.f4312c;
                if (fVar2 != null && fVar2.i()) {
                    long jC = fVar2.c();
                    if (jC == MediaInfo.f3683s) {
                        jC = fVar2.h();
                    }
                    textView2.setText(this.d.k(jC));
                    break;
                } else {
                    textView2.setText(textView2.getContext().getString(R.string.cast_invalid_stream_duration_text));
                    break;
                }
                break;
        }
    }
}
