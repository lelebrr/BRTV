package fa;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.tencent.mars.xlog.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class o extends androidx.recyclerview.widget.k0 {

    /* renamed from: i, reason: collision with root package name */
    public static final String f6924i = a2.a.s("5SimTOGF6urBNqpa5Yns5OM+rljHhfs=\n", "olrPKLPgiZM=\n");

    /* renamed from: a, reason: collision with root package name */
    public final Context f6925a;

    /* renamed from: b, reason: collision with root package name */
    public int f6926b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f6927c = -100;
    public int d = -1;

    /* renamed from: e, reason: collision with root package name */
    public RecyclerView f6928e;
    public final ea.d f;

    /* renamed from: g, reason: collision with root package name */
    public int f6929g;

    /* renamed from: h, reason: collision with root package name */
    public n0 f6930h;

    public o(Context context, ea.d dVar) {
        this.f6929g = 5;
        this.f6925a = context;
        this.f = dVar;
        if (dVar == ea.d.f6633e) {
            this.f6929g = ea.h.f6689t;
        } else if (dVar == ea.d.f6634g) {
            this.f6929g = ea.h.f6692w;
        }
    }

    public final boolean a(int i6) {
        this.d = this.f6926b + i6;
        String str = a2.a.s("huXpWYL93t+P//hQiqSK\n", "67aMNeeeqro=\n") + this.f6926b + a2.a.s("TN5x8hUSkvMJ02DDFSSapUw=\n", "bLAUimFB958=\n") + this.d;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(f6924i, str);
        int i10 = this.d;
        if (i10 < 0) {
            notifyItemChanged(this.f6926b);
            return false;
        }
        if (i10 < 0 || i10 >= getItemCount()) {
            return this.d >= getItemCount();
        }
        notifyItemChanged(this.f6926b);
        this.f6927c = this.f6926b;
        int i11 = this.d;
        this.f6926b = i11;
        notifyItemChanged(i11);
        this.f6928e.scrollToPosition(this.f6926b);
        return true;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f6928e = recyclerView;
        int i6 = 0;
        recyclerView.setOnKeyListener(new l(this, i6, recyclerView));
        recyclerView.setOnLongClickListener(new m(this, i6));
        recyclerView.setOnClickListener(new androidx.appcompat.app.a(10, this));
        recyclerView.setOnFocusChangeListener(new n(this, recyclerView));
    }
}
