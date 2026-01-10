package com.google.android.material.textfield;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.SeekBar;
import com.google.android.gms.cast.framework.media.widget.CastSeekBar;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p extends View.AccessibilityDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5350a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5351b;

    public /* synthetic */ p(int i6, Object obj) {
        this.f5350a = i6;
        this.f5351b = obj;
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.f5350a) {
            case 1:
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                accessibilityEvent.setClassName(SeekBar.class.getName());
                CastSeekBar castSeekBar = (CastSeekBar) this.f5351b;
                accessibilityEvent.setItemCount(castSeekBar.f3851a.f10334b);
                accessibilityEvent.setCurrentItemIndex(castSeekBar.getProgress());
                break;
            default:
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                break;
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        switch (this.f5350a) {
            case 0:
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                EditText editText = ((q) this.f5351b).f5353b.getEditText();
                if (editText != null) {
                    accessibilityNodeInfo.setLabeledBy(editText);
                    break;
                }
                break;
            default:
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setClassName(SeekBar.class.getName());
                if (view.isEnabled()) {
                    accessibilityNodeInfo.addAction(4096);
                    accessibilityNodeInfo.addAction(8192);
                    break;
                }
                break;
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View view, int i6, Bundle bundle) {
        switch (this.f5350a) {
            case 1:
                if (!view.isEnabled()) {
                    return false;
                }
                if (super.performAccessibilityAction(view, i6, bundle)) {
                    return true;
                }
                if (i6 != 4096 && i6 != 8192) {
                    return false;
                }
                int i10 = CastSeekBar.f3850t;
                CastSeekBar castSeekBar = (CastSeekBar) this.f5351b;
                castSeekBar.e();
                int i11 = castSeekBar.f3851a.f10334b / 20;
                if (i6 == 8192) {
                    i11 = -i11;
                }
                castSeekBar.d(castSeekBar.getProgress() + i11);
                castSeekBar.f3852b = false;
                s2.c cVar = castSeekBar.f;
                if (cVar == null) {
                    return false;
                }
                cVar.h(castSeekBar);
                return false;
            default:
                return super.performAccessibilityAction(view, i6, bundle);
        }
    }
}
