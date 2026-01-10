.class final Landroidx/media3/exoplayer/video/spherical/Projection;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;,
        Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;,
        Landroidx/media3/exoplayer/video/spherical/Projection$DrawMode;
    }
.end annotation


# static fields
.field public static final DRAW_MODE_TRIANGLES:I = 0x0

.field public static final DRAW_MODE_TRIANGLES_FAN:I = 0x2

.field public static final DRAW_MODE_TRIANGLES_STRIP:I = 0x1

.field public static final POSITION_COORDS_PER_VERTEX:I = 0x3

.field public static final TEXTURE_COORDS_PER_VERTEX:I = 0x2


# instance fields
.field public final leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

.field public final rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

.field public final singleMesh:Z

.field public final stereoMode:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1, p2}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    .line 5
    iput p3, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->stereoMode:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->singleMesh:Z

    return-void
.end method

.method public static createEquirectangular(FIIFFI)Landroidx/media3/exoplayer/video/spherical/Projection;
    .locals 30

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpl-float v10, v0, v9

    if-lez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 2
    :goto_0
    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-lt v1, v8, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 3
    :goto_1
    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-lt v2, v8, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 4
    :goto_2
    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    cmpl-float v10, v3, v9

    if-lez v10, :cond_3

    const/high16 v10, 0x43340000    # 180.0f

    cmpg-float v10, v3, v10

    if-gtz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    .line 5
    :goto_3
    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    cmpl-float v9, v4, v9

    if-lez v9, :cond_4

    const/high16 v9, 0x43b40000    # 360.0f

    cmpg-float v9, v4, v9

    if-gtz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    .line 6
    :goto_4
    invoke-static {v9}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    float-to-double v9, v3

    .line 7
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float v3, v9

    float-to-double v9, v4

    .line 8
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float v4, v9

    int-to-float v9, v1

    div-float v9, v3, v9

    int-to-float v10, v2

    div-float v10, v4, v10

    add-int/lit8 v11, v2, 0x1

    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v6

    mul-int v12, v12, v1

    mul-int/lit8 v13, v12, 0x3

    .line 9
    new-array v13, v13, [F

    mul-int/lit8 v12, v12, 0x2

    .line 10
    new-array v12, v12, [F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_5
    if-ge v14, v1, :cond_b

    int-to-float v7, v14

    mul-float v7, v7, v9

    const/high16 v17, 0x40000000    # 2.0f

    div-float v18, v3, v17

    sub-float v7, v7, v18

    add-int/lit8 v5, v14, 0x1

    int-to-float v8, v5

    mul-float v8, v8, v9

    sub-float v8, v8, v18

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v11, :cond_a

    move/from16 p3, v5

    move/from16 p4, v7

    move/from16 v1, v16

    const/4 v5, 0x0

    :goto_7
    const/4 v7, 0x2

    if-ge v5, v7, :cond_9

    if-nez v5, :cond_5

    move/from16 v7, p4

    move/from16 v19, v8

    goto :goto_8

    :cond_5
    move v7, v8

    move/from16 v19, v7

    :goto_8
    int-to-float v8, v6

    mul-float v8, v8, v10

    const v16, 0x40490fdb    # (float)Math.PI

    add-float v16, v8, v16

    div-float v20, v4, v17

    move/from16 v21, v10

    sub-float v10, v16, v20

    const/16 v16, 0x1

    add-int/lit8 v20, v15, 0x1

    move/from16 v22, v3

    float-to-double v2, v0

    move/from16 v23, v11

    float-to-double v10, v10

    .line 11
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v24, v24, v2

    move/from16 v26, v6

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    move/from16 v29, v4

    move/from16 v16, v5

    mul-double v4, v27, v24

    double-to-float v4, v4

    neg-float v4, v4

    aput v4, v13, v15

    const/4 v4, 0x2

    add-int/lit8 v5, v15, 0x2

    .line 12
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move/from16 v27, v8

    move v4, v9

    mul-double v8, v24, v2

    double-to-float v8, v8

    aput v8, v13, v20

    const/4 v8, 0x3

    add-int/lit8 v9, v15, 0x3

    .line 13
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v10

    double-to-float v2, v2

    aput v2, v13, v5

    const/4 v2, 0x1

    add-int/lit8 v8, v1, 0x1

    div-float v2, v27, v29

    .line 14
    aput v2, v12, v1

    const/4 v2, 0x2

    add-int/lit8 v6, v1, 0x2

    add-int v5, v14, v16

    int-to-float v2, v5

    mul-float v2, v2, v4

    div-float v2, v2, v22

    .line 15
    aput v2, v12, v8

    if-nez v26, :cond_6

    if-eqz v16, :cond_7

    :cond_6
    move/from16 v2, p2

    move/from16 v3, v26

    goto :goto_a

    :cond_7
    move/from16 v2, p2

    move/from16 v7, v16

    move/from16 v3, v26

    :goto_9
    const/4 v5, 0x3

    goto :goto_b

    :goto_a
    move/from16 v7, v16

    if-ne v3, v2, :cond_8

    const/4 v5, 0x1

    if-ne v7, v5, :cond_8

    goto :goto_9

    .line 16
    :goto_b
    invoke-static {v13, v15, v13, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v15, v15, 0x6

    const/4 v8, 0x2

    .line 17
    invoke-static {v12, v1, v12, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x4

    :goto_c
    const/4 v6, 0x1

    goto :goto_d

    :cond_8
    const/4 v5, 0x3

    const/4 v8, 0x2

    move v1, v6

    move v15, v9

    goto :goto_c

    :goto_d
    add-int/2addr v7, v6

    move v6, v3

    move v9, v4

    move v5, v7

    move/from16 v8, v19

    move/from16 v10, v21

    move/from16 v3, v22

    move/from16 v11, v23

    move/from16 v4, v29

    goto/16 :goto_7

    :cond_9
    move/from16 v22, v3

    move/from16 v29, v4

    move v3, v6

    move/from16 v19, v8

    move v4, v9

    move/from16 v21, v10

    move/from16 v23, v11

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x2

    add-int/2addr v3, v6

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v16, v1

    move v6, v3

    move/from16 v8, v19

    move/from16 v3, v22

    move/from16 v4, v29

    move/from16 v1, p1

    goto/16 :goto_6

    :cond_a
    move/from16 p3, v5

    move/from16 v1, p1

    move/from16 v14, p3

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    goto/16 :goto_5

    :cond_b
    const/4 v6, 0x1

    .line 18
    new-instance v0, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v13, v12, v6}, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    .line 19
    new-instance v2, Landroidx/media3/exoplayer/video/spherical/Projection;

    new-instance v3, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    new-array v4, v6, [Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    aput-object v0, v4, v1

    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;-><init>([Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;)V

    move/from16 v0, p5

    invoke-direct {v2, v3, v0}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-object v2
.end method

.method public static createEquirectangular(I)Landroidx/media3/exoplayer/video/spherical/Projection;
    .locals 6

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v0, 0x42480000    # 50.0f

    const/16 v1, 0x24

    const/16 v2, 0x48

    move v5, p0

    .line 1
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/video/spherical/Projection;->createEquirectangular(FIIFFI)Landroidx/media3/exoplayer/video/spherical/Projection;

    move-result-object p0

    return-object p0
.end method
