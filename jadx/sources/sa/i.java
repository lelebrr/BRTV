package sa;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.tencent.mars.xlog.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EditText f9859a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l6.h f9860b;

    public i(l6.h hVar, EditText editText) {
        this.f9860b = hVar;
        this.f9859a = editText;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        String strS = a2.a.s("qZm3MaHLhA==\n", "+e7Tdc2stsQ=\n");
        String strS2 = a2.a.s("3z+cCvOT4aTZMrtF8pqCuNEioxLyhsaNxA==\n", "sFHQZZ30osg=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
        EditText editText = this.f9859a;
        editText.setInputType(16);
        editText.setImeOptions(6);
        InputMethodManager inputMethodManager = (InputMethodManager) ((Context) this.f9860b.f8016b).getSystemService(a2.a.s("hwQ+WDpybf+aAiFJ\n", "7mpOLU4tAJo=\n"));
        if (inputMethodManager == null) {
            return true;
        }
        inputMethodManager.showSoftInput(editText, 0);
        return true;
    }
}
