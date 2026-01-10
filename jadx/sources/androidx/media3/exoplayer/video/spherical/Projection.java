package androidx.media3.exoplayer.video.spherical;

import androidx.media3.common.util.Assertions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class Projection {
    public static final int DRAW_MODE_TRIANGLES = 0;
    public static final int DRAW_MODE_TRIANGLES_FAN = 2;
    public static final int DRAW_MODE_TRIANGLES_STRIP = 1;
    public static final int POSITION_COORDS_PER_VERTEX = 3;
    public static final int TEXTURE_COORDS_PER_VERTEX = 2;
    public final Mesh leftMesh;
    public final Mesh rightMesh;
    public final boolean singleMesh;
    public final int stereoMode;

    /* compiled from: MyApplication */
    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface DrawMode {
    }

    /* compiled from: MyApplication */
    public static final class Mesh {
        private final SubMesh[] subMeshes;

        public Mesh(SubMesh... subMeshArr) {
            this.subMeshes = subMeshArr;
        }

        public SubMesh getSubMesh(int i6) {
            return this.subMeshes[i6];
        }

        public int getSubMeshCount() {
            return this.subMeshes.length;
        }
    }

    /* compiled from: MyApplication */
    public static final class SubMesh {
        public static final int VIDEO_TEXTURE_ID = 0;
        public final int mode;
        public final float[] textureCoords;
        public final int textureId;
        public final float[] vertices;

        public SubMesh(int i6, float[] fArr, float[] fArr2, int i10) {
            this.textureId = i6;
            Assertions.checkArgument(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.vertices = fArr;
            this.textureCoords = fArr2;
            this.mode = i10;
        }

        public int getVertexCount() {
            return this.vertices.length / 3;
        }
    }

    public Projection(Mesh mesh, int i6) {
        this(mesh, mesh, i6);
    }

    public static Projection createEquirectangular(int i6) {
        return createEquirectangular(50.0f, 36, 72, 180.0f, 360.0f, i6);
    }

    public Projection(Mesh mesh, Mesh mesh2, int i6) {
        this.leftMesh = mesh;
        this.rightMesh = mesh2;
        this.stereoMode = i6;
        this.singleMesh = mesh == mesh2;
    }

    public static Projection createEquirectangular(float f, int i6, int i10, float f3, float f4, int i11) {
        float f5;
        float f10;
        int i12;
        int i13;
        int i14 = i6;
        Assertions.checkArgument(f > 0.0f);
        Assertions.checkArgument(i14 >= 1);
        Assertions.checkArgument(i10 >= 1);
        Assertions.checkArgument(f3 > 0.0f && f3 <= 180.0f);
        Assertions.checkArgument(f4 > 0.0f && f4 <= 360.0f);
        float radians = (float) Math.toRadians(f3);
        float radians2 = (float) Math.toRadians(f4);
        float f11 = radians / i14;
        float f12 = radians2 / i10;
        int i15 = i10 + 1;
        int i16 = ((i15 * 2) + 2) * i14;
        float[] fArr = new float[i16 * 3];
        float[] fArr2 = new float[i16 * 2];
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        while (i17 < i14) {
            float f13 = radians / 2.0f;
            float f14 = (i17 * f11) - f13;
            int i20 = i17 + 1;
            float f15 = (i20 * f11) - f13;
            int i21 = 0;
            while (i21 < i15) {
                int i22 = i20;
                float f16 = f14;
                int i23 = i19;
                int i24 = 0;
                while (i24 < 2) {
                    if (i24 == 0) {
                        f5 = f16;
                        f10 = f15;
                    } else {
                        f5 = f15;
                        f10 = f5;
                    }
                    float f17 = i21 * f12;
                    float f18 = f12;
                    float f19 = radians;
                    double d = f;
                    int i25 = i15;
                    double d10 = (f17 + 3.1415927f) - (radians2 / 2.0f);
                    int i26 = i21;
                    double d11 = f5;
                    float f20 = radians2;
                    int i27 = i24;
                    fArr[i18] = -((float) (Math.cos(d11) * Math.sin(d10) * d));
                    float f21 = f11;
                    fArr[i18 + 1] = (float) (Math.sin(d11) * d);
                    int i28 = i18 + 3;
                    fArr[i18 + 2] = (float) (Math.cos(d11) * Math.cos(d10) * d);
                    fArr2[i23] = f17 / f20;
                    int i29 = i23 + 2;
                    fArr2[i23 + 1] = ((i17 + i27) * f21) / f19;
                    if (i26 == 0 && i27 == 0) {
                        i13 = i27;
                        i12 = i26;
                    } else {
                        i12 = i26;
                        i13 = i27;
                        if (i12 != i10 || i13 != 1) {
                            i23 = i29;
                            i18 = i28;
                        }
                        i21 = i12;
                        f11 = f21;
                        i24 = i13 + 1;
                        f15 = f10;
                        f12 = f18;
                        radians = f19;
                        i15 = i25;
                        radians2 = f20;
                    }
                    System.arraycopy(fArr, i18, fArr, i28, 3);
                    i18 += 6;
                    System.arraycopy(fArr2, i23, fArr2, i29, 2);
                    i23 += 4;
                    i21 = i12;
                    f11 = f21;
                    i24 = i13 + 1;
                    f15 = f10;
                    f12 = f18;
                    radians = f19;
                    i15 = i25;
                    radians2 = f20;
                }
                i20 = i22;
                f14 = f16;
                i19 = i23;
                i21++;
                f15 = f15;
                radians = radians;
                radians2 = radians2;
            }
            i14 = i6;
            i17 = i20;
        }
        return new Projection(new Mesh(new SubMesh(0, fArr, fArr2, 1)), i11);
    }
}
