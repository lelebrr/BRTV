package y1;

import android.graphics.Path;
import androidx.transition.PathMotion;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class w extends PathMotion {
    public final Path a(float f, float f3, float f4, float f5) {
        Path path = new Path();
        path.moveTo(f, f3);
        path.lineTo(f4, f5);
        return path;
    }
}
