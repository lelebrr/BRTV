package k8;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends com.bumptech.glide.c {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7753c;
    public final Object d;

    public /* synthetic */ a(int i6, Object obj) {
        this.f7753c = i6;
        this.d = obj;
    }

    @Override // com.bumptech.glide.c
    public final com.bumptech.glide.c a(Serializable serializable) {
        switch (this.f7753c) {
            case 0:
                ((PrintStream) this.d).print(serializable);
                break;
            default:
                ((PrintWriter) this.d).print(serializable);
                break;
        }
        return this;
    }
}
