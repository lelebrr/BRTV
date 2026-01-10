package d1;

import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import java.nio.ByteBuffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends InputConnectionWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final EditText f5999a;

    /* renamed from: b, reason: collision with root package name */
    public final x4.e f6000b;

    public b(EditText editText, InputConnection inputConnection, EditorInfo editorInfo) {
        x4.e eVar = new x4.e(7);
        super(inputConnection, false);
        this.f5999a = editText;
        this.f6000b = eVar;
        if (b1.i.f3106j != null) {
            b1.i iVarA = b1.i.a();
            if (iVarA.b() != 1 || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            b1.f fVar = iVarA.f3110e;
            fVar.getClass();
            Bundle bundle = editorInfo.extras;
            c1.b bVar = (c1.b) fVar.f3104c.f38b;
            int iA = bVar.a(4);
            bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", iA != 0 ? ((ByteBuffer) bVar.d).getInt(iA + bVar.f3334a) : 0);
            Bundle bundle2 = editorInfo.extras;
            fVar.f3102a.getClass();
            bundle2.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i6, int i10) {
        Editable editableText = this.f5999a.getEditableText();
        this.f6000b.getClass();
        return x4.e.n(this, editableText, i6, i10, false) || super.deleteSurroundingText(i6, i10);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i6, int i10) {
        Editable editableText = this.f5999a.getEditableText();
        this.f6000b.getClass();
        return x4.e.n(this, editableText, i6, i10, true) || super.deleteSurroundingTextInCodePoints(i6, i10);
    }
}
