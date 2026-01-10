package t;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.Xml;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final b0 f9890a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9891b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9892c;

    public a0(Context context, b0 b0Var, XmlResourceParser xmlResourceParser) {
        this.f9891b = -1;
        this.f9892c = 17;
        this.f9890a = b0Var;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), y.j.f11220n);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            if (index == 1) {
                this.f9891b = typedArrayObtainStyledAttributes.getResourceId(index, this.f9891b);
            } else if (index == 0) {
                this.f9892c = typedArrayObtainStyledAttributes.getInt(index, this.f9892c);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v4, types: [android.view.View] */
    public final void a(MotionLayout motionLayout, int i6, b0 b0Var) {
        int i10 = this.f9891b;
        MotionLayout motionLayoutFindViewById = motionLayout;
        if (i10 != -1) {
            motionLayoutFindViewById = motionLayout.findViewById(i10);
        }
        if (motionLayoutFindViewById == null) {
            Log.e("MotionScene", "OnClick could not find id " + i10);
            return;
        }
        int i11 = b0Var.d;
        int i12 = b0Var.f9895c;
        if (i11 == -1) {
            motionLayoutFindViewById.setOnClickListener(this);
            return;
        }
        int i13 = this.f9892c;
        int i14 = i13 & 1;
        if (((i14 != 0 && i6 == i11) | (i14 != 0 && i6 == i11) | ((i13 & 256) != 0 && i6 == i11) | ((i13 & 16) != 0 && i6 == i12)) || ((i13 & 4096) != 0 && i6 == i12)) {
            motionLayoutFindViewById.setOnClickListener(this);
        }
    }

    public final void b(MotionLayout motionLayout) {
        int i6 = this.f9891b;
        if (i6 == -1) {
            return;
        }
        View viewFindViewById = motionLayout.findViewById(i6);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(null);
            return;
        }
        Log.e("MotionScene", " (*)  could not find id " + i6);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        b0 b0Var = this.f9890a;
        c0 c0Var = b0Var.f9900j;
        MotionLayout motionLayout = c0Var.f9909a;
        if (motionLayout.f974y) {
            if (b0Var.d == -1) {
                int currentState = motionLayout.getCurrentState();
                if (currentState == -1) {
                    motionLayout.B(b0Var.f9895c);
                    return;
                }
                b0 b0Var2 = new b0(c0Var, b0Var);
                b0Var2.d = currentState;
                b0Var2.f9895c = b0Var.f9895c;
                motionLayout.setTransition(b0Var2);
                motionLayout.o(1.0f);
                return;
            }
            b0 b0Var3 = c0Var.f9911c;
            int i6 = this.f9892c;
            int i10 = i6 & 1;
            boolean z7 = true;
            boolean z10 = false;
            boolean z11 = (i10 == 0 && (i6 & 256) == 0) ? false : true;
            int i11 = i6 & 16;
            if (i11 == 0 && (i6 & 4096) == 0) {
                z7 = false;
            }
            if (z11 && z7) {
                if (b0Var3 != b0Var) {
                    motionLayout.setTransition(b0Var);
                }
                if (motionLayout.getCurrentState() != motionLayout.getEndState() && motionLayout.getProgress() <= 0.5f) {
                    z10 = z11;
                    z7 = false;
                }
            } else {
                z10 = z11;
            }
            if (b0Var != b0Var3) {
                int i12 = b0Var.f9895c;
                int i13 = b0Var.d;
                if (i13 != -1) {
                    int i14 = motionLayout.f967u;
                    if (i14 != i13 && i14 != i12) {
                        return;
                    }
                } else if (motionLayout.f967u == i12) {
                    return;
                }
            }
            if (z10 && i10 != 0) {
                motionLayout.setTransition(b0Var);
                motionLayout.o(1.0f);
                return;
            }
            if (z7 && i11 != 0) {
                motionLayout.setTransition(b0Var);
                motionLayout.o(0.0f);
            } else if (z10 && (i6 & 256) != 0) {
                motionLayout.setTransition(b0Var);
                motionLayout.setProgress(1.0f);
            } else {
                if (!z7 || (i6 & 4096) == 0) {
                    return;
                }
                motionLayout.setTransition(b0Var);
                motionLayout.setProgress(0.0f);
            }
        }
    }
}
