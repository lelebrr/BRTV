package y;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.flac.FlacConstants;
import androidx.media3.extractor.ts.TsExtractor;
import com.alibaba.fastjson.asm.Opcodes;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: k0, reason: collision with root package name */
    public static final SparseIntArray f11153k0;
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public float P;
    public float Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int X;
    public int Y;
    public float Z;

    /* renamed from: a, reason: collision with root package name */
    public boolean f11154a;

    /* renamed from: a0, reason: collision with root package name */
    public float f11155a0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11156b;

    /* renamed from: b0, reason: collision with root package name */
    public int f11157b0;

    /* renamed from: c, reason: collision with root package name */
    public int f11158c;

    /* renamed from: c0, reason: collision with root package name */
    public int f11159c0;
    public int d;

    /* renamed from: d0, reason: collision with root package name */
    public int f11160d0;

    /* renamed from: e, reason: collision with root package name */
    public int f11161e;

    /* renamed from: e0, reason: collision with root package name */
    public int[] f11162e0;
    public int f;

    /* renamed from: f0, reason: collision with root package name */
    public String f11163f0;

    /* renamed from: g, reason: collision with root package name */
    public float f11164g;

    /* renamed from: g0, reason: collision with root package name */
    public String f11165g0;

    /* renamed from: h, reason: collision with root package name */
    public int f11166h;

    /* renamed from: h0, reason: collision with root package name */
    public boolean f11167h0;

    /* renamed from: i, reason: collision with root package name */
    public int f11168i;
    public boolean i0;

    /* renamed from: j, reason: collision with root package name */
    public int f11169j;

    /* renamed from: j0, reason: collision with root package name */
    public boolean f11170j0;

    /* renamed from: k, reason: collision with root package name */
    public int f11171k;

    /* renamed from: l, reason: collision with root package name */
    public int f11172l;

    /* renamed from: m, reason: collision with root package name */
    public int f11173m;

    /* renamed from: n, reason: collision with root package name */
    public int f11174n;

    /* renamed from: o, reason: collision with root package name */
    public int f11175o;

    /* renamed from: p, reason: collision with root package name */
    public int f11176p;

    /* renamed from: q, reason: collision with root package name */
    public int f11177q;

    /* renamed from: r, reason: collision with root package name */
    public int f11178r;

    /* renamed from: s, reason: collision with root package name */
    public int f11179s;

    /* renamed from: t, reason: collision with root package name */
    public int f11180t;

    /* renamed from: u, reason: collision with root package name */
    public float f11181u;

    /* renamed from: v, reason: collision with root package name */
    public float f11182v;

    /* renamed from: w, reason: collision with root package name */
    public String f11183w;

    /* renamed from: x, reason: collision with root package name */
    public int f11184x;

    /* renamed from: y, reason: collision with root package name */
    public int f11185y;

    /* renamed from: z, reason: collision with root package name */
    public float f11186z;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f11153k0 = sparseIntArray;
        sparseIntArray.append(38, 24);
        sparseIntArray.append(39, 25);
        sparseIntArray.append(41, 28);
        sparseIntArray.append(42, 29);
        sparseIntArray.append(47, 35);
        sparseIntArray.append(46, 34);
        sparseIntArray.append(20, 4);
        sparseIntArray.append(19, 3);
        sparseIntArray.append(17, 1);
        sparseIntArray.append(55, 6);
        sparseIntArray.append(56, 7);
        sparseIntArray.append(27, 17);
        sparseIntArray.append(28, 18);
        sparseIntArray.append(29, 19);
        sparseIntArray.append(0, 26);
        sparseIntArray.append(43, 31);
        sparseIntArray.append(44, 32);
        sparseIntArray.append(26, 10);
        sparseIntArray.append(25, 9);
        sparseIntArray.append(59, 13);
        sparseIntArray.append(62, 16);
        sparseIntArray.append(60, 14);
        sparseIntArray.append(57, 11);
        sparseIntArray.append(61, 15);
        sparseIntArray.append(58, 12);
        sparseIntArray.append(50, 38);
        sparseIntArray.append(36, 37);
        sparseIntArray.append(35, 39);
        sparseIntArray.append(49, 40);
        sparseIntArray.append(34, 20);
        sparseIntArray.append(48, 36);
        sparseIntArray.append(24, 5);
        sparseIntArray.append(37, 76);
        sparseIntArray.append(45, 76);
        sparseIntArray.append(40, 76);
        sparseIntArray.append(18, 76);
        sparseIntArray.append(16, 76);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(5, 27);
        sparseIntArray.append(7, 30);
        sparseIntArray.append(8, 8);
        sparseIntArray.append(4, 33);
        sparseIntArray.append(6, 2);
        sparseIntArray.append(1, 22);
        sparseIntArray.append(2, 21);
        sparseIntArray.append(21, 61);
        sparseIntArray.append(23, 62);
        sparseIntArray.append(22, 63);
        sparseIntArray.append(54, 69);
        sparseIntArray.append(33, 70);
        sparseIntArray.append(12, 71);
        sparseIntArray.append(10, 72);
        sparseIntArray.append(11, 73);
        sparseIntArray.append(13, 74);
        sparseIntArray.append(9, 75);
    }

    public final void a(d dVar) {
        this.f11154a = dVar.f11154a;
        this.f11158c = dVar.f11158c;
        this.f11156b = dVar.f11156b;
        this.d = dVar.d;
        this.f11161e = dVar.f11161e;
        this.f = dVar.f;
        this.f11164g = dVar.f11164g;
        this.f11166h = dVar.f11166h;
        this.f11168i = dVar.f11168i;
        this.f11169j = dVar.f11169j;
        this.f11171k = dVar.f11171k;
        this.f11172l = dVar.f11172l;
        this.f11173m = dVar.f11173m;
        this.f11174n = dVar.f11174n;
        this.f11175o = dVar.f11175o;
        this.f11176p = dVar.f11176p;
        this.f11177q = dVar.f11177q;
        this.f11178r = dVar.f11178r;
        this.f11179s = dVar.f11179s;
        this.f11180t = dVar.f11180t;
        this.f11181u = dVar.f11181u;
        this.f11182v = dVar.f11182v;
        this.f11183w = dVar.f11183w;
        this.f11184x = dVar.f11184x;
        this.f11185y = dVar.f11185y;
        this.f11186z = dVar.f11186z;
        this.A = dVar.A;
        this.B = dVar.B;
        this.C = dVar.C;
        this.D = dVar.D;
        this.E = dVar.E;
        this.F = dVar.F;
        this.G = dVar.G;
        this.H = dVar.H;
        this.I = dVar.I;
        this.J = dVar.J;
        this.K = dVar.K;
        this.L = dVar.L;
        this.M = dVar.M;
        this.N = dVar.N;
        this.O = dVar.O;
        this.P = dVar.P;
        this.Q = dVar.Q;
        this.R = dVar.R;
        this.S = dVar.S;
        this.T = dVar.T;
        this.U = dVar.U;
        this.V = dVar.V;
        this.W = dVar.W;
        this.X = dVar.X;
        this.Y = dVar.Y;
        this.Z = dVar.Z;
        this.f11155a0 = dVar.f11155a0;
        this.f11157b0 = dVar.f11157b0;
        this.f11159c0 = dVar.f11159c0;
        this.f11160d0 = dVar.f11160d0;
        this.f11165g0 = dVar.f11165g0;
        int[] iArr = dVar.f11162e0;
        if (iArr != null) {
            this.f11162e0 = Arrays.copyOf(iArr, iArr.length);
        } else {
            this.f11162e0 = null;
        }
        this.f11163f0 = dVar.f11163f0;
        this.f11167h0 = dVar.f11167h0;
        this.i0 = dVar.i0;
        this.f11170j0 = dVar.f11170j0;
    }

    public final void b(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f11213g);
        this.f11156b = true;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            SparseIntArray sparseIntArray = f11153k0;
            int i10 = sparseIntArray.get(index);
            if (i10 == 80) {
                this.f11167h0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f11167h0);
            } else if (i10 != 81) {
                switch (i10) {
                    case 1:
                        this.f11176p = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11176p);
                        break;
                    case 2:
                        this.G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.G);
                        break;
                    case 3:
                        this.f11175o = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11175o);
                        break;
                    case 4:
                        this.f11174n = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11174n);
                        break;
                    case 5:
                        this.f11183w = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.A = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.A);
                        break;
                    case 7:
                        this.B = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.B);
                        break;
                    case 8:
                        this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.H);
                        break;
                    case 9:
                        this.f11180t = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11180t);
                        break;
                    case 10:
                        this.f11179s = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11179s);
                        break;
                    case 11:
                        this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        break;
                    case 12:
                        this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                        break;
                    case 13:
                        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                        break;
                    case 14:
                        this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        break;
                    case 15:
                        this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        break;
                    case 16:
                        this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        break;
                    case 17:
                        this.f11161e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f11161e);
                        break;
                    case 18:
                        this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                        break;
                    case 19:
                        this.f11164g = typedArrayObtainStyledAttributes.getFloat(index, this.f11164g);
                        break;
                    case 20:
                        this.f11181u = typedArrayObtainStyledAttributes.getFloat(index, this.f11181u);
                        break;
                    case 21:
                        this.d = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.d);
                        break;
                    case 22:
                        this.f11158c = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f11158c);
                        break;
                    case 23:
                        this.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.D);
                        break;
                    case 24:
                        this.f11166h = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11166h);
                        break;
                    case 25:
                        this.f11168i = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11168i);
                        break;
                    case 26:
                        this.C = typedArrayObtainStyledAttributes.getInt(index, this.C);
                        break;
                    case 27:
                        this.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.E);
                        break;
                    case 28:
                        this.f11169j = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11169j);
                        break;
                    case 29:
                        this.f11171k = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11171k);
                        break;
                    case 30:
                        this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.I);
                        break;
                    case 31:
                        this.f11177q = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11177q);
                        break;
                    case 32:
                        this.f11178r = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11178r);
                        break;
                    case 33:
                        this.F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.F);
                        break;
                    case 34:
                        this.f11173m = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11173m);
                        break;
                    case 35:
                        this.f11172l = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11172l);
                        break;
                    case TsExtractor.TS_STREAM_TYPE_H265 /* 36 */:
                        this.f11182v = typedArrayObtainStyledAttributes.getFloat(index, this.f11182v);
                        break;
                    case 37:
                        this.Q = typedArrayObtainStyledAttributes.getFloat(index, this.Q);
                        break;
                    case FlacConstants.STREAM_INFO_BLOCK_SIZE /* 38 */:
                        this.P = typedArrayObtainStyledAttributes.getFloat(index, this.P);
                        break;
                    case NalUnitUtil.H265_NAL_UNIT_TYPE_PREFIX_SEI /* 39 */:
                        this.R = typedArrayObtainStyledAttributes.getInt(index, this.R);
                        break;
                    case NalUnitUtil.H265_NAL_UNIT_TYPE_SUFFIX_SEI /* 40 */:
                        this.S = typedArrayObtainStyledAttributes.getInt(index, this.S);
                        break;
                    default:
                        switch (i10) {
                            case Opcodes.ISTORE /* 54 */:
                                this.T = typedArrayObtainStyledAttributes.getInt(index, this.T);
                                break;
                            case Opcodes.LSTORE /* 55 */:
                                this.U = typedArrayObtainStyledAttributes.getInt(index, this.U);
                                break;
                            case Opcodes.FSTORE /* 56 */:
                                this.V = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.V);
                                break;
                            case Opcodes.DSTORE /* 57 */:
                                this.W = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.W);
                                break;
                            case Opcodes.ASTORE /* 58 */:
                                this.X = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.X);
                                break;
                            case 59:
                                this.Y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Y);
                                break;
                            default:
                                switch (i10) {
                                    case 61:
                                        this.f11184x = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11184x);
                                        break;
                                    case 62:
                                        this.f11185y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f11185y);
                                        break;
                                    case 63:
                                        this.f11186z = typedArrayObtainStyledAttributes.getFloat(index, this.f11186z);
                                        break;
                                    default:
                                        switch (i10) {
                                            case 69:
                                                this.Z = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                break;
                                            case 70:
                                                this.f11155a0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                                break;
                                            case TsExtractor.TS_SYNC_BYTE /* 71 */:
                                                Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                break;
                                            case 72:
                                                this.f11157b0 = typedArrayObtainStyledAttributes.getInt(index, this.f11157b0);
                                                break;
                                            case 73:
                                                this.f11159c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f11159c0);
                                                break;
                                            case 74:
                                                this.f11163f0 = typedArrayObtainStyledAttributes.getString(index);
                                                break;
                                            case MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT /* 75 */:
                                                this.f11170j0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f11170j0);
                                                break;
                                            case 76:
                                                Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                                break;
                                            case 77:
                                                this.f11165g0 = typedArrayObtainStyledAttributes.getString(index);
                                                break;
                                            default:
                                                Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                                break;
                                        }
                                }
                        }
                }
            } else {
                this.i0 = typedArrayObtainStyledAttributes.getBoolean(index, this.i0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
