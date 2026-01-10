package com.google.android.gms.internal.cast;

import android.view.View;
import android.widget.ImageView;
import androidx.media3.exoplayer.Renderer;
import com.google.android.gms.cast.AdBreakClipInfo;
import com.google.android.gms.cast.AdBreakInfo;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.widget.CastSeekBar;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h0 extends t4.a implements r4.e {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4171b;

    /* renamed from: c, reason: collision with root package name */
    public final View f4172c;
    public final r4.n d;

    public h0(ImageView imageView, r4.n nVar, int i6) {
        this.f4171b = i6;
        switch (i6) {
            case 1:
                this.f4172c = imageView;
                this.d = nVar;
                imageView.setEnabled(false);
                break;
            default:
                this.f4172c = imageView;
                this.d = nVar;
                imageView.setEnabled(false);
                break;
        }
    }

    @Override // r4.e
    public final void a() {
        switch (this.f4171b) {
            case 0:
                f();
                break;
            case 1:
                f();
                break;
            default:
                g();
                f();
                break;
        }
    }

    @Override // t4.a
    public final void b() {
        switch (this.f4171b) {
            case 0:
                f();
                break;
            case 1:
                f();
                break;
            default:
                h();
                break;
        }
    }

    @Override // t4.a
    public void c() {
        switch (this.f4171b) {
            case 0:
                ((ImageView) this.f4172c).setEnabled(false);
                break;
            case 1:
                ((ImageView) this.f4172c).setEnabled(false);
                break;
        }
    }

    @Override // t4.a
    public final void d(q4.b bVar) {
        switch (this.f4171b) {
            case 0:
                super.d(bVar);
                r4.f fVar = this.f10136a;
                if (fVar != null) {
                    fVar.a(this);
                }
                f();
                break;
            case 1:
                super.d(bVar);
                r4.f fVar2 = this.f10136a;
                if (fVar2 != null) {
                    fVar2.a(this);
                }
                f();
                break;
            default:
                super.d(bVar);
                r4.f fVar3 = this.f10136a;
                if (fVar3 != null) {
                    fVar3.a(this);
                }
                h();
                break;
        }
    }

    @Override // t4.a
    public final void e() {
        switch (this.f4171b) {
            case 0:
                r4.f fVar = this.f10136a;
                if (fVar != null) {
                    fVar.s(this);
                }
                ((ImageView) this.f4172c).setEnabled(false);
                this.f10136a = null;
                f();
                break;
            case 1:
                r4.f fVar2 = this.f10136a;
                if (fVar2 != null) {
                    fVar2.s(this);
                }
                ((ImageView) this.f4172c).setEnabled(false);
                this.f10136a = null;
                f();
                break;
            default:
                r4.f fVar3 = this.f10136a;
                if (fVar3 != null) {
                    fVar3.s(this);
                }
                this.f10136a = null;
                h();
                break;
        }
    }

    public final void f() {
        switch (this.f4171b) {
            case 0:
                r4.f fVar = this.f10136a;
                ImageView imageView = (ImageView) this.f4172c;
                boolean z7 = false;
                if (fVar != null && fVar.i() && !fVar.o()) {
                    if (!fVar.k()) {
                        imageView.setEnabled(true);
                        break;
                    } else {
                        if (fVar.D()) {
                            r4.n nVar = this.d;
                            if (!nVar.l(nVar.e() + nVar.a())) {
                                z7 = true;
                            }
                        }
                        imageView.setEnabled(z7);
                        break;
                    }
                } else {
                    imageView.setEnabled(false);
                    break;
                }
                break;
            case 1:
                r4.f fVar2 = this.f10136a;
                ImageView imageView2 = (ImageView) this.f4172c;
                boolean z10 = false;
                if (fVar2 != null && fVar2.i() && !fVar2.o()) {
                    if (!fVar2.k()) {
                        imageView2.setEnabled(true);
                        break;
                    } else {
                        if (fVar2.D()) {
                            r4.n nVar2 = this.d;
                            if ((nVar2.e() + nVar2.a()) - (nVar2.e() + nVar2.d()) >= Renderer.DEFAULT_DURATION_TO_PROGRESS_US) {
                                z10 = true;
                            }
                        }
                        imageView2.setEnabled(z10);
                        break;
                    }
                } else {
                    imageView2.setEnabled(false);
                    break;
                }
            default:
                r4.f fVar3 = this.f10136a;
                CastSeekBar castSeekBar = (CastSeekBar) this.f4172c;
                if (fVar3 != null && fVar3.o()) {
                    int iB = (int) fVar3.b();
                    MediaStatus mediaStatusF = fVar3.f();
                    AdBreakClipInfo adBreakClipInfoJ = mediaStatusF != null ? mediaStatusF.j() : null;
                    int i6 = adBreakClipInfoJ != null ? (int) adBreakClipInfoJ.f3627c : iB;
                    if (iB < 0) {
                        iB = 0;
                    }
                    if (i6 < 0) {
                        i6 = 1;
                    }
                    if (iB > i6) {
                        i6 = iB;
                    }
                    n0.r rVar = new n0.r();
                    rVar.f8346a = iB;
                    rVar.f8347b = i6;
                    castSeekBar.d = rVar;
                    castSeekBar.postInvalidate();
                    break;
                } else {
                    castSeekBar.d = null;
                    castSeekBar.postInvalidate();
                    break;
                }
                break;
        }
    }

    public void g() {
        r4.f fVar = this.f10136a;
        CastSeekBar castSeekBar = (CastSeekBar) this.f4172c;
        if (fVar == null || !fVar.i() || fVar.o()) {
            castSeekBar.setEnabled(false);
        } else {
            castSeekBar.setEnabled(true);
        }
        r4.n nVar = this.d;
        int iA = nVar.a();
        int iB = nVar.b();
        int i6 = (int) (-nVar.e());
        r4.f fVar2 = this.f10136a;
        int iD = (fVar2 != null && fVar2.i() && fVar2.D()) ? nVar.d() : nVar.a();
        r4.f fVar3 = this.f10136a;
        int iC = (fVar3 != null && fVar3.i() && fVar3.D()) ? nVar.c() : nVar.a();
        r4.f fVar4 = this.f10136a;
        boolean z7 = fVar4 != null && fVar4.i() && fVar4.D();
        if (castSeekBar.f3852b) {
            return;
        }
        u4.b bVar = new u4.b();
        bVar.f10333a = iA;
        bVar.f10334b = iB;
        bVar.f10335c = i6;
        bVar.d = iD;
        bVar.f10336e = iC;
        bVar.f = z7;
        castSeekBar.f3851a = bVar;
        castSeekBar.f3853c = null;
        s2.c cVar = castSeekBar.f;
        if (cVar != null) {
            castSeekBar.getProgress();
            cVar.f(false);
        }
        castSeekBar.postInvalidate();
    }

    public void h() {
        g();
        r4.f fVar = this.f10136a;
        ArrayList arrayList = null;
        MediaInfo mediaInfoE = fVar == null ? null : fVar.e();
        CastSeekBar castSeekBar = (CastSeekBar) this.f4172c;
        if (fVar == null || !fVar.i() || fVar.l() || mediaInfoE == null) {
            castSeekBar.a(null);
        } else {
            ArrayList arrayList2 = mediaInfoE.f3690i;
            List<AdBreakInfo> listUnmodifiableList = arrayList2 == null ? null : Collections.unmodifiableList(arrayList2);
            if (listUnmodifiableList != null) {
                arrayList = new ArrayList();
                for (AdBreakInfo adBreakInfo : listUnmodifiableList) {
                    if (adBreakInfo != null) {
                        r4.n nVar = this.d;
                        long j10 = adBreakInfo.f3635a;
                        int iB = j10 == -1000 ? nVar.b() : Math.min((int) (j10 - nVar.e()), nVar.b());
                        if (iB >= 0) {
                            arrayList.add(new u4.a(iB, (int) adBreakInfo.f3637c, adBreakInfo.f3639g));
                        }
                    }
                }
            }
            castSeekBar.a(arrayList);
        }
        f();
    }

    public h0(CastSeekBar castSeekBar, r4.n nVar) {
        this.f4171b = 2;
        this.f4172c = castSeekBar;
        this.d = nVar;
        castSeekBar.setEnabled(false);
        castSeekBar.a(null);
        castSeekBar.d = null;
        castSeekBar.postInvalidate();
    }
}
