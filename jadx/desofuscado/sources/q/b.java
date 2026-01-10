package q;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.internal.a0;
import com.google.android.material.tabs.TabLayout;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import t1.c;
import v2.f;
import x6.k;
import z2.g;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class b implements c, f, s3.a {

    /* renamed from: b, reason: collision with root package name */
    public static b f8931b;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8932a;

    public /* synthetic */ b(int i6) {
        this.f8932a = i6;
    }

    public static RectF c(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (tabLayout.B || !(view instanceof k)) {
            return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        k kVar = (k) view;
        int contentWidth = kVar.getContentWidth();
        int contentHeight = kVar.getContentHeight();
        int iE = (int) a0.e(kVar.getContext(), 24);
        if (contentWidth < iE) {
            contentWidth = iE;
        }
        int right = (kVar.getRight() + kVar.getLeft()) / 2;
        int bottom = (kVar.getBottom() + kVar.getTop()) / 2;
        int i6 = contentWidth / 2;
        return new RectF(right - i6, bottom - (contentHeight / 2), i6 + right, (right / 2) + bottom);
    }

    public void e(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        RectF rectFC = c(tabLayout, view);
        RectF rectFC2 = c(tabLayout, view2);
        drawable.setBounds(y5.a.c(f, (int) rectFC.left, (int) rectFC2.left), drawable.getBounds().top, y5.a.c(f, (int) rectFC.right, (int) rectFC2.right), drawable.getBounds().bottom);
    }

    @Override // s3.a
    public Object g() {
        try {
            return new g(MessageDigest.getInstance("SHA-256"));
        } catch (NoSuchAlgorithmException e5) {
            throw new RuntimeException(e5);
        }
    }

    @Override // t1.c
    public void i() {
    }

    private final void d(Object obj) {
    }

    @Override // t1.c
    public void b(int i6, Serializable serializable) {
    }

    @Override // v2.f
    public void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
    }
}
