package androidx.appcompat.widget;

import android.R;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsSeekBar;
import android.widget.EditText;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class b0 {
    public static final int[] d = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f669a = 2;

    /* renamed from: b, reason: collision with root package name */
    public View f670b;

    /* renamed from: c, reason: collision with root package name */
    public Object f671c;

    public /* synthetic */ b0() {
    }

    public KeyListener a(KeyListener keyListener) {
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        ((a7.f) ((a0.b) this.f671c).f32b).getClass();
        if (keyListener instanceof d1.e) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new d1.e(keyListener);
    }

    public void b(AttributeSet attributeSet, int i6) {
        switch (this.f669a) {
            case 0:
                AbsSeekBar absSeekBar = (AbsSeekBar) this.f670b;
                a1.b bVarC = a1.b.C(absSeekBar.getContext(), attributeSet, d, i6);
                Drawable drawableU = bVarC.u(0);
                if (drawableU != null) {
                    if (drawableU instanceof AnimationDrawable) {
                        AnimationDrawable animationDrawable = (AnimationDrawable) drawableU;
                        int numberOfFrames = animationDrawable.getNumberOfFrames();
                        AnimationDrawable animationDrawable2 = new AnimationDrawable();
                        animationDrawable2.setOneShot(animationDrawable.isOneShot());
                        for (int i10 = 0; i10 < numberOfFrames; i10++) {
                            Drawable drawableE = e(animationDrawable.getFrame(i10), true);
                            drawableE.setLevel(10000);
                            animationDrawable2.addFrame(drawableE, animationDrawable.getDuration(i10));
                        }
                        animationDrawable2.setLevel(10000);
                        drawableU = animationDrawable2;
                    }
                    absSeekBar.setIndeterminateDrawable(drawableU);
                }
                Drawable drawableU2 = bVarC.u(1);
                if (drawableU2 != null) {
                    absSeekBar.setProgressDrawable(e(drawableU2, false));
                }
                bVarC.F();
                return;
            default:
                TypedArray typedArrayObtainStyledAttributes = ((EditText) this.f670b).getContext().obtainStyledAttributes(attributeSet, e.a.f6354j, i6, 0);
                try {
                    boolean z7 = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
                    typedArrayObtainStyledAttributes.recycle();
                    d(z7);
                    return;
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes.recycle();
                    throw th;
                }
        }
    }

    public d1.b c(InputConnection inputConnection, EditorInfo editorInfo) {
        a0.b bVar = (a0.b) this.f671c;
        if (inputConnection == null) {
            bVar.getClass();
            inputConnection = null;
        } else {
            a7.f fVar = (a7.f) bVar.f32b;
            fVar.getClass();
            if (!(inputConnection instanceof d1.b)) {
                inputConnection = new d1.b((EditText) fVar.f169b, inputConnection, editorInfo);
            }
        }
        return (d1.b) inputConnection;
    }

    public void d(boolean z7) {
        d1.h hVar = (d1.h) ((a7.f) ((a0.b) this.f671c).f32b).f170c;
        if (hVar.f6013c != z7) {
            if (hVar.f6012b != null) {
                b1.i iVarA = b1.i.a();
                i3 i3Var = hVar.f6012b;
                iVarA.getClass();
                a2.a.p(i3Var, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = iVarA.f3107a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    iVarA.f3108b.remove(i3Var);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            hVar.f6013c = z7;
            if (z7) {
                d1.h.a(hVar.f6011a, b1.i.a().b());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable e(Drawable drawable, boolean z7) {
        if (drawable instanceof g0.i) {
            g0.j jVar = (g0.j) ((g0.i) drawable);
            Drawable drawable2 = jVar.f;
            if (drawable2 != null) {
                jVar.h(e(drawable2, z7));
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i6 = 0; i6 < numberOfLayers; i6++) {
                    int id = layerDrawable.getId(i6);
                    drawableArr[i6] = e(layerDrawable.getDrawable(i6), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i10 = 0; i10 < numberOfLayers; i10++) {
                    layerDrawable2.setId(i10, layerDrawable.getId(i10));
                    if (Build.VERSION.SDK_INT >= 23) {
                        a0.b(layerDrawable, layerDrawable2, i10);
                    }
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (((Bitmap) this.f671c) == null) {
                    this.f671c = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z7 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }

    public b0(AbsSeekBar absSeekBar) {
        this.f670b = absSeekBar;
    }

    public b0(EditText editText) {
        this.f670b = editText;
        this.f671c = new a0.b(editText);
    }
}
