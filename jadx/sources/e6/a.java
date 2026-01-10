package e6;

import android.widget.CompoundButton;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.material.chip.Chip;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6567a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6568b;

    public /* synthetic */ a(int i6, Object obj) {
        this.f6567a = i6;
        this.f6568b = obj;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z7) {
        switch (this.f6567a) {
            case 0:
                Chip chip = (Chip) this.f6568b;
                com.google.android.material.internal.f fVar = chip.f4773j;
                if (fVar != null) {
                    a0.b bVar = (a0.b) fVar;
                    bVar.getClass();
                    com.google.android.material.internal.a aVar = (com.google.android.material.internal.a) bVar.f32b;
                    if (!z7 ? aVar.e(chip, aVar.f4979e) : aVar.a(chip)) {
                        aVar.d();
                    }
                }
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = chip.f4772i;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z7);
                    break;
                }
                break;
            default:
                la.d dVar = (la.d) this.f6568b;
                if (!z7) {
                    dVar.Z.setInputType(TsExtractor.TS_STREAM_TYPE_AC3);
                    break;
                } else {
                    dVar.Z.setInputType(145);
                    break;
                }
        }
    }
}
