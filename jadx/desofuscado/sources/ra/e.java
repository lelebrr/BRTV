package ra;

import android.os.CountDownTimer;
import android.widget.TextView;
import androidx.media3.exoplayer.Renderer;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.utils.m;
import sa.g;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f9633a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Spark f9634b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f9635c;
    public final /* synthetic */ f d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(f fVar, TextView textView, Spark spark, g gVar) {
        super(Renderer.DEFAULT_DURATION_TO_PROGRESS_US, 1000L);
        this.d = fVar;
        this.f9633a = textView;
        this.f9634b = spark;
        this.f9635c = gVar;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        g gVar = this.f9635c;
        if (gVar != null) {
            gVar.dismiss();
        }
        String strS = a2.a.s("psypuZdbHiqYx62y\n", "9qDIwPIpU0s=\n");
        String strS2 = a2.a.s("cYho9jc4Ea0kxg7PNTAboGyrT/E4Nge3MIFL6xA/EbF/iE36cXhMt3uWQv4gAg2wbIVLt3Bq\n", "HuYun1lRYsU=\n");
        boolean z7 = m.f8784b;
        Log.i(strS, strS2);
        f fVarB = f.b();
        String str = this.d.f9647l;
        ChannelBean channelBean = fVarB.f9641e;
        if (channelBean != null) {
            fVarB.e(channelBean, Boolean.valueOf(fVarB.f9642g), 0, str);
        }
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j10) {
        TextView textView = this.f9633a;
        if (textView != null) {
            textView.setText(this.f9634b.getString(R.string.connecting) + (j10 / 1000));
        }
    }
}
