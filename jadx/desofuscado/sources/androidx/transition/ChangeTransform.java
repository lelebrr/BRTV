package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.g3;
import com.p2elite.brtv2.R;
import e0.b;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import y1.e0;
import y1.g0;
import y1.j;
import y1.v;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ChangeTransform extends Transition {
    public static final String[] A = {"android:changeTransform:matrix", "android:changeTransform:transforms", "android:changeTransform:parentMatrix"};
    public static final g3 B = new g3("nonTranslations", float[].class, 16);
    public static final g3 C = new g3("translations", PointF.class, 17);
    public static final boolean D = true;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f3004x;

    /* renamed from: y, reason: collision with root package name */
    public final boolean f3005y;

    /* renamed from: z, reason: collision with root package name */
    public final Matrix f3006z;

    @SuppressLint({"RestrictedApi"})
    public ChangeTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3004x = true;
        this.f3005y = true;
        this.f3006z = new Matrix();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v.f11326e);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.f3004x = !b.e(xmlPullParser, "reparentWithOverlay") ? true : typedArrayObtainStyledAttributes.getBoolean(1, true);
        this.f3005y = b.e(xmlPullParser, "reparent") ? typedArrayObtainStyledAttributes.getBoolean(0, true) : true;
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void F(e0 e0Var) {
        View view = e0Var.f11260b;
        if (view.getVisibility() == 8) {
            return;
        }
        HashMap map = e0Var.f11259a;
        map.put("android:changeTransform:parent", view.getParent());
        map.put("android:changeTransform:transforms", new j(view));
        Matrix matrix = view.getMatrix();
        map.put("android:changeTransform:matrix", (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
        if (this.f3005y) {
            Matrix matrix2 = new Matrix();
            g0.f11276a.n((ViewGroup) view.getParent(), matrix2);
            matrix2.preTranslate(-r2.getScrollX(), -r2.getScrollY());
            map.put("android:changeTransform:parentMatrix", matrix2);
            map.put("android:changeTransform:intermediateMatrix", view.getTag(R.id.transition_transform));
            map.put("android:changeTransform:intermediateParentMatrix", view.getTag(R.id.parent_matrix));
        }
    }

    @Override // androidx.transition.Transition
    public final void c(e0 e0Var) {
        F(e0Var);
    }

    @Override // androidx.transition.Transition
    public final void f(e0 e0Var) {
        F(e0Var);
        if (D) {
            return;
        }
        View view = e0Var.f11260b;
        ((ViewGroup) view.getParent()).startViewTransition(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x03c4 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v12, types: [s2.c] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // androidx.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.animation.Animator j(android.view.ViewGroup r27, y1.e0 r28, y1.e0 r29) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 1182
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeTransform.j(android.view.ViewGroup, y1.e0, y1.e0):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    public final String[] o() {
        return A;
    }
}
