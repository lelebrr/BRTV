package fa;

import androidx.appcompat.widget.r2;
import androidx.recyclerview.widget.RecyclerView;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Constants$VIDEO_TYPE;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class u extends androidx.recyclerview.widget.k0 {

    /* renamed from: e, reason: collision with root package name */
    public static final String f6956e = a2.a.s("DANYkLdqdokhCVKHtH19jS0PXKW8eX+vIRg=\n", "RGor5NgYD9s=\n");
    public static int f = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Constants$VIDEO_TYPE f6957a;

    /* renamed from: b, reason: collision with root package name */
    public int f6958b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f6959c = -1;
    public RecyclerView d;

    public u(Constants$VIDEO_TYPE constants$VIDEO_TYPE) {
        this.f6957a = constants$VIDEO_TYPE;
        f = 0;
    }

    public static boolean a(u uVar, int i6) {
        uVar.f6959c = uVar.f6958b + i6;
        String str = a2.a.s("pHiZWc5V9uytYohQxgyi\n", "ySv8Nas2gok=\n") + uVar.f6958b + a2.a.s("mVg/aBohXI7cVS5ZGhdU2Jk=\n", "uTZaEG5yOeI=\n") + uVar.f6959c;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(f6956e, str);
        int i10 = uVar.f6959c;
        if (i10 < 0) {
            uVar.notifyItemChanged(uVar.f6958b);
            return false;
        }
        if (i10 >= 0 && i10 < uVar.getItemCount()) {
            uVar.notifyItemChanged(uVar.f6958b);
            int i11 = uVar.f6959c;
            uVar.f6958b = i11;
            uVar.notifyItemChanged(i11);
            uVar.d.scrollToPosition(uVar.f6958b);
        } else if (uVar.f6959c < uVar.getItemCount()) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.d = recyclerView;
        recyclerView.getItemAnimator().f = 0L;
        recyclerView.setOnKeyListener(new l(this, 2, recyclerView));
        recyclerView.setOnLongClickListener(new m(this, 1));
        recyclerView.setOnClickListener(new androidx.appcompat.app.a(11, this));
        recyclerView.setOnFocusChangeListener(new r2(4, this));
    }
}
