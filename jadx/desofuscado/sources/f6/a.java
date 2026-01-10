package f6;

import android.animation.TypeEvaluator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements TypeEvaluator {

    /* renamed from: b, reason: collision with root package name */
    public static final a f6787b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final d f6788a = new d();

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f, Object obj, Object obj2) {
        d dVar = (d) obj;
        d dVar2 = (d) obj2;
        float f3 = dVar.f6791a;
        float f4 = 1.0f - f;
        float f5 = (dVar2.f6791a * f) + (f3 * f4);
        float f10 = dVar.f6792b;
        float f11 = (dVar2.f6792b * f) + (f10 * f4);
        float f12 = dVar.f6793c;
        float f13 = (f * dVar2.f6793c) + (f4 * f12);
        d dVar3 = this.f6788a;
        dVar3.f6791a = f5;
        dVar3.f6792b = f11;
        dVar3.f6793c = f13;
        return dVar3;
    }
}
