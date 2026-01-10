package androidx.media3.ui;

import android.view.View;
import androidx.media3.ui.PlayerControlView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2494a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2495b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f2494a = i6;
        this.f2495b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f2494a) {
            case 0:
                ((PlayerControlView.AudioTrackSelectionAdapter) this.f2495b).lambda$onBindViewHolderAtZeroPosition$0(view);
                break;
            case 1:
                ((PlayerControlView.SettingViewHolder) this.f2495b).lambda$new$0(view);
                break;
            case 2:
                ((PlayerControlView.TextTrackSelectionAdapter) this.f2495b).lambda$onBindViewHolderAtZeroPosition$0(view);
                break;
            case 3:
                ((PlayerControlViewLayoutManager) this.f2495b).onOverflowButtonClick(view);
                break;
            default:
                ((PlayerControlView) this.f2495b).onFullscreenButtonClicked(view);
                break;
        }
    }
}
