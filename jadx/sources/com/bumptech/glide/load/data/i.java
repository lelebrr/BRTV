package com.bumptech.glide.load.data;

import android.os.ParcelFileDescriptor;
import e3.w;
import java.io.InputStream;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements g {

    /* renamed from: c, reason: collision with root package name */
    public static final h f3553c = new h(0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3554a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3555b;

    public i() {
        this.f3554a = 0;
        this.f3555b = new HashMap();
    }

    @Override // com.bumptech.glide.load.data.g
    public void b() {
        switch (this.f3554a) {
            case 1:
            case 2:
                break;
            default:
                ((w) this.f3555b).b();
                break;
        }
    }

    public ParcelFileDescriptor d() {
        return ((ParcelFileDescriptorRewinder$InternalRewinder) this.f3555b).rewind();
    }

    @Override // com.bumptech.glide.load.data.g
    public Object e() {
        switch (this.f3554a) {
            case 1:
                return ((ParcelFileDescriptorRewinder$InternalRewinder) this.f3555b).rewind();
            case 2:
                return this.f3555b;
            default:
                w wVar = (w) this.f3555b;
                wVar.reset();
                return wVar;
        }
    }

    public i(InputStream inputStream, y2.f fVar) {
        this.f3554a = 3;
        w wVar = new w(inputStream, fVar);
        this.f3555b = wVar;
        wVar.mark(5242880);
    }

    public i(ParcelFileDescriptor parcelFileDescriptor) {
        this.f3554a = 1;
        this.f3555b = new ParcelFileDescriptorRewinder$InternalRewinder(parcelFileDescriptor);
    }

    public i(Object obj) {
        this.f3554a = 2;
        this.f3555b = obj;
    }

    private final void a() {
    }

    private final void c() {
    }
}
