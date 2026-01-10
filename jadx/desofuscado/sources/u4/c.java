package u4;

import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import q4.g;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c implements s4.a, g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExpandedControllerActivity f10337a;

    public /* synthetic */ c(ExpandedControllerActivity expandedControllerActivity) {
        this.f10337a = expandedControllerActivity;
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void a(q4.e eVar, int i6) {
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void d(q4.e eVar, boolean z7) {
    }

    @Override // s4.a
    public void f(Bitmap bitmap) {
        if (bitmap != null) {
            ExpandedControllerActivity expandedControllerActivity = this.f10337a;
            TextView textView = expandedControllerActivity.f3869b0;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = expandedControllerActivity.Z;
            if (imageView != null) {
                imageView.setVisibility(0);
                expandedControllerActivity.Z.setImageBitmap(bitmap);
            }
        }
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void g(q4.e eVar, int i6) {
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void h(q4.e eVar, String str) {
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void i(q4.e eVar, int i6) {
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void k(q4.e eVar, String str) {
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void l(q4.e eVar) {
    }

    @Override // q4.g
    public /* synthetic */ void m(q4.e eVar, int i6) {
        this.f10337a.finish();
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void n(q4.e eVar) {
    }
}
