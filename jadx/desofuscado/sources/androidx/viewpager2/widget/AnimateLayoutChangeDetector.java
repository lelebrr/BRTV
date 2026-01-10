package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class AnimateLayoutChangeDetector {
    private static final ViewGroup.MarginLayoutParams ZERO_MARGIN_LAYOUT_PARAMS;
    private LinearLayoutManager mLayoutManager;

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        ZERO_MARGIN_LAYOUT_PARAMS = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    public AnimateLayoutChangeDetector(LinearLayoutManager linearLayoutManager) {
        this.mLayoutManager = linearLayoutManager;
    }

    private boolean arePagesLaidOutContiguously() {
        int top;
        int i6;
        int bottom;
        int i10;
        int childCount = this.mLayoutManager.getChildCount();
        if (childCount == 0) {
            return true;
        }
        boolean z7 = this.mLayoutManager.getOrientation() == 0;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, childCount, 2);
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = this.mLayoutManager.getChildAt(i11);
            if (childAt == null) {
                throw new IllegalStateException("null view contained in the view hierarchy");
            }
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : ZERO_MARGIN_LAYOUT_PARAMS;
            int[] iArr2 = iArr[i11];
            if (z7) {
                top = childAt.getLeft();
                i6 = marginLayoutParams.leftMargin;
            } else {
                top = childAt.getTop();
                i6 = marginLayoutParams.topMargin;
            }
            iArr2[0] = top - i6;
            int[] iArr3 = iArr[i11];
            if (z7) {
                bottom = childAt.getRight();
                i10 = marginLayoutParams.rightMargin;
            } else {
                bottom = childAt.getBottom();
                i10 = marginLayoutParams.bottomMargin;
            }
            iArr3[1] = bottom + i10;
        }
        Arrays.sort(iArr, new Comparator<int[]>() { // from class: androidx.viewpager2.widget.AnimateLayoutChangeDetector.1
            @Override // java.util.Comparator
            public int compare(int[] iArr4, int[] iArr5) {
                return iArr4[0] - iArr5[0];
            }
        });
        for (int i12 = 1; i12 < childCount; i12++) {
            if (iArr[i12 - 1][1] != iArr[i12][0]) {
                return false;
            }
        }
        int[] iArr4 = iArr[0];
        int i13 = iArr4[1];
        int i14 = iArr4[0];
        return i14 <= 0 && iArr[childCount - 1][1] >= i13 - i14;
    }

    private boolean hasRunningChangingLayoutTransition() {
        int childCount = this.mLayoutManager.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            if (hasRunningChangingLayoutTransition(this.mLayoutManager.getChildAt(i6))) {
                return true;
            }
        }
        return false;
    }

    public boolean mayHaveInterferingAnimations() {
        return (!arePagesLaidOutContiguously() || this.mLayoutManager.getChildCount() <= 1) && hasRunningChangingLayoutTransition();
    }

    private static boolean hasRunningChangingLayoutTransition(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                if (hasRunningChangingLayoutTransition(viewGroup.getChildAt(i6))) {
                    return true;
                }
            }
        }
        return false;
    }
}
