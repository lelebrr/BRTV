package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f1261c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final d f1262a;

    /* renamed from: b, reason: collision with root package name */
    public final d f1263b;

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.core.widget.d] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.core.widget.d] */
    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        final int i6 = 0;
        this.f1262a = new Runnable(this) { // from class: androidx.core.widget.d

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ContentLoadingProgressBar f1297b;

            {
                this.f1297b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar contentLoadingProgressBar = this.f1297b;
                switch (i6) {
                    case 0:
                        int i10 = ContentLoadingProgressBar.f1261c;
                        contentLoadingProgressBar.setVisibility(8);
                        break;
                    default:
                        int i11 = ContentLoadingProgressBar.f1261c;
                        contentLoadingProgressBar.getClass();
                        System.currentTimeMillis();
                        contentLoadingProgressBar.setVisibility(0);
                        break;
                }
            }
        };
        final int i10 = 1;
        this.f1263b = new Runnable(this) { // from class: androidx.core.widget.d

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ContentLoadingProgressBar f1297b;

            {
                this.f1297b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar contentLoadingProgressBar = this.f1297b;
                switch (i10) {
                    case 0:
                        int i102 = ContentLoadingProgressBar.f1261c;
                        contentLoadingProgressBar.setVisibility(8);
                        break;
                    default:
                        int i11 = ContentLoadingProgressBar.f1261c;
                        contentLoadingProgressBar.getClass();
                        System.currentTimeMillis();
                        contentLoadingProgressBar.setVisibility(0);
                        break;
                }
            }
        };
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        removeCallbacks(this.f1262a);
        removeCallbacks(this.f1263b);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f1262a);
        removeCallbacks(this.f1263b);
    }
}
