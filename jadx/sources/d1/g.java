package d1;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends com.bumptech.glide.d {

    /* renamed from: a, reason: collision with root package name */
    public final f f6010a;

    public g(TextView textView) {
        this.f6010a = new f(textView);
    }

    @Override // com.bumptech.glide.d
    public final void E(boolean z7) {
        if (b1.i.f3106j != null) {
            this.f6010a.E(z7);
        }
    }

    @Override // com.bumptech.glide.d
    public final void F(boolean z7) {
        boolean z10 = b1.i.f3106j != null;
        f fVar = this.f6010a;
        if (z10) {
            fVar.F(z7);
        } else {
            fVar.f6009c = z7;
        }
    }

    @Override // com.bumptech.glide.d
    public final TransformationMethod I(TransformationMethod transformationMethod) {
        return !(b1.i.f3106j != null) ? transformationMethod : this.f6010a.I(transformationMethod);
    }

    @Override // com.bumptech.glide.d
    public final InputFilter[] o(InputFilter[] inputFilterArr) {
        return !(b1.i.f3106j != null) ? inputFilterArr : this.f6010a.o(inputFilterArr);
    }

    @Override // com.bumptech.glide.d
    public final boolean t() {
        return this.f6010a.f6009c;
    }
}
