package s0;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements g {

    /* renamed from: a, reason: collision with root package name */
    public final InputContentInfo f9704a;

    public f(Object obj) {
        this.f9704a = (InputContentInfo) obj;
    }

    @Override // s0.g
    public final ClipDescription a() {
        return this.f9704a.getDescription();
    }

    @Override // s0.g
    public final Object b() {
        return this.f9704a;
    }

    @Override // s0.g
    public final Uri c() {
        return this.f9704a.getContentUri();
    }

    @Override // s0.g
    public final void d() {
        this.f9704a.requestPermission();
    }

    @Override // s0.g
    public final Uri e() {
        return this.f9704a.getLinkUri();
    }

    public f(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f9704a = new InputContentInfo(uri, clipDescription, uri2);
    }
}
