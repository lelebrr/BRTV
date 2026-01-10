package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Placeholder extends View {

    /* renamed from: a, reason: collision with root package name */
    public int f1080a;

    /* renamed from: b, reason: collision with root package name */
    public View f1081b;

    /* renamed from: c, reason: collision with root package name */
    public int f1082c;

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1080a = -1;
        this.f1081b = null;
        this.f1082c = 4;
        a(attributeSet);
    }

    public final void a(AttributeSet attributeSet) {
        super.setVisibility(this.f1082c);
        this.f1080a = -1;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, j.f11211c);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 0) {
                    this.f1080a = typedArrayObtainStyledAttributes.getResourceId(index, this.f1080a);
                } else if (index == 1) {
                    this.f1082c = typedArrayObtainStyledAttributes.getInt(index, this.f1082c);
                }
            }
        }
    }

    public View getContent() {
        return this.f1081b;
    }

    public int getEmptyVisibility() {
        return this.f1082c;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((rect.height() / 2.0f) + (iHeight / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i6) {
        View viewFindViewById;
        if (this.f1080a == i6) {
            return;
        }
        View view = this.f1081b;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.LayoutParams) this.f1081b.getLayoutParams()).f1033a0 = false;
            this.f1081b = null;
        }
        this.f1080a = i6;
        if (i6 == -1 || (viewFindViewById = ((View) getParent()).findViewById(i6)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i6) {
        this.f1082c = i6;
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1080a = -1;
        this.f1081b = null;
        this.f1082c = 4;
        a(attributeSet);
    }
}
