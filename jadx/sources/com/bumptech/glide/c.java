package com.bumptech.glide;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import android.transition.TransitionValues;
import android.util.Log;
import android.util.Property;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.CompoundButton;
import androidx.appcompat.widget.l2;
import androidx.leanback.transition.FadeAndShortSlide;
import com.p2elite.brtv2.R;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static Field f3499a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f3500b;

    public static boolean b(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        return bundle == null ? bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1 : bundle2 == null ? bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1 : bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) && bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
    }

    public static void c(long j10, String str) {
        if (j10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " (" + j10 + ") must be >= 0");
    }

    public static void d(boolean z7) {
        if (!z7) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int e(android.content.Context r9, java.lang.String r10) {
        /*
            int r0 = android.os.Process.myPid()
            int r1 = android.os.Process.myUid()
            java.lang.String r2 = r9.getPackageName()
            int r0 = r9.checkPermission(r10, r0, r1)
            r3 = -1
            if (r0 != r3) goto L15
            goto L86
        L15:
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = 23
            if (r0 < r4) goto L20
            java.lang.String r10 = androidx.core.app.f.d(r10)
            goto L21
        L20:
            r10 = 0
        L21:
            r5 = 0
            if (r10 != 0) goto L26
        L24:
            r3 = 0
            goto L86
        L26:
            if (r2 != 0) goto L38
            android.content.pm.PackageManager r2 = r9.getPackageManager()
            java.lang.String[] r2 = r2.getPackagesForUid(r1)
            if (r2 == 0) goto L86
            int r6 = r2.length
            if (r6 > 0) goto L36
            goto L86
        L36:
            r2 = r2[r5]
        L38:
            int r3 = android.os.Process.myUid()
            java.lang.String r6 = r9.getPackageName()
            r7 = 1
            java.lang.Class<android.app.AppOpsManager> r8 = android.app.AppOpsManager.class
            if (r3 != r1) goto L74
            boolean r3 = java.util.Objects.equals(r6, r2)
            if (r3 == 0) goto L74
            r3 = 29
            if (r0 < r3) goto L67
            android.app.AppOpsManager r0 = androidx.core.app.g.c(r9)
            int r3 = android.os.Binder.getCallingUid()
            int r2 = androidx.core.app.g.a(r0, r10, r3, r2)
            if (r2 == 0) goto L5e
            goto L81
        L5e:
            java.lang.String r9 = androidx.core.app.g.b(r9)
            int r2 = androidx.core.app.g.a(r0, r10, r1, r9)
            goto L81
        L67:
            if (r0 < r4) goto L80
            java.lang.Object r9 = androidx.core.app.f.a(r9, r8)
            android.app.AppOpsManager r9 = (android.app.AppOpsManager) r9
            int r7 = androidx.core.app.f.c(r9, r10, r2)
            goto L80
        L74:
            if (r0 < r4) goto L80
            java.lang.Object r9 = androidx.core.app.f.a(r9, r8)
            android.app.AppOpsManager r9 = (android.app.AppOpsManager) r9
            int r7 = androidx.core.app.f.c(r9, r10, r2)
        L80:
            r2 = r7
        L81:
            if (r2 != 0) goto L84
            goto L24
        L84:
            r9 = -2
            r3 = -2
        L86:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.c.e(android.content.Context, java.lang.String):int");
    }

    public static ObjectAnimator f(View view, TransitionValues transitionValues, int i6, int i10, float f, float f3, float f4, float f5, DecelerateInterpolator decelerateInterpolator, FadeAndShortSlide fadeAndShortSlide) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        if (((int[]) transitionValues.view.getTag(R.id.transitionPosition)) != null) {
            f = (r2[0] - i6) + translationX;
            f3 = (r2[1] - i10) + translationY;
        }
        int iRound = Math.round(f - translationX) + i6;
        int iRound2 = Math.round(f3 - translationY) + i10;
        view.setTranslationX(f);
        view.setTranslationY(f3);
        if (f == f4 && f3 == f5) {
            return null;
        }
        Path path = new Path();
        path.moveTo(f, f3);
        path.lineTo(f4, f5);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_X, (Property<View, Float>) View.TRANSLATION_Y, path);
        androidx.leanback.transition.g gVar = new androidx.leanback.transition.g(view, transitionValues.view, iRound, iRound2, translationX, translationY);
        fadeAndShortSlide.addListener(gVar);
        objectAnimatorOfFloat.addListener(gVar);
        objectAnimatorOfFloat.addPauseListener(gVar);
        objectAnimatorOfFloat.setInterpolator(decelerateInterpolator);
        return objectAnimatorOfFloat;
    }

    public static Drawable g(CompoundButton compoundButton) throws NoSuchFieldException, SecurityException {
        if (Build.VERSION.SDK_INT >= 23) {
            return androidx.core.widget.c.a(compoundButton);
        }
        if (!f3500b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f3499a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e5) {
                Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e5);
            }
            f3500b = true;
        }
        Field field = f3499a;
        if (field != null) {
            try {
                return (Drawable) field.get(compoundButton);
            } catch (IllegalAccessException e10) {
                Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e10);
                f3499a = null;
            }
        }
        return null;
    }

    public static Drawable h(Context context, int i6) {
        return l2.d().f(context, i6);
    }

    public static boolean i(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static a9.i j(a9.i iVar, a9.i iVar2) {
        j9.i.f(iVar2, "context");
        return iVar2 == a9.j.f179a ? iVar : (a9.i) iVar2.a(iVar, new a9.b(1));
    }

    public static c1.b k(MappedByteBuffer mappedByteBuffer) throws IOException {
        long j10;
        ByteBuffer byteBufferDuplicate = mappedByteBuffer.duplicate();
        byteBufferDuplicate.order(ByteOrder.BIG_ENDIAN);
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
        int i6 = byteBufferDuplicate.getShort() & 65535;
        if (i6 > 100) {
            throw new IOException("Cannot read metadata.");
        }
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 6);
        int i10 = 0;
        while (true) {
            if (i10 >= i6) {
                j10 = -1;
                break;
            }
            int i11 = byteBufferDuplicate.getInt();
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            j10 = byteBufferDuplicate.getInt() & 4294967295L;
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            if (1835365473 == i11) {
                break;
            }
            i10++;
        }
        if (j10 != -1) {
            byteBufferDuplicate.position(byteBufferDuplicate.position() + ((int) (j10 - byteBufferDuplicate.position())));
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 12);
            long j11 = byteBufferDuplicate.getInt() & 4294967295L;
            for (int i12 = 0; i12 < j11; i12++) {
                int i13 = byteBufferDuplicate.getInt();
                long j12 = byteBufferDuplicate.getInt() & 4294967295L;
                byteBufferDuplicate.getInt();
                if (1164798569 == i13 || 1701669481 == i13) {
                    byteBufferDuplicate.position((int) (j12 + j10));
                    c1.b bVar = new c1.b();
                    byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
                    int iPosition = byteBufferDuplicate.position() + byteBufferDuplicate.getInt(byteBufferDuplicate.position());
                    bVar.d = byteBufferDuplicate;
                    bVar.f3334a = iPosition;
                    int i14 = iPosition - byteBufferDuplicate.getInt(iPosition);
                    bVar.f3335b = i14;
                    bVar.f3336c = ((ByteBuffer) bVar.d).getShort(i14);
                    return bVar;
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    public static TypedValue l(Context context, int i6) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i6, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static int m(Context context, int i6, String str) {
        TypedValue typedValueL = l(context, i6);
        if (typedValueL != null) {
            return typedValueL.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i6)));
    }

    public static o9.f n(o9.h hVar, int i6) {
        j9.i.f(hVar, "<this>");
        boolean z7 = i6 > 0;
        Integer numValueOf = Integer.valueOf(i6);
        if (z7) {
            if (hVar.f8653c <= 0) {
                i6 = -i6;
            }
            return new o9.f(hVar.f8651a, hVar.f8652b, i6);
        }
        throw new IllegalArgumentException("Step must be positive, was: " + numValueOf + '.');
    }

    public static o9.h o(int i6, int i10) {
        if (i10 > Integer.MIN_VALUE) {
            return new o9.h(i6, i10 - 1, 1);
        }
        o9.h hVar = o9.h.d;
        return o9.h.d;
    }

    public abstract c a(Serializable serializable);
}
