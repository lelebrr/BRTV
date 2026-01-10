package ka;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.FileProvider;
import com.lzy.okgo.callback.FileCallback;
import com.lzy.okgo.model.Progress;
import com.lzy.okgo.model.Response;
import com.p2elite.brtv2.R;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u extends FileCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DialogInterface f7868a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ sa.k f7869b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ y f7870c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(y yVar, String str, String str2, DialogInterface dialogInterface, sa.k kVar) {
        super(str, str2);
        this.f7870c = yVar;
        this.f7868a = dialogInterface;
        this.f7869b = kVar;
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public final void downloadProgress(Progress progress) {
        sa.k kVar = this.f7869b;
        kVar.f9874m.setVisibility(8);
        kVar.f9873l.setVisibility(0);
        kVar.f9873l.setMax(100);
        kVar.f9873l.setProgress((int) (progress.fraction * 100.0f));
        kVar.f9874m.requestFocus();
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public final void onError(Response response) throws Resources.NotFoundException {
        Spark.m0(0, a2.a.s("zHNFOz3KXUWoeUAnPtcQAfp5RicohVBA/HlAdA==\n", "iBwyVVGlPCE=\n"));
        if (ea.a.f6602e > ga.k.f7137b.incompatibleVersion) {
            int color = this.f7870c.m().getColor(R.color.dialog_btn_text);
            sa.k kVar = this.f7869b;
            kVar.f9875n.setTextColor(color);
            kVar.f9875n.setFocusable(true);
            kVar.f9875n.setClickable(true);
            kVar.f9875n.setFocusableInTouchMode(true);
        }
    }

    @Override // com.lzy.okgo.callback.Callback
    public final void onSuccess(Response response) throws IOException {
        y yVar = this.f7870c;
        if (!yVar.f7914t1) {
            this.f7868a.dismiss();
        }
        File file = (File) response.body();
        Uri uriFromFile = Uri.fromFile(file);
        if (Build.VERSION.SDK_INT >= 24) {
            d0.g gVarC = FileProvider.c(yVar.h(), a2.a.s("zJ7Mjy90+EPGhcSPPTTpWZ3f0dMwMPRLyoM=\n", "r/GhoV9GnS8=\n"));
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry entry = null;
                for (Map.Entry entry2 : gVarC.f5994b.entrySet()) {
                    String path = ((File) entry2.getValue()).getPath();
                    if (d0.g.a(canonicalPath, path) && (entry == null || path.length() > ((File) entry.getValue()).getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry == null) {
                    throw new IllegalArgumentException(ea.q.p("Failed to find configured root that contains ", canonicalPath));
                }
                String path2 = ((File) entry.getValue()).getPath();
                uriFromFile = new Uri.Builder().scheme("content").authority(gVarC.f5993a).encodedPath(Uri.encode((String) entry.getKey()) + '/' + Uri.encode(path2.endsWith("/") ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), "/")).build();
            } catch (IOException unused) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }
        Intent intent = new Intent(a2.a.s("Gr1s9crBJhcSvXziy9xsWBinYejLhhRwPoQ=\n", "e9MIh6WoQjk=\n"), uriFromFile);
        intent.putExtra(a2.a.s("T4bJ4jWia+1Hhtn1NL8hplac3/F0hUCXcb3j2xSEWI1xu+LFCIhK\n", "LuitkFrLD8M=\n"), true);
        intent.setDataAndType(uriFromFile, a2.a.s("On2NFdChRJ0yYpNWz6xBxzpjmQvWq0HHK2yeEtilQMQ6f54R0LRA\n", "Ww39ebnCJek=\n"));
        intent.setFlags(268435456);
        intent.addFlags(1);
        yVar.h().startActivity(intent);
    }
}
