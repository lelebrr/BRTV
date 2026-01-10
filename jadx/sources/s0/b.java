package s0;

import android.view.inputmethod.EditorInfo;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b {
    public static void a(EditorInfo editorInfo, CharSequence charSequence) {
        editorInfo.setInitialSurroundingSubText(charSequence, 0);
    }
}
