package ja;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.p2elite.brtv2.R;
import org.bitspark.android.R$drawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends a {

    /* renamed from: o, reason: collision with root package name */
    public static final SparseIntArray f7480o;

    /* renamed from: n, reason: collision with root package name */
    public long f7481n;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f7480o = sparseIntArray;
        sparseIntArray.put(R.id.image_border, 2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public b(View view) {
        Object[] objArrR = w0.e.R(view, 3, f7480o);
        super(view, (ConstraintLayout) objArrR[0], (ImageView) objArrR[1]);
        this.f7481n = -1L;
        this.f7478l.setTag(null);
        this.f7479m.setTag(null);
        T(view);
        synchronized (this) {
            this.f7481n = 2L;
        }
        S();
    }

    @Override // w0.e
    public final void O() throws Resources.NotFoundException {
        long j10;
        synchronized (this) {
            j10 = this.f7481n;
            this.f7481n = 0L;
        }
        if ((j10 & 3) != 0) {
            ImageView imageView = this.f7479m;
            Drawable drawableH = com.bumptech.glide.c.h(imageView.getContext(), R$drawable.home_nor_2x);
            Drawable drawableH2 = com.bumptech.glide.c.h(this.f7479m.getContext(), R$drawable.home_movie_not_uploaded_2x);
            float dimension = this.f7479m.getResources().getDimension(R.dimen.dimen4);
            a2.a.s("X2f3aNsXH0FB\n", "NgqWD75BdiQ=\n");
            j9.i.f(drawableH2, a2.a.s("Spdt7yg=\n", "L+UfgFpNgJ4=\n"));
            c2.l lVarA = c2.a.a(imageView.getContext());
            m2.h hVar = new m2.h(imageView.getContext());
            hVar.f8186c = "";
            hVar.d = new o2.a(imageView);
            hVar.f8200s = null;
            hVar.f8201t = null;
            hVar.f8202u = null;
            hVar.f = new q2.a(100);
            if (drawableH == null) {
                drawableH = drawableH2;
            }
            hVar.f8196o = drawableH;
            hVar.f8195n = 0;
            hVar.f8198q = drawableH2;
            hVar.f8197p = 0;
            hVar.f8199r = n2.g.f8381a;
            hVar.f8187e = o9.d.J(x8.i.L(new p2.a[]{new p2.a(dimension)}));
            m2.b bVar = m2.b.ENABLED;
            hVar.f8192k = bVar;
            hVar.f8193l = bVar;
            lVarA.b(hVar.a());
        }
    }

    @Override // w0.e
    public final boolean P() {
        synchronized (this) {
            try {
                return this.f7481n != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
