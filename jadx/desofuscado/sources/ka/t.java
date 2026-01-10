package ka;

import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Environment;
import android.widget.Button;
import androidx.fragment.app.FragmentActivity;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.request.GetRequest;
import com.p2elite.brtv2.R;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ sa.k f7866a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y f7867b;

    public t(y yVar, sa.k kVar) {
        this.f7867b = yVar;
        this.f7866a = kVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) throws Resources.NotFoundException {
        String str = ga.k.f7137b.release.url;
        String str2 = y.f7876u1;
        y yVar = this.f7867b;
        FragmentActivity fragmentActivityH = yVar.h();
        sa.k kVar = this.f7866a;
        if (fragmentActivityH == null) {
            Spark.m0(0, a2.a.s("6EdZqKCRZTuMTVy0o4wof95NWrS13mg+2E1c5uI=\n", "rCguxsz+BF8=\n"));
        } else if (yVar.h().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS) == null) {
            Spark.m0(0, a2.a.s("NZAEri9UOFdRmgGyLEl1EwOaB7I6GzVSBZoB4G0V\n", "cf9zwEM7WTM=\n"));
        } else {
            String absolutePath = yVar.h().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
            if (absolutePath == null) {
                Spark.m0(0, a2.a.s("qaYz8DAWA2TNrDbsMwtOIJ+sMOwlWQ5hmaw2vnJXTA==\n", "7clEnlx5YgA=\n"));
            } else {
                ((GetRequest) OkGo.get(str).cacheMode(CacheMode.NO_CACHE)).execute(new u(yVar, absolutePath, str.substring(str.lastIndexOf(a2.a.s("/w==\n", "0JqSV2fRZ4M=\n")) + 1), dialogInterface, kVar));
            }
        }
        int color = yVar.m().getColor(R.color.dialog_btn_text);
        kVar.f9876o.setClickable(false);
        Button button = kVar.f9877p;
        if (button != null) {
            button.setClickable(false);
            kVar.f9877p.setFocusable(false);
            kVar.f9877p.setFocusableInTouchMode(false);
            kVar.f9877p.setTextColor(color);
        }
        if (ea.a.f6602e > ga.k.f7137b.incompatibleVersion) {
            kVar.f9875n.setTextColor(color);
            kVar.f9875n.setFocusable(false);
            kVar.f9875n.setClickable(false);
            kVar.f9875n.setFocusableInTouchMode(false);
        }
    }
}
