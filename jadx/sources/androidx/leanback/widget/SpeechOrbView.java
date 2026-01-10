package androidx.leanback.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SpeechOrbView extends SearchOrbView {

    /* renamed from: t, reason: collision with root package name */
    public final float f1787t;

    /* renamed from: u, reason: collision with root package name */
    public y0 f1788u;

    /* renamed from: v, reason: collision with root package name */
    public y0 f1789v;

    /* renamed from: w, reason: collision with root package name */
    public int f1790w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f1791x;

    public SpeechOrbView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void c() {
        setOrbColors(this.f1789v);
        setOrbIcon(getResources().getDrawable(R.drawable.lb_ic_search_mic_out));
        a(hasFocus());
        View view = this.f1760c;
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        this.f1791x = false;
    }

    @Override // androidx.leanback.widget.SearchOrbView
    public int getLayoutResourceId() {
        return R.layout.lb_speech_orb;
    }

    public void setListeningOrbColors(y0 y0Var) {
        this.f1788u = y0Var;
    }

    public void setNotListeningOrbColors(y0 y0Var) {
        this.f1789v = y0Var;
    }

    public void setSoundLevel(int i6) {
        if (this.f1791x) {
            int i10 = this.f1790w;
            if (i6 > i10) {
                this.f1790w = ((i6 - i10) / 2) + i10;
            } else {
                this.f1790w = (int) (i10 * 0.7f);
            }
            float focusedZoom = (((this.f1787t - getFocusedZoom()) * this.f1790w) / 100.0f) + 1.0f;
            View view = this.f1760c;
            view.setScaleX(focusedZoom);
            view.setScaleY(focusedZoom);
        }
    }

    public SpeechOrbView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1790w = 0;
        this.f1791x = false;
        Resources resources = context.getResources();
        this.f1787t = resources.getFraction(R.fraction.lb_search_bar_speech_orb_max_level_zoom, 1, 1);
        this.f1789v = new y0(resources.getColor(R.color.lb_speech_orb_not_recording), resources.getColor(R.color.lb_speech_orb_not_recording_pulsed), resources.getColor(R.color.lb_speech_orb_not_recording_icon));
        this.f1788u = new y0(resources.getColor(R.color.lb_speech_orb_recording), resources.getColor(R.color.lb_speech_orb_recording), 0);
        c();
    }
}
