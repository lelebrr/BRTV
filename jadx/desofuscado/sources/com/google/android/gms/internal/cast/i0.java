package com.google.android.gms.internal.cast;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import com.google.android.gms.common.images.WebImage;
import com.p2elite.brtv2.R;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 extends t4.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4217b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f4218c;
    public final Object d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f4219e;
    public final Object f;

    /* renamed from: g, reason: collision with root package name */
    public Object f4220g;

    public i0(ImageView imageView, ExpandedControllerActivity expandedControllerActivity) {
        this.f4217b = 1;
        this.f4218c = imageView;
        Context applicationContext = expandedControllerActivity.getApplicationContext();
        this.f = applicationContext;
        this.d = applicationContext.getString(R.string.cast_mute);
        this.f4219e = applicationContext.getString(R.string.cast_unmute);
        imageView.setEnabled(false);
        this.f4220g = null;
    }

    @Override // t4.a
    public final void b() {
        switch (this.f4217b) {
            case 0:
                h();
                break;
            default:
                f();
                break;
        }
    }

    @Override // t4.a
    public void c() {
        switch (this.f4217b) {
            case 1:
                this.f4218c.setEnabled(false);
                break;
        }
    }

    @Override // t4.a
    public final void d(q4.b bVar) {
        switch (this.f4217b) {
            case 0:
                super.d(bVar);
                ((c2.b) this.f4220g).f = new l7(3, this);
                g();
                h();
                break;
            default:
                if (((j0) this.f4220g) == null) {
                    this.f4220g = new j0(0, this);
                }
                j0 j0Var = (j0) this.f4220g;
                bVar.getClass();
                b5.l.b("Must be called from the main thread.");
                if (j0Var != null) {
                    bVar.d.add(j0Var);
                }
                super.d(bVar);
                f();
                break;
        }
    }

    @Override // t4.a
    public final void e() {
        j0 j0Var;
        switch (this.f4217b) {
            case 0:
                c2.b bVar = (c2.b) this.f4220g;
                bVar.j();
                bVar.f = null;
                g();
                this.f10136a = null;
                break;
            default:
                this.f4218c.setEnabled(false);
                q4.b bVarC = q4.a.b((Context) this.f).a().c();
                if (bVarC != null && (j0Var = (j0) this.f4220g) != null) {
                    b5.l.b("Must be called from the main thread.");
                    bVarC.d.remove(j0Var);
                }
                this.f10136a = null;
                break;
        }
    }

    public void f() {
        q4.b bVarC = q4.a.b((Context) this.f).a().c();
        ImageView imageView = this.f4218c;
        boolean z7 = false;
        if (bVarC == null || !bVarC.a()) {
            imageView.setEnabled(false);
            return;
        }
        r4.f fVar = this.f10136a;
        if (fVar == null || !fVar.i()) {
            imageView.setEnabled(false);
        } else {
            imageView.setEnabled(true);
        }
        b5.l.b("Must be called from the main thread.");
        p4.o oVar = bVarC.f9217i;
        if (oVar != null && oVar.j()) {
            b5.l.g("Not connected to device", oVar.j());
            if (oVar.f8903v) {
                z7 = true;
            }
        }
        imageView.setSelected(z7);
        imageView.setContentDescription(z7 ? (String) this.f4219e : (String) this.d);
    }

    public void g() {
        ImageView imageView = this.f4218c;
        View view = (View) this.f4219e;
        if (view != null) {
            view.setVisibility(0);
            imageView.setVisibility(4);
        }
        Bitmap bitmap = (Bitmap) this.d;
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        }
    }

    public void h() {
        MediaMetadata mediaMetadata;
        ArrayList arrayList;
        r4.f fVar = this.f10136a;
        if (fVar == null || !fVar.i()) {
            g();
            return;
        }
        MediaInfo mediaInfoE = fVar.e();
        Uri uri = null;
        if (mediaInfoE != null && (mediaMetadata = mediaInfoE.d) != null && (arrayList = mediaMetadata.f3716a) != null && arrayList.size() > 0) {
            uri = ((WebImage) arrayList.get(0)).f3951b;
        }
        if (uri == null) {
            g();
        } else {
            ((c2.b) this.f4220g).i(uri);
        }
    }

    public i0(ImageView imageView, ExpandedControllerActivity expandedControllerActivity, ImageHints imageHints, View view, u4.c cVar) {
        this.f4217b = 0;
        this.f4218c = imageView;
        this.f = cVar;
        this.d = null;
        this.f4219e = view;
        q4.a aVarC = q4.a.c(expandedControllerActivity);
        if (aVarC != null) {
            b5.l.b("Must be called from the main thread.");
            CastMediaOptions castMediaOptions = aVarC.d.f;
            if (castMediaOptions != null) {
                castMediaOptions.j();
            }
        }
        this.f4220g = new c2.b(expandedControllerActivity.getApplicationContext());
    }
}
