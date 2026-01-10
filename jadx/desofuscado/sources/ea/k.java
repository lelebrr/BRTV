package ea;

import android.os.Bundle;
import android.os.Message;
import android.widget.RadioButton;
import androidx.leanback.widget.VerticalGridView;
import com.tencent.mars.xlog.Log;
import com.tvbus.engine.TVListener;
import fa.o1;
import fa.x0;
import org.bitspark.android.R$drawable;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.VodMenu;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements androidx.lifecycle.e0, sa.f, fa.o0, TVListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6704a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Spark f6705b;

    public /* synthetic */ k(Spark spark, int i6) {
        this.f6704a = i6;
        this.f6705b = spark;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    @Override // fa.o0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(int r8, android.view.View r9) {
        /*
            r7 = this;
            int r9 = r7.f6704a
            switch(r9) {
                case 9: goto Lca;
                case 10: goto L5;
                case 11: goto L4b;
                case 12: goto L26;
                default: goto L5;
            }
        L5:
            org.bitspark.android.Spark r9 = r7.f6705b
            androidx.media3.exoplayer.ExoPlayer r0 = r9.J1
            ta.a r1 = r9.i0
            java.util.ArrayList r1 = r1.f10269y
            java.lang.Object r1 = r1.get(r8)
            org.bitspark.android.beans.SpeedBean r1 = (org.bitspark.android.beans.SpeedBean) r1
            float r1 = r1.getSpeed()
            r0.setPlaybackSpeed(r1)
            ta.a r0 = r9.i0
            r0.f10267w = r8
            fa.o1 r9 = r9.f8721t0
            r9.f6817e = r8
            r9.notifyDataSetChanged()
            return
        L26:
            org.bitspark.android.Spark r9 = r7.f6705b
            ta.a r0 = r9.i0
            r0.f10264t = r8
            fa.o1 r0 = r9.f8731y0
            java.util.ArrayList r0 = r0.f6819h
            int r0 = r0.size()
            int r0 = r0 + (-1)
            if (r8 != r0) goto L3c
            r9.O()
            goto L43
        L3c:
            ta.a r0 = r9.i0
            java.util.ArrayList r0 = r0.B
            r9.k0(r8, r0)
        L43:
            fa.o1 r9 = r9.f8731y0
            r9.f6817e = r8
            r9.notifyDataSetChanged()
            return
        L4b:
            org.bitspark.android.Spark r9 = r7.f6705b
            if (r8 < 0) goto Lbb
            ta.a r0 = r9.i0
            java.util.ArrayList r0 = r0.D
            int r0 = r0.size()
            if (r8 < r0) goto L5a
            goto Lbe
        L5a:
            androidx.media3.exoplayer.trackselection.DefaultTrackSelector r0 = r9.O1
            androidx.media3.exoplayer.trackselection.MappingTrackSelector$MappedTrackInfo r0 = r0.getCurrentMappedTrackInfo()
            ta.a r1 = r9.i0
            java.util.ArrayList r1 = r1.D
            java.lang.Object r1 = r1.get(r8)
            org.bitspark.android.beans.SubtitleMenu r1 = (org.bitspark.android.beans.SubtitleMenu) r1
            androidx.media3.exoplayer.trackselection.DefaultTrackSelector r2 = r9.O1
            androidx.media3.exoplayer.trackselection.MappingTrackSelector$MappedTrackInfo r2 = r2.getCurrentMappedTrackInfo()
            r3 = -1
            if (r2 != 0) goto L75
        L73:
            r4 = -1
            goto L91
        L75:
            r4 = 0
        L76:
            int r5 = r2.getRendererCount()
            if (r4 >= r5) goto L73
            int r5 = r2.getRendererType(r4)
            r6 = 1
            if (r5 != r6) goto L8e
            androidx.media3.exoplayer.source.TrackGroupArray r5 = r2.getTrackGroups(r4)
            if (r5 == 0) goto L8e
            int r5 = r5.length
            if (r5 <= 0) goto L8e
            goto L91
        L8e:
            int r4 = r4 + 1
            goto L76
        L91:
            if (r4 != r3) goto L94
            goto Lbe
        L94:
            androidx.media3.exoplayer.source.TrackGroupArray r0 = r0.getTrackGroups(r4)
            androidx.media3.exoplayer.trackselection.DefaultTrackSelector r2 = r9.O1
            androidx.media3.exoplayer.trackselection.DefaultTrackSelector$Parameters$Builder r3 = r2.buildUponParameters()
            androidx.media3.exoplayer.trackselection.DefaultTrackSelector$SelectionOverride r5 = new androidx.media3.exoplayer.trackselection.DefaultTrackSelector$SelectionOverride
            int r6 = r1.getGroupIndex()
            int r1 = r1.getTrackIndex()
            int[] r1 = new int[]{r1}
            r5.<init>(r6, r1)
            androidx.media3.exoplayer.trackselection.DefaultTrackSelector$Parameters$Builder r0 = r3.setSelectionOverride(r4, r0, r5)
            androidx.media3.exoplayer.trackselection.DefaultTrackSelector$Parameters r0 = r0.build()
            r2.setParameters(r0)
            goto Lbe
        Lbb:
            r9.getClass()
        Lbe:
            fa.o1 r0 = r9.x0
            r0.f6817e = r8
            r0.notifyDataSetChanged()
            ta.a r9 = r9.i0
            r9.f10265u = r8
            return
        Lca:
            org.bitspark.android.Spark r9 = r7.f6705b
            androidx.leanback.widget.HorizontalGridView r9 = r9.B0
            o9.d.z(r9, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ea.k.a(int, android.view.View):void");
    }

    public void b(int i6, Object obj) {
        switch (this.f6704a) {
            case 8:
                VodMenu vodMenu = (VodMenu) obj;
                Spark spark = this.f6705b;
                spark.i0.f10268x = i6;
                spark.f8723u0.f6817e = i6;
                spark.A0.setVisibility(0);
                if (!vodMenu.getName().equals(e.f6638b.name())) {
                    if (!vodMenu.getName().equals(e.f6639c.name())) {
                        if (!vodMenu.getName().equals(e.d.name())) {
                            if (vodMenu.getName().equals(e.f6640e.name())) {
                                spark.f8721t0.a(spark.i0.f10269y);
                                o1 o1Var = spark.f8721t0;
                                o1Var.f6817e = spark.i0.f10267w;
                                spark.A0.setAdapter(o1Var);
                                spark.B0.setVisibility(8);
                                break;
                            }
                        } else {
                            spark.f8731y0.a(spark.i0.B);
                            o1 o1Var2 = spark.f8731y0;
                            o1Var2.f6817e = spark.i0.f10264t;
                            spark.A0.setAdapter(o1Var2);
                            spark.B0.setVisibility(8);
                            break;
                        }
                    } else {
                        spark.x0.a(spark.i0.D);
                        o1 o1Var3 = spark.x0;
                        o1Var3.f6817e = spark.i0.f10265u;
                        spark.A0.setAdapter(o1Var3);
                        spark.B0.setVisibility(8);
                        break;
                    }
                } else {
                    spark.f8727w0.a(spark.i0.f10270z);
                    if (spark.i0.f10270z.size() <= 1) {
                        spark.i0.A.clear();
                        ta.a aVar = spark.i0;
                        aVar.A.addAll(aVar.f10261q.getSources());
                    } else if (spark.i0.f10270z.size() > 1) {
                        o1 o1Var4 = spark.f8727w0;
                        ta.a aVar2 = spark.i0;
                        int i10 = aVar2.f10263s;
                        o1Var4.f6817e = i10;
                        aVar2.m(i10);
                    }
                    if (!spark.i0.A.isEmpty()) {
                        spark.f8725v0.a(spark.i0.A);
                        spark.f8725v0.f6817e = spark.i0.d(-1);
                    }
                    if (spark.i0.f10270z.size() <= 1) {
                        spark.B0.setVisibility(8);
                    } else {
                        spark.B0.setAdapter(spark.f8727w0);
                        spark.B0.setVisibility(0);
                        spark.f8727w0.notifyDataSetChanged();
                    }
                    spark.A0.setAdapter(spark.f8725v0);
                    spark.f8725v0.notifyDataSetChanged();
                    spark.A0.setVisibility(0);
                    spark.A0.smoothScrollToPosition(spark.f8725v0.f6817e);
                    break;
                }
                break;
            default:
                Spark spark2 = this.f6705b;
                ta.a aVar3 = spark2.i0;
                aVar3.f10263s = i6;
                aVar3.m(i6);
                spark2.f8725v0.f6817e = spark2.i0.d(-1);
                spark2.f8725v0.a(spark2.i0.A);
                spark2.f8725v0.notifyDataSetChanged();
                ka.m0.E0.postDelayed(new a.f(15, this), 100L);
                break;
        }
    }

    @Override // androidx.lifecycle.e0
    public void c(Object obj) {
        switch (this.f6704a) {
            case 0:
                int iIntValue = ((Integer) obj).intValue();
                Spark spark = this.f6705b;
                if (iIntValue == 1) {
                    VerticalGridView verticalGridView = spark.I.W;
                    if (verticalGridView != null) {
                        verticalGridView.setFocusScrollStrategy(1);
                    }
                    spark.f8717r0.setVisibility(0);
                    spark.d0(true);
                    return;
                }
                spark.f8717r0.setVisibility(8);
                if (spark.getCurrentFocus() == null || !(spark.getCurrentFocus() instanceof RadioButton)) {
                    spark.q0(Boolean.FALSE);
                    return;
                } else {
                    spark.q0(Boolean.TRUE);
                    return;
                }
            case 1:
                Integer num = (Integer) obj;
                Spark spark2 = this.f6705b;
                if (spark2.i0.h()) {
                    return;
                }
                if (num.intValue() != 0) {
                    spark2.d0(true);
                    return;
                } else if (spark2.getCurrentFocus() == null || !(spark2.getCurrentFocus() instanceof RadioButton)) {
                    spark2.N(true);
                    return;
                } else {
                    spark2.d0(true);
                    return;
                }
            case 2:
                this.f6705b.f8719s0.post(new a3.c(this, 13, (String) obj));
                return;
            case 3:
                int iIntValue2 = ((Integer) obj).intValue();
                Spark spark3 = this.f6705b;
                if (iIntValue2 == 1) {
                    if (spark3.L1.isPlaying() && Spark.f8666g2) {
                        Spark.X1.sendEmptyMessage(100);
                        return;
                    }
                    String strS = a2.a.s("KPg3CvKc\n", "aqt6a5vyMNI=\n");
                    String strS2 = a2.a.s("WR65nqjrS3NuH7eFlvk=\n", "KnbW6fmeIgc=\n");
                    boolean z7 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS, strS2);
                    org.bitspark.android.utils.m.p(spark3);
                    return;
                }
                if (iIntValue2 == 2) {
                    if (spark3.L1.isPlaying() && Spark.f8666g2) {
                        Spark.X1.sendEmptyMessage(100);
                        return;
                    } else {
                        Spark.X1.sendEmptyMessage(105);
                        return;
                    }
                }
                if (iIntValue2 == 3) {
                    x0 x0Var = spark3.J.f7819d0;
                    if (x0Var != null) {
                        boolean zIsPlaying = spark3.L1.isPlaying();
                        boolean z10 = Spark.f8666g2;
                        x0Var.getClass();
                        if (zIsPlaying && z10) {
                            Spark.X1.sendEmptyMessage(100);
                            return;
                        } else if (x0Var.f6926b <= 0) {
                            Spark.X1.sendEmptyMessage(144);
                            return;
                        } else {
                            x0Var.f6928e.getLayoutManager();
                            x0Var.a(-x0Var.f6926b);
                            return;
                        }
                    }
                    return;
                }
                if (iIntValue2 == 4) {
                    spark3.getClass();
                    throw null;
                }
                if (iIntValue2 == 5) {
                    o9.d.y(spark3.J.V);
                    return;
                }
                if (iIntValue2 != 120) {
                    return;
                }
                ka.m0 m0Var = spark3.J;
                m0Var.getClass();
                String strS3 = a2.a.s("RtG95T+OUydb8rf+FLNZNUDA/7EXhEgmbtum5AqnQj1F5qz2EZU=\n", "KLTFkXnhMFI=\n");
                boolean z11 = org.bitspark.android.utils.m.f8784b;
                Log.i(ka.m0.B0, strS3);
                if (m0Var.f7832r0) {
                    m0Var.f7818c0.f6935e = new a7.f((Object) m0Var, 29, (Object) 5);
                    return;
                } else if (ka.m0.G0) {
                    o9.d.y(m0Var.f7824j0);
                    return;
                } else {
                    o9.d.y(m0Var.X);
                    return;
                }
            default:
                ChannelBean channelBean = (ChannelBean) obj;
                Spark spark4 = this.f6705b;
                spark4.getClass();
                spark4.a0(Spark.S(), R$drawable.home_live_channel_not_uploaded_2x, this.f6705b.C0);
                int chid = channelBean.getChid();
                if (channelBean.getLevel() >= 18) {
                    this.f6705b.f8716q1.setVisibility(8);
                } else {
                    this.f6705b.f8716q1.setVisibility(0);
                    if (ga.d.f.contains(chid + "")) {
                        this.f6705b.f8716q1.setChecked(true);
                    } else {
                        this.f6705b.f8716q1.setChecked(false);
                    }
                }
                this.f6705b.i0.C.clear();
                return;
        }
    }

    @Override // com.tvbus.engine.TVListener
    public void onInfo(String str) {
        a2.a.s("3JpaI754\n", "nskXQtcWDcU=\n");
        a2.a.s("YK/FJhbF64lasOgvC4DlyBrZ\n", "NPmGSWSgy+Y=\n");
        if (Spark.K(this.f6705b, a2.a.s("flCaCQEM\n", "ET7TZ2djzVs=\n"), str)) {
            Spark.X1.sendEmptyMessage(71);
        }
        Spark.X1.sendEmptyMessage(201);
    }

    @Override // com.tvbus.engine.TVListener
    public void onInited(String str) {
        String strS = a2.a.s("qNXoToE2\n", "6oalL+hY5IM=\n");
        String strK = q.k("J6H3uutvaa8A19278H4solPZmvu5\n", "c/e01ZkKScY=\n", new StringBuilder(), str);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strK);
        Spark.K(this.f6705b, a2.a.s("qVWdMTe3reM=\n", "xjvUX17DyIc=\n"), str);
    }

    @Override // com.tvbus.engine.TVListener
    public void onPrepared(String str) {
        String strS = a2.a.s("Z3w44p+j\n", "JS91g/bNAyI=\n");
        String strK = q.k("wa9L7g/Krxv7qXrkDc79EfHZJq9Tjw==\n", "lfkIgX2vj3Q=\n", new StringBuilder(), str);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strK);
        String strS2 = a2.a.s("/Tu/4pd74wv3MQ==\n", "klXvkPILgnk=\n");
        Spark spark = this.f6705b;
        boolean zK = Spark.K(spark, strS2, str);
        if (spark.V()) {
            Spark.X1.post(new b1.l(3));
        }
        if (org.bitspark.android.utils.b.c().f8759a) {
            org.bitspark.android.utils.b.c().getClass();
            throw null;
        }
        if (zK) {
            Message message = new Message();
            Bundle bundle = new Bundle();
            bundle.putString(a2.a.s("cbssgy/UKWpv\n", "B9JI5kCESB4=\n"), Spark.f8667h2);
            message.what = 81;
            message.setData(bundle);
            Spark.X1.sendMessage(message);
            Spark.f8669j2 = false;
            String str2 = h.f6672a;
        }
    }

    @Override // com.tvbus.engine.TVListener
    public void onQuit(String str) {
        String strS = a2.a.s("flZLXgLD\n", "PAUGP2ut/Sg=\n");
        String strK = q.k("opdj0x80I8yYkFXVGXEtjdjh\n", "9sEgvG1RA6M=\n", new StringBuilder(), str);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strK);
    }

    @Override // com.tvbus.engine.TVListener
    public void onStart(String str) {
        String strS = a2.a.s("nJr3RF40\n", "3sm6JTdaBcw=\n");
        String strK = q.k("NvnNR2uV/f4M/PpJa4T9v0yBrg==\n", "Yq+OKBnw3ZE=\n", new StringBuilder(), str);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strK);
        String strS2 = a2.a.s("Uq1VOTBabg==\n", "PcMGTVEoGh0=\n");
        Spark spark = this.f6705b;
        Spark.K(spark, strS2, str);
        if (Spark.f8666g2) {
            spark.w0(0.9f);
        } else {
            spark.f8686b0.post(new v(spark, 0));
        }
    }

    @Override // com.tvbus.engine.TVListener
    public void onStop(String str) {
        String strS = a2.a.s("5FPPxg57\n", "pgCCp2cVhwo=\n");
        String strK = q.k("YD+msHLq7gZaOpGwcK/gRxpJ\n", "NGnl3wCPzmk=\n", new StringBuilder(), str);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strK);
        Spark.K(this.f6705b, a2.a.s("ru7Vcgsm\n", "wYCGBmRWU3w=\n"), str);
    }
}
