package q1;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.core.widget.NestedScrollView;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class f0 implements s3.a, androidx.core.widget.k, t1.c, y2.a, z2.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8976a;

    @Override // t1.c
    public void b(int i6, Serializable serializable) {
        String str;
        switch (i6) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i6 == 6 || i6 == 7 || i6 == 8) {
            Log.e("ProfileInstaller", str, (Throwable) serializable);
        } else {
            Log.d("ProfileInstaller", str);
        }
    }

    @Override // y2.a
    public Bitmap c(int i6, int i10, Bitmap.Config config) {
        return Bitmap.createBitmap(i6, i10, config);
    }

    @Override // y2.a
    public Bitmap d(int i6, int i10, Bitmap.Config config) {
        return Bitmap.createBitmap(i6, i10, config);
    }

    public void e(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // s3.a
    public Object g() {
        switch (this.f8976a) {
            case 1:
                return new ArrayList();
            default:
                return new x2.w();
        }
    }

    @Override // z2.a
    public File h(v2.e eVar) {
        return null;
    }

    @Override // t1.c
    public void i() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // y2.a
    public void j() {
    }

    @Override // y2.a
    public void a(int i6) {
    }

    @Override // androidx.core.widget.k
    public void k(NestedScrollView nestedScrollView) {
    }

    @Override // z2.a
    public void f(v2.e eVar, s.g gVar) {
    }
}
