package ea;

import android.widget.ImageView;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ float f6744a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Spark f6745b;

    public w(Spark spark, float f) {
        this.f6745b = spark;
        this.f6744a = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Spark spark = this.f6745b;
        ImageView imageView = spark.f8686b0;
        float f = this.f6744a;
        imageView.setAlpha(f);
        spark.f8686b0.setVisibility(0);
        String strS = a2.a.s("T//CVst/\n", "DayPN6IRPKo=\n");
        String str = a2.a.s("j61Ia+g3aXmwrFRo5jklPA==\n", "/MUnHKReHxw=\n") + f + a2.a.s("j9d8eNzgRIY=\n", "supBReHdebs=\n") + spark.f8686b0.isShown();
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, str);
    }
}
