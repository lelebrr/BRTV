package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.g3;
import java.util.HashMap;
import y1.c0;
import y1.e;
import y1.e0;
import y1.p;
import y1.q;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ChangeImageTransform extends Transition {

    /* renamed from: x, reason: collision with root package name */
    public static final String[] f3000x = {"android:changeImageTransform:matrix", "android:changeImageTransform:bounds"};

    /* renamed from: y, reason: collision with root package name */
    public static final e f3001y = new e();

    /* renamed from: z, reason: collision with root package name */
    public static final g3 f3002z = new g3("animatedTransform", Matrix.class, 15);

    public ChangeImageTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void F(y1.e0 r6) {
        /*
            android.view.View r0 = r6.f11260b
            boolean r1 = r0 instanceof android.widget.ImageView
            if (r1 == 0) goto Lca
            int r1 = r0.getVisibility()
            if (r1 == 0) goto Le
            goto Lca
        Le:
            r1 = r0
            android.widget.ImageView r1 = (android.widget.ImageView) r1
            android.graphics.drawable.Drawable r2 = r1.getDrawable()
            if (r2 != 0) goto L18
            return
        L18:
            java.util.HashMap r6 = r6.f11259a
            int r2 = r0.getLeft()
            int r3 = r0.getTop()
            int r4 = r0.getRight()
            int r0 = r0.getBottom()
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>(r2, r3, r4, r0)
            java.lang.String r0 = "android:changeImageTransform:bounds"
            r6.put(r0, r5)
            android.graphics.drawable.Drawable r0 = r1.getDrawable()
            int r2 = r0.getIntrinsicWidth()
            if (r2 <= 0) goto Lbb
            int r0 = r0.getIntrinsicHeight()
            if (r0 <= 0) goto Lbb
            int[] r0 = y1.f.f11262a
            android.widget.ImageView$ScaleType r2 = r1.getScaleType()
            int r2 = r2.ordinal()
            r0 = r0[r2]
            r2 = 1
            if (r0 == r2) goto L97
            r2 = 2
            if (r0 == r2) goto L57
            goto Lbb
        L57:
            android.graphics.drawable.Drawable r0 = r1.getDrawable()
            int r2 = r0.getIntrinsicWidth()
            int r3 = r1.getWidth()
            float r3 = (float) r3
            float r2 = (float) r2
            float r4 = r3 / r2
            int r0 = r0.getIntrinsicHeight()
            int r1 = r1.getHeight()
            float r1 = (float) r1
            float r0 = (float) r0
            float r5 = r1 / r0
            float r4 = java.lang.Math.max(r4, r5)
            float r2 = r2 * r4
            float r0 = r0 * r4
            float r3 = r3 - r2
            r2 = 1073741824(0x40000000, float:2.0)
            float r3 = r3 / r2
            int r3 = java.lang.Math.round(r3)
            float r1 = r1 - r0
            float r1 = r1 / r2
            int r0 = java.lang.Math.round(r1)
            android.graphics.Matrix r1 = new android.graphics.Matrix
            r1.<init>()
            r1.postScale(r4, r4)
            float r2 = (float) r3
            float r0 = (float) r0
            r1.postTranslate(r2, r0)
            goto Lc5
        L97:
            android.graphics.drawable.Drawable r0 = r1.getDrawable()
            android.graphics.Matrix r2 = new android.graphics.Matrix
            r2.<init>()
            int r3 = r1.getWidth()
            float r3 = (float) r3
            int r4 = r0.getIntrinsicWidth()
            float r4 = (float) r4
            float r3 = r3 / r4
            int r1 = r1.getHeight()
            float r1 = (float) r1
            int r0 = r0.getIntrinsicHeight()
            float r0 = (float) r0
            float r1 = r1 / r0
            r2.postScale(r3, r1)
            r1 = r2
            goto Lc5
        Lbb:
            android.graphics.Matrix r0 = new android.graphics.Matrix
            android.graphics.Matrix r1 = r1.getImageMatrix()
            r0.<init>(r1)
            r1 = r0
        Lc5:
            java.lang.String r0 = "android:changeImageTransform:matrix"
            r6.put(r0, r1)
        Lca:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeImageTransform.F(y1.e0):void");
    }

    @Override // androidx.transition.Transition
    public final void c(e0 e0Var) {
        F(e0Var);
    }

    @Override // androidx.transition.Transition
    public final void f(e0 e0Var) {
        F(e0Var);
    }

    @Override // androidx.transition.Transition
    public final Animator j(ViewGroup viewGroup, e0 e0Var, e0 e0Var2) {
        if (e0Var != null && e0Var2 != null) {
            HashMap map = e0Var.f11259a;
            Rect rect = (Rect) map.get("android:changeImageTransform:bounds");
            HashMap map2 = e0Var2.f11259a;
            Rect rect2 = (Rect) map2.get("android:changeImageTransform:bounds");
            if (rect != null && rect2 != null) {
                Matrix matrix = (Matrix) map.get("android:changeImageTransform:matrix");
                Object obj = (Matrix) map2.get("android:changeImageTransform:matrix");
                boolean z7 = (matrix == null && obj == null) || (matrix != null && matrix.equals(obj));
                if (rect.equals(rect2) && z7) {
                    return null;
                }
                ImageView imageView = (ImageView) e0Var2.f11260b;
                Drawable drawable = imageView.getDrawable();
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                g3 g3Var = f3002z;
                if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                    e eVar = f3001y;
                    p pVar = q.f11319a;
                    return ObjectAnimator.ofObject(imageView, g3Var, eVar, pVar, pVar);
                }
                if (matrix == null) {
                    matrix = q.f11319a;
                }
                if (obj == null) {
                    obj = q.f11319a;
                }
                g3Var.set(imageView, matrix);
                return ObjectAnimator.ofObject(imageView, g3Var, new c0(), matrix, obj);
            }
        }
        return null;
    }

    @Override // androidx.transition.Transition
    public final String[] o() {
        return f3000x;
    }
}
