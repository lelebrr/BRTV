package r4;

import android.app.AlertDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TabHost;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.MediaTrack;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Locale;
import ka.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class g extends androidx.fragment.app.m {

    /* renamed from: k0, reason: collision with root package name */
    public boolean f9550k0;

    /* renamed from: l0, reason: collision with root package name */
    public ArrayList f9551l0;

    /* renamed from: m0, reason: collision with root package name */
    public ArrayList f9552m0;

    /* renamed from: n0, reason: collision with root package name */
    public long[] f9553n0;

    /* renamed from: o0, reason: collision with root package name */
    public AlertDialog f9554o0;

    /* renamed from: p0, reason: collision with root package name */
    public f f9555p0;

    @Deprecated
    public g() {
    }

    public static int T(ArrayList arrayList, long[] jArr, int i6) {
        if (jArr != null && arrayList != null) {
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                for (long j10 : jArr) {
                    if (j10 == ((MediaTrack) arrayList.get(i10)).f3760a) {
                        return i10;
                    }
                }
            }
        }
        return i6;
    }

    @Override // androidx.fragment.app.m
    public final Dialog R() {
        int iT = T(this.f9551l0, this.f9553n0, 0);
        int iT2 = T(this.f9552m0, this.f9553n0, -1);
        s sVar = new s(h(), this.f9551l0, iT);
        s sVar2 = new s(h(), this.f9552m0, iT2);
        AlertDialog.Builder builder = new AlertDialog.Builder(h());
        View viewInflate = h().getLayoutInflater().inflate(R.layout.cast_tracks_chooser_dialog_layout, (ViewGroup) null);
        ListView listView = (ListView) viewInflate.findViewById(R.id.text_list_view);
        ListView listView2 = (ListView) viewInflate.findViewById(R.id.audio_list_view);
        TabHost tabHost = (TabHost) viewInflate.findViewById(R.id.tab_host);
        tabHost.setup();
        if (sVar.getCount() == 0) {
            listView.setVisibility(4);
        } else {
            listView.setAdapter((ListAdapter) sVar);
            TabHost.TabSpec tabSpecNewTabSpec = tabHost.newTabSpec("textTab");
            tabSpecNewTabSpec.setContent(R.id.text_list_view);
            tabSpecNewTabSpec.setIndicator(String.format(Locale.ROOT, h().getString(R.string.cast_tracks_chooser_dialog_subtitles), new Object[0]));
            tabHost.addTab(tabSpecNewTabSpec);
        }
        if (sVar2.getCount() <= 1) {
            listView2.setVisibility(4);
        } else {
            listView2.setAdapter((ListAdapter) sVar2);
            TabHost.TabSpec tabSpecNewTabSpec2 = tabHost.newTabSpec("audioTab");
            tabSpecNewTabSpec2.setContent(R.id.audio_list_view);
            tabSpecNewTabSpec2.setIndicator(String.format(Locale.ROOT, h().getString(R.string.cast_tracks_chooser_dialog_audio), new Object[0]));
            tabHost.addTab(tabSpecNewTabSpec2);
        }
        AlertDialog.Builder view = builder.setView(viewInflate);
        Locale locale = Locale.ROOT;
        view.setPositiveButton(String.format(locale, h().getString(R.string.cast_tracks_chooser_dialog_ok), new Object[0]), new q(this, sVar, sVar2)).setNegativeButton(String.format(locale, h().getString(R.string.cast_tracks_chooser_dialog_cancel), new Object[0]), new x(1, this));
        AlertDialog alertDialog = this.f9554o0;
        if (alertDialog != null) {
            alertDialog.cancel();
            this.f9554o0 = null;
        }
        AlertDialog alertDialogCreate = builder.create();
        this.f9554o0 = alertDialogCreate;
        return alertDialogCreate;
    }

    @Override // androidx.fragment.app.m, androidx.fragment.app.s
    public final void s(Bundle bundle) {
        super.s(bundle);
        this.f9550k0 = true;
        this.f9552m0 = new ArrayList();
        this.f9551l0 = new ArrayList();
        this.f9553n0 = new long[0];
        q4.b bVarC = q4.a.b(j()).a().c();
        if (bVarC != null && bVarC.a()) {
            f fVarF = bVarC.f();
            this.f9555p0 = fVarF;
            if (fVarF != null && fVarF.i() && this.f9555p0.e() != null) {
                f fVar = this.f9555p0;
                MediaStatus mediaStatusF = fVar.f();
                if (mediaStatusF != null) {
                    this.f9553n0 = mediaStatusF.f3746k;
                }
                MediaInfo mediaInfoE = fVar.e();
                if (mediaInfoE == null) {
                    this.f9550k0 = false;
                    return;
                }
                ArrayList<MediaTrack> arrayList = mediaInfoE.f;
                if (arrayList == null) {
                    this.f9550k0 = false;
                    return;
                }
                ArrayList arrayList2 = new ArrayList();
                for (MediaTrack mediaTrack : arrayList) {
                    if (mediaTrack.f3761b == 2) {
                        arrayList2.add(mediaTrack);
                    }
                }
                this.f9552m0 = arrayList2;
                ArrayList arrayList3 = new ArrayList();
                for (MediaTrack mediaTrack2 : arrayList) {
                    if (mediaTrack2.f3761b == 1) {
                        arrayList3.add(mediaTrack2);
                    }
                }
                this.f9551l0 = arrayList3;
                if (arrayList3.isEmpty()) {
                    return;
                }
                this.f9551l0.add(0, new MediaTrack(-1L, 1, "", null, String.format(Locale.ROOT, h().getString(R.string.cast_tracks_chooser_dialog_none), new Object[0]), null, 2, null, null));
                return;
            }
        }
        this.f9550k0 = false;
    }

    @Override // androidx.fragment.app.m, androidx.fragment.app.s
    public final void v() {
        Dialog dialog = this.f1492f0;
        if (dialog != null && this.B) {
            dialog.setDismissMessage(null);
        }
        super.v();
    }
}
