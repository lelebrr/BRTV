package y;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import ea.q;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public String f11141a;

    /* renamed from: b, reason: collision with root package name */
    public int f11142b;

    /* renamed from: c, reason: collision with root package name */
    public int f11143c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public String f11144e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f11145g;

    public a(a aVar, Object obj) {
        this.f11141a = aVar.f11141a;
        this.f11142b = aVar.f11142b;
        h(obj);
    }

    public static int a(int i6) {
        int i10 = (i6 & (~(i6 >> 31))) - 255;
        return (i10 & (i10 >> 31)) + 255;
    }

    public static void e(Context context, XmlResourceParser xmlResourceParser, HashMap map) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), j.f11212e);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string = null;
        Object string2 = null;
        int i6 = 0;
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == 0) {
                string = typedArrayObtainStyledAttributes.getString(index);
                if (string != null && string.length() > 0) {
                    string = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                }
            } else if (index == 1) {
                string2 = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                i6 = 6;
            } else if (index == 3) {
                string2 = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                i6 = 3;
            } else if (index == 2) {
                string2 = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                i6 = 4;
            } else {
                if (index == 7) {
                    string2 = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == 4) {
                    string2 = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == 5) {
                    string2 = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                    i6 = 2;
                } else if (index == 6) {
                    string2 = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                    i6 = 1;
                } else if (index == 8) {
                    string2 = typedArrayObtainStyledAttributes.getString(index);
                    i6 = 5;
                }
                i6 = 7;
            }
        }
        if (string != null && string2 != null) {
            a aVar = new a();
            aVar.f11141a = string;
            aVar.f11142b = i6;
            aVar.h(string2);
            map.put(string, aVar);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void f(View view, HashMap map) {
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            a aVar = (a) map.get(str);
            String strP = q.p("set", str);
            try {
                switch (u.h.a(aVar.f11142b)) {
                    case 0:
                        cls.getMethod(strP, Integer.TYPE).invoke(view, Integer.valueOf(aVar.f11143c));
                        break;
                    case 1:
                        cls.getMethod(strP, Float.TYPE).invoke(view, Float.valueOf(aVar.d));
                        break;
                    case 2:
                        cls.getMethod(strP, Integer.TYPE).invoke(view, Integer.valueOf(aVar.f11145g));
                        break;
                    case 3:
                        Method method = cls.getMethod(strP, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(aVar.f11145g);
                        method.invoke(view, colorDrawable);
                        break;
                    case 4:
                        cls.getMethod(strP, CharSequence.class).invoke(view, aVar.f11144e);
                        break;
                    case 5:
                        cls.getMethod(strP, Boolean.TYPE).invoke(view, Boolean.valueOf(aVar.f));
                        break;
                    case 6:
                        cls.getMethod(strP, Float.TYPE).invoke(view, Float.valueOf(aVar.d));
                        break;
                }
            } catch (IllegalAccessException e5) {
                StringBuilder sbX = a.e.x(" Custom Attribute \"", str, "\" not found on ");
                sbX.append(cls.getName());
                Log.e("TransitionLayout", sbX.toString());
                e5.printStackTrace();
            } catch (NoSuchMethodException e10) {
                Log.e("TransitionLayout", e10.getMessage());
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                Log.e("TransitionLayout", cls.getName() + " must have a method " + strP);
            } catch (InvocationTargetException e11) {
                StringBuilder sbX2 = a.e.x(" Custom Attribute \"", str, "\" not found on ");
                sbX2.append(cls.getName());
                Log.e("TransitionLayout", sbX2.toString());
                e11.printStackTrace();
            }
        }
    }

    public final float b() {
        switch (u.h.a(this.f11142b)) {
            case 0:
                return this.f11143c;
            case 1:
                return this.d;
            case 2:
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
                throw new RuntimeException("Cannot interpolate String");
            case 5:
                return this.f ? 0.0f : 1.0f;
            case 6:
                return this.d;
            default:
                return Float.NaN;
        }
    }

    public final void c(float[] fArr) {
        switch (u.h.a(this.f11142b)) {
            case 0:
                fArr[0] = this.f11143c;
                return;
            case 1:
                fArr[0] = this.d;
                return;
            case 2:
            case 3:
                int i6 = (this.f11145g >> 24) & 255;
                float fPow = (float) Math.pow(((r0 >> 16) & 255) / 255.0f, 2.2d);
                float fPow2 = (float) Math.pow(((r0 >> 8) & 255) / 255.0f, 2.2d);
                float fPow3 = (float) Math.pow((r0 & 255) / 255.0f, 2.2d);
                fArr[0] = fPow;
                fArr[1] = fPow2;
                fArr[2] = fPow3;
                fArr[3] = i6 / 255.0f;
                return;
            case 4:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 5:
                fArr[0] = this.f ? 0.0f : 1.0f;
                return;
            case 6:
                fArr[0] = this.d;
                return;
            default:
                return;
        }
    }

    public final int d() {
        int iA = u.h.a(this.f11142b);
        return (iA == 2 || iA == 3) ? 4 : 1;
    }

    public final void g(View view, float[] fArr) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = view.getClass();
        StringBuilder sb = new StringBuilder("set");
        String str = this.f11141a;
        sb.append(str);
        String string = sb.toString();
        try {
            switch (u.h.a(this.f11142b)) {
                case 0:
                    cls.getMethod(string, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case 1:
                    cls.getMethod(string, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case 2:
                    cls.getMethod(string, Integer.TYPE).invoke(view, Integer.valueOf((a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (a((int) (fArr[3] * 255.0f)) << 24) | (a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 3:
                    Method method = cls.getMethod(string, Drawable.class);
                    int iA = a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f)) | (a((int) (fArr[3] * 255.0f)) << 24) | (a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8);
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(iA);
                    method.invoke(view, colorDrawable);
                    return;
                case 4:
                    throw new RuntimeException("unable to interpolate strings " + str);
                case 5:
                    cls.getMethod(string, Boolean.TYPE).invoke(view, Boolean.valueOf(fArr[0] > 0.5f));
                    return;
                case 6:
                    cls.getMethod(string, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e5) {
            StringBuilder sbX = a.e.x("cannot access method ", string, "on View \"");
            sbX.append(a2.a.y(view));
            sbX.append("\"");
            Log.e("TransitionLayout", sbX.toString());
            e5.printStackTrace();
        } catch (NoSuchMethodException e10) {
            StringBuilder sbX2 = a.e.x("no method ", string, "on View \"");
            sbX2.append(a2.a.y(view));
            sbX2.append("\"");
            Log.e("TransitionLayout", sbX2.toString());
            e10.printStackTrace();
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
        }
    }

    public final void h(Object obj) {
        switch (u.h.a(this.f11142b)) {
            case 0:
                this.f11143c = ((Integer) obj).intValue();
                break;
            case 1:
                this.d = ((Float) obj).floatValue();
                break;
            case 2:
            case 3:
                this.f11145g = ((Integer) obj).intValue();
                break;
            case 4:
                this.f11144e = (String) obj;
                break;
            case 5:
                this.f = ((Boolean) obj).booleanValue();
                break;
            case 6:
                this.d = ((Float) obj).floatValue();
                break;
        }
    }
}
