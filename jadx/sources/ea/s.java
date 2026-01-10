package ea;

import android.os.CountDownTimer;
import android.widget.TextView;
import androidx.media3.exoplayer.Renderer;
import com.p2elite.brtv2.R;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f6729a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ sa.d f6730b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ sa.e f6731c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(String str, sa.d dVar, sa.e eVar) {
        super(Renderer.DEFAULT_DURATION_TO_PROGRESS_US, 1000L);
        this.f6729a = str;
        this.f6730b = dVar;
        this.f6731c = eVar;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        Spark.X1.sendEmptyMessage(9999);
        this.f6731c.dismiss();
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j10) {
        String str = this.f6729a + "\n" + (j10 / 1000);
        sa.d dVar = this.f6730b;
        dVar.getClass();
        TextView textView = (TextView) dVar.f9851e.findViewById(R.id.message);
        if (textView != null) {
            textView.setText(str);
        }
    }
}
