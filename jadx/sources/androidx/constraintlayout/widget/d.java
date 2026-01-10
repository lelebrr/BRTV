package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.flac.FlacConstants;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.media3.extractor.ts.TsExtractor;
import com.alibaba.fastjson.asm.Opcodes;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import me.jessyan.autosize.BuildConfig;
import org.xmlpull.v1.XmlPullParserException;
import y.e;
import y.f;
import y.g;
import y.i;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {
    public static final int[] d = {0, 4, 8};

    /* renamed from: e, reason: collision with root package name */
    public static final SparseIntArray f1095e;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1096a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public boolean f1097b = true;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f1098c = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f1095e = sparseIntArray;
        sparseIntArray.append(76, 25);
        sparseIntArray.append(77, 26);
        sparseIntArray.append(79, 29);
        sparseIntArray.append(80, 30);
        sparseIntArray.append(86, 36);
        sparseIntArray.append(85, 35);
        sparseIntArray.append(58, 4);
        sparseIntArray.append(57, 3);
        sparseIntArray.append(55, 1);
        sparseIntArray.append(94, 6);
        sparseIntArray.append(95, 7);
        sparseIntArray.append(65, 17);
        sparseIntArray.append(66, 18);
        sparseIntArray.append(67, 19);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(81, 32);
        sparseIntArray.append(82, 33);
        sparseIntArray.append(64, 10);
        sparseIntArray.append(63, 9);
        sparseIntArray.append(98, 13);
        sparseIntArray.append(101, 16);
        sparseIntArray.append(99, 14);
        sparseIntArray.append(96, 11);
        sparseIntArray.append(100, 15);
        sparseIntArray.append(97, 12);
        sparseIntArray.append(89, 40);
        sparseIntArray.append(74, 39);
        sparseIntArray.append(73, 41);
        sparseIntArray.append(88, 42);
        sparseIntArray.append(72, 20);
        sparseIntArray.append(87, 37);
        sparseIntArray.append(62, 5);
        sparseIntArray.append(75, 82);
        sparseIntArray.append(84, 82);
        sparseIntArray.append(78, 82);
        sparseIntArray.append(56, 82);
        sparseIntArray.append(54, 82);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(90, 54);
        sparseIntArray.append(68, 55);
        sparseIntArray.append(91, 56);
        sparseIntArray.append(69, 57);
        sparseIntArray.append(92, 58);
        sparseIntArray.append(70, 59);
        sparseIntArray.append(59, 61);
        sparseIntArray.append(61, 62);
        sparseIntArray.append(60, 63);
        sparseIntArray.append(27, 64);
        sparseIntArray.append(106, 65);
        sparseIntArray.append(33, 66);
        sparseIntArray.append(107, 67);
        sparseIntArray.append(103, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(102, 68);
        sparseIntArray.append(93, 69);
        sparseIntArray.append(71, 70);
        sparseIntArray.append(31, 71);
        sparseIntArray.append(29, 72);
        sparseIntArray.append(30, 73);
        sparseIntArray.append(32, 74);
        sparseIntArray.append(28, 75);
        sparseIntArray.append(104, 76);
        sparseIntArray.append(83, 77);
        sparseIntArray.append(108, 78);
        sparseIntArray.append(53, 80);
        sparseIntArray.append(52, 81);
    }

    public static int[] e(Barrier barrier, String str) throws IllegalAccessException, IllegalArgumentException {
        int iIntValue;
        HashMap map;
        String[] strArrSplit = str.split(",");
        Context context = barrier.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i6 = 0;
        int i10 = 0;
        while (i6 < strArrSplit.length) {
            String strTrim = strArrSplit[i6].trim();
            Object obj = null;
            try {
                iIntValue = i.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, TtmlNode.ATTR_ID, context.getPackageName());
            }
            if (iIntValue == 0 && barrier.isInEditMode() && (barrier.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) barrier.getParent();
                constraintLayout.getClass();
                if ((strTrim instanceof String) && (map = constraintLayout.f1029m) != null && map.containsKey(strTrim)) {
                    obj = constraintLayout.f1029m.get(strTrim);
                }
                if (obj != null && (obj instanceof Integer)) {
                    iIntValue = ((Integer) obj).intValue();
                }
            }
            iArr[i10] = iIntValue;
            i6++;
            i10++;
        }
        return i10 != strArrSplit.length ? Arrays.copyOf(iArr, i10) : iArr;
    }

    public static c f(Context context, AttributeSet attributeSet) {
        c cVar = new c();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f11209a);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            f fVar = cVar.f1092b;
            e eVar = cVar.f1093c;
            g gVar = cVar.f1094e;
            y.d dVar = cVar.d;
            if (index != 1 && 23 != index && 24 != index) {
                eVar.f11188a = true;
                dVar.f11156b = true;
                fVar.f11193a = true;
                gVar.f11198a = true;
            }
            SparseIntArray sparseIntArray = f1095e;
            switch (sparseIntArray.get(index)) {
                case 1:
                    dVar.f11176p = j(typedArrayObtainStyledAttributes, index, dVar.f11176p);
                    break;
                case 2:
                    dVar.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.G);
                    break;
                case 3:
                    dVar.f11175o = j(typedArrayObtainStyledAttributes, index, dVar.f11175o);
                    break;
                case 4:
                    dVar.f11174n = j(typedArrayObtainStyledAttributes, index, dVar.f11174n);
                    break;
                case 5:
                    dVar.f11183w = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 6:
                    dVar.A = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, dVar.A);
                    break;
                case 7:
                    dVar.B = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, dVar.B);
                    break;
                case 8:
                    dVar.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.H);
                    break;
                case 9:
                    dVar.f11180t = j(typedArrayObtainStyledAttributes, index, dVar.f11180t);
                    break;
                case 10:
                    dVar.f11179s = j(typedArrayObtainStyledAttributes, index, dVar.f11179s);
                    break;
                case 11:
                    dVar.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.M);
                    break;
                case 12:
                    dVar.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.N);
                    break;
                case 13:
                    dVar.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.J);
                    break;
                case 14:
                    dVar.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.L);
                    break;
                case 15:
                    dVar.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.O);
                    break;
                case 16:
                    dVar.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.K);
                    break;
                case 17:
                    dVar.f11161e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, dVar.f11161e);
                    break;
                case 18:
                    dVar.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, dVar.f);
                    break;
                case 19:
                    dVar.f11164g = typedArrayObtainStyledAttributes.getFloat(index, dVar.f11164g);
                    break;
                case 20:
                    dVar.f11181u = typedArrayObtainStyledAttributes.getFloat(index, dVar.f11181u);
                    break;
                case 21:
                    dVar.d = typedArrayObtainStyledAttributes.getLayoutDimension(index, dVar.d);
                    break;
                case 22:
                    int i10 = typedArrayObtainStyledAttributes.getInt(index, fVar.f11194b);
                    fVar.f11194b = i10;
                    fVar.f11194b = d[i10];
                    break;
                case 23:
                    dVar.f11158c = typedArrayObtainStyledAttributes.getLayoutDimension(index, dVar.f11158c);
                    break;
                case 24:
                    dVar.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.D);
                    break;
                case 25:
                    dVar.f11166h = j(typedArrayObtainStyledAttributes, index, dVar.f11166h);
                    break;
                case 26:
                    dVar.f11168i = j(typedArrayObtainStyledAttributes, index, dVar.f11168i);
                    break;
                case 27:
                    dVar.C = typedArrayObtainStyledAttributes.getInt(index, dVar.C);
                    break;
                case 28:
                    dVar.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.E);
                    break;
                case 29:
                    dVar.f11169j = j(typedArrayObtainStyledAttributes, index, dVar.f11169j);
                    break;
                case 30:
                    dVar.f11171k = j(typedArrayObtainStyledAttributes, index, dVar.f11171k);
                    break;
                case 31:
                    dVar.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.I);
                    break;
                case 32:
                    dVar.f11177q = j(typedArrayObtainStyledAttributes, index, dVar.f11177q);
                    break;
                case 33:
                    dVar.f11178r = j(typedArrayObtainStyledAttributes, index, dVar.f11178r);
                    break;
                case 34:
                    dVar.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.F);
                    break;
                case 35:
                    dVar.f11173m = j(typedArrayObtainStyledAttributes, index, dVar.f11173m);
                    break;
                case TsExtractor.TS_STREAM_TYPE_H265 /* 36 */:
                    dVar.f11172l = j(typedArrayObtainStyledAttributes, index, dVar.f11172l);
                    break;
                case 37:
                    dVar.f11182v = typedArrayObtainStyledAttributes.getFloat(index, dVar.f11182v);
                    break;
                case FlacConstants.STREAM_INFO_BLOCK_SIZE /* 38 */:
                    cVar.f1091a = typedArrayObtainStyledAttributes.getResourceId(index, cVar.f1091a);
                    break;
                case NalUnitUtil.H265_NAL_UNIT_TYPE_PREFIX_SEI /* 39 */:
                    dVar.Q = typedArrayObtainStyledAttributes.getFloat(index, dVar.Q);
                    break;
                case NalUnitUtil.H265_NAL_UNIT_TYPE_SUFFIX_SEI /* 40 */:
                    dVar.P = typedArrayObtainStyledAttributes.getFloat(index, dVar.P);
                    break;
                case BuildConfig.VERSION_CODE /* 41 */:
                    dVar.R = typedArrayObtainStyledAttributes.getInt(index, dVar.R);
                    break;
                case AacUtil.AUDIO_OBJECT_TYPE_AAC_XHE /* 42 */:
                    dVar.S = typedArrayObtainStyledAttributes.getInt(index, dVar.S);
                    break;
                case 43:
                    fVar.d = typedArrayObtainStyledAttributes.getFloat(index, fVar.d);
                    break;
                case 44:
                    gVar.f11207l = true;
                    gVar.f11208m = typedArrayObtainStyledAttributes.getDimension(index, gVar.f11208m);
                    break;
                case TsExtractor.TS_STREAM_TYPE_MHAS /* 45 */:
                    gVar.f11200c = typedArrayObtainStyledAttributes.getFloat(index, gVar.f11200c);
                    break;
                case 46:
                    gVar.d = typedArrayObtainStyledAttributes.getFloat(index, gVar.d);
                    break;
                case 47:
                    gVar.f11201e = typedArrayObtainStyledAttributes.getFloat(index, gVar.f11201e);
                    break;
                case NalUnitUtil.H265_NAL_UNIT_TYPE_UNSPECIFIED /* 48 */:
                    gVar.f = typedArrayObtainStyledAttributes.getFloat(index, gVar.f);
                    break;
                case Opcodes.V1_5 /* 49 */:
                    gVar.f11202g = typedArrayObtainStyledAttributes.getDimension(index, gVar.f11202g);
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    gVar.f11203h = typedArrayObtainStyledAttributes.getDimension(index, gVar.f11203h);
                    break;
                case 51:
                    gVar.f11204i = typedArrayObtainStyledAttributes.getDimension(index, gVar.f11204i);
                    break;
                case 52:
                    gVar.f11205j = typedArrayObtainStyledAttributes.getDimension(index, gVar.f11205j);
                    break;
                case 53:
                    gVar.f11206k = typedArrayObtainStyledAttributes.getDimension(index, gVar.f11206k);
                    break;
                case Opcodes.ISTORE /* 54 */:
                    dVar.T = typedArrayObtainStyledAttributes.getInt(index, dVar.T);
                    break;
                case Opcodes.LSTORE /* 55 */:
                    dVar.U = typedArrayObtainStyledAttributes.getInt(index, dVar.U);
                    break;
                case Opcodes.FSTORE /* 56 */:
                    dVar.V = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.V);
                    break;
                case Opcodes.DSTORE /* 57 */:
                    dVar.W = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.W);
                    break;
                case Opcodes.ASTORE /* 58 */:
                    dVar.X = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.X);
                    break;
                case 59:
                    dVar.Y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.Y);
                    break;
                case 60:
                    gVar.f11199b = typedArrayObtainStyledAttributes.getFloat(index, gVar.f11199b);
                    break;
                case 61:
                    dVar.f11184x = j(typedArrayObtainStyledAttributes, index, dVar.f11184x);
                    break;
                case 62:
                    dVar.f11185y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.f11185y);
                    break;
                case 63:
                    dVar.f11186z = typedArrayObtainStyledAttributes.getFloat(index, dVar.f11186z);
                    break;
                case 64:
                    eVar.f11189b = j(typedArrayObtainStyledAttributes, index, eVar.f11189b);
                    break;
                case 65:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        eVar.f11190c = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    } else {
                        eVar.f11190c = s.e.f9683c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    eVar.f11191e = typedArrayObtainStyledAttributes.getInt(index, 0);
                    break;
                case MdtaMetadataEntry.TYPE_INDICATOR_INT32 /* 67 */:
                    eVar.f11192g = typedArrayObtainStyledAttributes.getFloat(index, eVar.f11192g);
                    break;
                case 68:
                    fVar.f11196e = typedArrayObtainStyledAttributes.getFloat(index, fVar.f11196e);
                    break;
                case 69:
                    dVar.Z = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 70:
                    dVar.f11155a0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case TsExtractor.TS_SYNC_BYTE /* 71 */:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    dVar.f11157b0 = typedArrayObtainStyledAttributes.getInt(index, dVar.f11157b0);
                    break;
                case 73:
                    dVar.f11159c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dVar.f11159c0);
                    break;
                case 74:
                    dVar.f11163f0 = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT /* 75 */:
                    dVar.f11170j0 = typedArrayObtainStyledAttributes.getBoolean(index, dVar.f11170j0);
                    break;
                case 76:
                    eVar.d = typedArrayObtainStyledAttributes.getInt(index, eVar.d);
                    break;
                case 77:
                    dVar.f11165g0 = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case MdtaMetadataEntry.TYPE_INDICATOR_UNSIGNED_INT64 /* 78 */:
                    fVar.f11195c = typedArrayObtainStyledAttributes.getInt(index, fVar.f11195c);
                    break;
                case Opcodes.IASTORE /* 79 */:
                    eVar.f = typedArrayObtainStyledAttributes.getFloat(index, eVar.f);
                    break;
                case 80:
                    dVar.f11167h0 = typedArrayObtainStyledAttributes.getBoolean(index, dVar.f11167h0);
                    break;
                case 81:
                    dVar.i0 = typedArrayObtainStyledAttributes.getBoolean(index, dVar.i0);
                    break;
                case 82:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                    break;
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return cVar;
    }

    public static int j(TypedArray typedArray, int i6, int i10) {
        int resourceId = typedArray.getResourceId(i6, i10);
        return resourceId == -1 ? typedArray.getInt(i6, -1) : resourceId;
    }

    public final void a(MotionLayout motionLayout) {
        int childCount = motionLayout.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = motionLayout.getChildAt(i6);
            int id = childAt.getId();
            HashMap map = this.f1098c;
            if (!map.containsKey(Integer.valueOf(id))) {
                Log.v("ConstraintSet", "id unknown " + a2.a.y(childAt));
            } else {
                if (this.f1097b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (map.containsKey(Integer.valueOf(id))) {
                    y.a.f(childAt, ((c) map.get(Integer.valueOf(id))).f);
                }
            }
        }
    }

    public final void b(ConstraintLayout constraintLayout) {
        c(constraintLayout);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public final void c(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashMap map = this.f1098c;
        HashSet hashSet = new HashSet(map.keySet());
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = constraintLayout.getChildAt(i6);
            int id = childAt.getId();
            if (!map.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + a2.a.y(childAt));
            } else {
                if (this.f1097b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (map.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        c cVar = (c) map.get(Integer.valueOf(id));
                        if (childAt instanceof Barrier) {
                            cVar.d.f11160d0 = 1;
                        }
                        int i10 = cVar.d.f11160d0;
                        if (i10 != -1 && i10 == 1) {
                            Barrier barrier = (Barrier) childAt;
                            barrier.setId(id);
                            y.d dVar = cVar.d;
                            barrier.setType(dVar.f11157b0);
                            barrier.setMargin(dVar.f11159c0);
                            barrier.setAllowsGoneWidget(dVar.f11170j0);
                            int[] iArr = dVar.f11162e0;
                            if (iArr != null) {
                                barrier.setReferencedIds(iArr);
                            } else {
                                String str = dVar.f11163f0;
                                if (str != null) {
                                    int[] iArrE = e(barrier, str);
                                    dVar.f11162e0 = iArrE;
                                    barrier.setReferencedIds(iArrE);
                                }
                            }
                        }
                        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                        layoutParams.a();
                        cVar.a(layoutParams);
                        y.a.f(childAt, cVar.f);
                        childAt.setLayoutParams(layoutParams);
                        f fVar = cVar.f1092b;
                        if (fVar.f11195c == 0) {
                            childAt.setVisibility(fVar.f11194b);
                        }
                        childAt.setAlpha(fVar.d);
                        g gVar = cVar.f1094e;
                        childAt.setRotation(gVar.f11199b);
                        childAt.setRotationX(gVar.f11200c);
                        childAt.setRotationY(gVar.d);
                        childAt.setScaleX(gVar.f11201e);
                        childAt.setScaleY(gVar.f);
                        if (!Float.isNaN(gVar.f11202g)) {
                            childAt.setPivotX(gVar.f11202g);
                        }
                        if (!Float.isNaN(gVar.f11203h)) {
                            childAt.setPivotY(gVar.f11203h);
                        }
                        childAt.setTranslationX(gVar.f11204i);
                        childAt.setTranslationY(gVar.f11205j);
                        childAt.setTranslationZ(gVar.f11206k);
                        if (gVar.f11207l) {
                            childAt.setElevation(gVar.f11208m);
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            c cVar2 = (c) map.get(num);
            y.d dVar2 = cVar2.d;
            int i11 = dVar2.f11160d0;
            if (i11 != -1 && i11 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                int[] iArr2 = dVar2.f11162e0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = dVar2.f11163f0;
                    if (str2 != null) {
                        int[] iArrE2 = e(barrier2, str2);
                        dVar2.f11162e0 = iArrE2;
                        barrier2.setReferencedIds(iArrE2);
                    }
                }
                barrier2.setType(dVar2.f11157b0);
                barrier2.setMargin(dVar2.f11159c0);
                int i12 = ConstraintLayout.f1018p;
                ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams();
                barrier2.l();
                cVar2.a(layoutParams2);
                constraintLayout.addView(barrier2, layoutParams2);
            }
            if (dVar2.f11154a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                int i13 = ConstraintLayout.f1018p;
                ConstraintLayout.LayoutParams layoutParams3 = new ConstraintLayout.LayoutParams();
                cVar2.a(layoutParams3);
                constraintLayout.addView(guideline, layoutParams3);
            }
        }
    }

    public final void d(ConstraintLayout constraintLayout) {
        d dVar = this;
        int childCount = constraintLayout.getChildCount();
        HashMap map = dVar.f1098c;
        map.clear();
        int i6 = 0;
        while (i6 < childCount) {
            View childAt = constraintLayout.getChildAt(i6);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (dVar.f1097b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!map.containsKey(Integer.valueOf(id))) {
                map.put(Integer.valueOf(id), new c());
            }
            c cVar = (c) map.get(Integer.valueOf(id));
            HashMap map2 = dVar.f1096a;
            HashMap map3 = new HashMap();
            Class<?> cls = childAt.getClass();
            for (String str : map2.keySet()) {
                y.a aVar = (y.a) map2.get(str);
                try {
                    if (str.equals("BackgroundColor")) {
                        map3.put(str, new y.a(aVar, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                    } else {
                        map3.put(str, new y.a(aVar, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                    }
                } catch (IllegalAccessException e5) {
                    e5.printStackTrace();
                } catch (NoSuchMethodException e10) {
                    e10.printStackTrace();
                } catch (InvocationTargetException e11) {
                    e11.printStackTrace();
                }
            }
            cVar.f = map3;
            cVar.b(id, layoutParams);
            int visibility = childAt.getVisibility();
            f fVar = cVar.f1092b;
            fVar.f11194b = visibility;
            fVar.d = childAt.getAlpha();
            float rotation = childAt.getRotation();
            g gVar = cVar.f1094e;
            gVar.f11199b = rotation;
            gVar.f11200c = childAt.getRotationX();
            gVar.d = childAt.getRotationY();
            gVar.f11201e = childAt.getScaleX();
            gVar.f = childAt.getScaleY();
            float pivotX = childAt.getPivotX();
            float pivotY = childAt.getPivotY();
            if (pivotX != 0.0d || pivotY != 0.0d) {
                gVar.f11202g = pivotX;
                gVar.f11203h = pivotY;
            }
            gVar.f11204i = childAt.getTranslationX();
            gVar.f11205j = childAt.getTranslationY();
            gVar.f11206k = childAt.getTranslationZ();
            if (gVar.f11207l) {
                gVar.f11208m = childAt.getElevation();
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = (Barrier) childAt;
                boolean z7 = barrier.f1012j.f10507j0;
                y.d dVar2 = cVar.d;
                dVar2.f11170j0 = z7;
                dVar2.f11162e0 = barrier.getReferencedIds();
                dVar2.f11157b0 = barrier.getType();
                dVar2.f11159c0 = barrier.getMargin();
            }
            i6++;
            dVar = this;
        }
    }

    public final c g(int i6) {
        HashMap map = this.f1098c;
        if (!map.containsKey(Integer.valueOf(i6))) {
            map.put(Integer.valueOf(i6), new c());
        }
        return (c) map.get(Integer.valueOf(i6));
    }

    public final void h(Context context, int i6) {
        XmlResourceParser xml = context.getResources().getXml(i6);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    c cVarF = f(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        cVarF.d.f11154a = true;
                    }
                    this.f1098c.put(Integer.valueOf(cVarF.f1091a), cVarF);
                }
            }
        } catch (IOException e5) {
            e5.printStackTrace();
        } catch (XmlPullParserException e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x017d, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void i(android.content.Context r9, android.content.res.XmlResourceParser r10) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 450
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.d.i(android.content.Context, android.content.res.XmlResourceParser):void");
    }
}
