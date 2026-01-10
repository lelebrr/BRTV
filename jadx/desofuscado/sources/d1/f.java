package d1;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends com.bumptech.glide.d {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f6007a;

    /* renamed from: b, reason: collision with root package name */
    public final d f6008b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6009c = true;

    public f(TextView textView) {
        this.f6007a = textView;
        this.f6008b = new d(textView);
    }

    @Override // com.bumptech.glide.d
    public final void E(boolean z7) {
        if (z7) {
            TextView textView = this.f6007a;
            textView.setTransformationMethod(I(textView.getTransformationMethod()));
        }
    }

    @Override // com.bumptech.glide.d
    public final void F(boolean z7) {
        this.f6009c = z7;
        TextView textView = this.f6007a;
        textView.setTransformationMethod(I(textView.getTransformationMethod()));
        textView.setFilters(o(textView.getFilters()));
    }

    @Override // com.bumptech.glide.d
    public final TransformationMethod I(TransformationMethod transformationMethod) {
        return this.f6009c ? ((transformationMethod instanceof i) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new i(transformationMethod) : transformationMethod instanceof i ? ((i) transformationMethod).f6014a : transformationMethod;
    }

    @Override // com.bumptech.glide.d
    public final InputFilter[] o(InputFilter[] inputFilterArr) {
        if (!this.f6009c) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i6 = 0; i6 < inputFilterArr.length; i6++) {
                InputFilter inputFilter = inputFilterArr[i6];
                if (inputFilter instanceof d) {
                    sparseArray.put(i6, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                if (sparseArray.indexOfKey(i11) < 0) {
                    inputFilterArr2[i10] = inputFilterArr[i11];
                    i10++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i12 = 0;
        while (true) {
            d dVar = this.f6008b;
            if (i12 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = dVar;
                return inputFilterArr3;
            }
            if (inputFilterArr[i12] == dVar) {
                return inputFilterArr;
            }
            i12++;
        }
    }

    @Override // com.bumptech.glide.d
    public final boolean t() {
        return this.f6009c;
    }
}
