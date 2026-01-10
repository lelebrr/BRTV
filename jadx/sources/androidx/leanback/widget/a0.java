package androidx.leanback.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Rect f1808a = new Rect();

    public static int a(View view, z zVar, int i6) {
        View viewFindViewById;
        int height;
        int width;
        int width2;
        int width3;
        t tVar = (t) view.getLayoutParams();
        int i10 = zVar.f1934a;
        if (i10 == 0 || (viewFindViewById = view.findViewById(i10)) == null) {
            viewFindViewById = view;
        }
        int paddingBottom = zVar.f1935b;
        Rect rect = f1808a;
        if (i6 != 0) {
            if (zVar.d) {
                float f = zVar.f1936c;
                if (f == 0.0f) {
                    paddingBottom += viewFindViewById.getPaddingTop();
                } else if (f == 100.0f) {
                    paddingBottom -= viewFindViewById.getPaddingBottom();
                }
            }
            if (zVar.f1936c != -1.0f) {
                if (viewFindViewById == view) {
                    tVar.getClass();
                    height = (viewFindViewById.getHeight() - tVar.f) - tVar.f1923h;
                } else {
                    height = viewFindViewById.getHeight();
                }
                paddingBottom += (int) ((height * zVar.f1936c) / 100.0f);
            }
            if (view == viewFindViewById) {
                return paddingBottom;
            }
            rect.top = paddingBottom;
            ((ViewGroup) view).offsetDescendantRectToMyCoords(viewFindViewById, rect);
            return rect.top - tVar.f;
        }
        if (view.getLayoutDirection() != 1) {
            if (zVar.d) {
                float f3 = zVar.f1936c;
                if (f3 == 0.0f) {
                    paddingBottom += viewFindViewById.getPaddingLeft();
                } else if (f3 == 100.0f) {
                    paddingBottom -= viewFindViewById.getPaddingRight();
                }
            }
            if (zVar.f1936c != -1.0f) {
                if (viewFindViewById == view) {
                    tVar.getClass();
                    width = (viewFindViewById.getWidth() - tVar.f1921e) - tVar.f1922g;
                } else {
                    width = viewFindViewById.getWidth();
                }
                paddingBottom += (int) ((width * zVar.f1936c) / 100.0f);
            }
            int i11 = paddingBottom;
            if (view == viewFindViewById) {
                return i11;
            }
            rect.left = i11;
            ((ViewGroup) view).offsetDescendantRectToMyCoords(viewFindViewById, rect);
            return rect.left - tVar.f1921e;
        }
        if (viewFindViewById == view) {
            tVar.getClass();
            width2 = (viewFindViewById.getWidth() - tVar.f1921e) - tVar.f1922g;
        } else {
            width2 = viewFindViewById.getWidth();
        }
        int paddingLeft = width2 - paddingBottom;
        if (zVar.d) {
            float f4 = zVar.f1936c;
            if (f4 == 0.0f) {
                paddingLeft -= viewFindViewById.getPaddingRight();
            } else if (f4 == 100.0f) {
                paddingLeft += viewFindViewById.getPaddingLeft();
            }
        }
        if (zVar.f1936c != -1.0f) {
            if (viewFindViewById == view) {
                tVar.getClass();
                width3 = (viewFindViewById.getWidth() - tVar.f1921e) - tVar.f1922g;
            } else {
                width3 = viewFindViewById.getWidth();
            }
            paddingLeft -= (int) ((width3 * zVar.f1936c) / 100.0f);
        }
        if (view == viewFindViewById) {
            return paddingLeft;
        }
        rect.right = paddingLeft;
        ((ViewGroup) view).offsetDescendantRectToMyCoords(viewFindViewById, rect);
        return rect.right + tVar.f1922g;
    }
}
