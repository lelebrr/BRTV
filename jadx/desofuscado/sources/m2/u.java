package m2;

import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.v;
import t9.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f8257a;

    /* renamed from: b, reason: collision with root package name */
    public k f8258b;

    /* renamed from: c, reason: collision with root package name */
    public x f8259c;
    public s d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8260e;

    public u(ImageView imageView) {
        this.f8257a = imageView;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        s sVar = this.d;
        if (sVar == null) {
            return;
        }
        this.f8260e = true;
        sVar.f8252a.b(sVar.f8253b);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        s sVar = this.d;
        if (sVar != null) {
            t9.u.c(sVar.f8255e);
            o2.a aVar = sVar.f8254c;
            boolean z7 = aVar instanceof v;
            androidx.lifecycle.p pVar = sVar.d;
            if (z7) {
                pVar.c(aVar);
            }
            pVar.c(sVar);
        }
    }
}
