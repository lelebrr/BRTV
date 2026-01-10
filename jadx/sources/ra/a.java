package ra;

import android.net.Uri;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface a {
    void a();

    void b();

    void c();

    void d();

    void e();

    void f();

    void g(Uri uri, HashMap map);

    int getBufferedPercentage();

    long getCurrentPosition();

    long getDuration();

    boolean getPlayWhenReady();

    void h(String str);

    boolean i(int i6);

    boolean isPlaying();

    boolean isVisible();

    void j();

    void pause();

    void prepare();

    void release();

    void seekTo(long j10);

    void setPlayWhenReady(boolean z7);

    void start();

    void stop();
}
