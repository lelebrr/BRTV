.class public Lu6/h;
.super Landroid/graphics/drawable/Drawable;
.source "MyApplication"

# interfaces
.implements Lg0/h;
.implements Lu6/x;


# static fields
.field public static final w:Landroid/graphics/Paint;


# instance fields
.field public a:Lu6/g;

.field public final b:[Lu6/v;

.field public final c:[Lu6/v;

.field public final d:Ljava/util/BitSet;

.field public e:Z

.field public final f:Landroid/graphics/Matrix;

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Path;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/Region;

.field public final l:Landroid/graphics/Region;

.field public m:Lu6/m;

.field public final n:Landroid/graphics/Paint;

.field public final o:Landroid/graphics/Paint;

.field public final p:Lt6/a;

.field public final q:Ls2/c;

.field public final r:Lu6/o;

.field public s:Landroid/graphics/PorterDuffColorFilter;

.field public t:Landroid/graphics/PorterDuffColorFilter;

.field public final u:Landroid/graphics/RectF;

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lu6/h;->w:Landroid/graphics/Paint;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lu6/m;

    invoke-direct {v0}, Lu6/m;-><init>()V

    invoke-direct {p0, v0}, Lu6/h;-><init>(Lu6/m;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Lu6/m;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lu6/l;

    move-result-object p1

    invoke-virtual {p1}, Lu6/l;->a()Lu6/m;

    move-result-object p1

    invoke-direct {p0, p1}, Lu6/h;-><init>(Lu6/m;)V

    return-void
.end method

.method public constructor <init>(Lu6/g;)V
    .locals 5

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 24
    new-array v1, v0, [Lu6/v;

    iput-object v1, p0, Lu6/h;->b:[Lu6/v;

    .line 25
    new-array v0, v0, [Lu6/v;

    iput-object v0, p0, Lu6/h;->c:[Lu6/v;

    .line 26
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lu6/h;->d:Ljava/util/BitSet;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lu6/h;->f:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lu6/h;->g:Landroid/graphics/Path;

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lu6/h;->h:Landroid/graphics/Path;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lu6/h;->i:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lu6/h;->j:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lu6/h;->k:Landroid/graphics/Region;

    .line 33
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lu6/h;->l:Landroid/graphics/Region;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lu6/h;->n:Landroid/graphics/Paint;

    .line 35
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lu6/h;->o:Landroid/graphics/Paint;

    .line 36
    new-instance v3, Lt6/a;

    invoke-direct {v3}, Lt6/a;-><init>()V

    iput-object v3, p0, Lu6/h;->p:Lt6/a;

    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 38
    sget-object v3, Lu6/n;->a:Lu6/o;

    goto :goto_0

    .line 39
    :cond_0
    new-instance v3, Lu6/o;

    invoke-direct {v3}, Lu6/o;-><init>()V

    :goto_0
    iput-object v3, p0, Lu6/h;->r:Lu6/o;

    .line 40
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lu6/h;->u:Landroid/graphics/RectF;

    .line 41
    iput-boolean v1, p0, Lu6/h;->v:Z

    .line 42
    iput-object p1, p0, Lu6/h;->a:Lu6/g;

    .line 43
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    invoke-virtual {p0}, Lu6/h;->u()Z

    .line 46
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lu6/h;->t([I)Z

    .line 47
    new-instance p1, Ls2/c;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Ls2/c;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lu6/h;->q:Ls2/c;

    return-void
.end method

.method public constructor <init>(Lu6/m;)V
    .locals 3

    .line 3
    new-instance v0, Lu6/g;

    .line 4
    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lu6/g;->c:Landroid/content/res/ColorStateList;

    .line 6
    iput-object v1, v0, Lu6/g;->d:Landroid/content/res/ColorStateList;

    .line 7
    iput-object v1, v0, Lu6/g;->e:Landroid/content/res/ColorStateList;

    .line 8
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, v0, Lu6/g;->f:Landroid/graphics/PorterDuff$Mode;

    .line 9
    iput-object v1, v0, Lu6/g;->g:Landroid/graphics/Rect;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    iput v2, v0, Lu6/g;->h:F

    .line 11
    iput v2, v0, Lu6/g;->i:F

    const/16 v2, 0xff

    .line 12
    iput v2, v0, Lu6/g;->k:I

    const/4 v2, 0x0

    .line 13
    iput v2, v0, Lu6/g;->l:F

    .line 14
    iput v2, v0, Lu6/g;->m:F

    const/4 v2, 0x0

    .line 15
    iput v2, v0, Lu6/g;->n:I

    .line 16
    iput v2, v0, Lu6/g;->o:I

    .line 17
    iput v2, v0, Lu6/g;->p:I

    .line 18
    iput v2, v0, Lu6/g;->q:I

    .line 19
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v2, v0, Lu6/g;->r:Landroid/graphics/Paint$Style;

    .line 20
    iput-object p1, v0, Lu6/g;->a:Lu6/m;

    .line 21
    iput-object v1, v0, Lu6/g;->b:Lj6/a;

    .line 22
    invoke-direct {p0, v0}, Lu6/h;-><init>(Lu6/g;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu6/h;->invalidateSelf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget-object v2, v0, Lu6/g;->a:Lu6/m;

    .line 4
    .line 5
    iget v3, v0, Lu6/g;->i:F

    .line 6
    .line 7
    iget-object v5, p0, Lu6/h;->q:Ls2/c;

    .line 8
    .line 9
    iget-object v1, p0, Lu6/h;->r:Lu6/o;

    .line 10
    .line 11
    move-object v4, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-virtual/range {v1 .. v6}, Lu6/o;->a(Lu6/m;FLandroid/graphics/RectF;Ls2/c;Landroid/graphics/Path;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 17
    .line 18
    iget v0, v0, Lu6/g;->h:F

    .line 19
    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    cmpl-float v0, v0, v1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lu6/h;->f:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lu6/h;->a:Lu6/g;

    .line 32
    .line 33
    iget v1, v1, Lu6/g;->h:F

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/high16 v3, 0x40000000    # 2.0f

    .line 40
    .line 41
    div-float/2addr v2, v3

    .line 42
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    div-float/2addr p1, v3

    .line 47
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lu6/h;->u:Landroid/graphics/RectF;

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final c(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget v1, v0, Lu6/g;->m:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    add-float/2addr v1, v2

    .line 7
    iget v2, v0, Lu6/g;->l:F

    .line 8
    .line 9
    add-float/2addr v1, v2

    .line 10
    iget-object v0, v0, Lu6/g;->b:Lj6/a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Lj6/a;->a(IF)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    :cond_0
    return p1
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lu6/h;->d:Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "h"

    .line 10
    .line 11
    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 17
    .line 18
    iget v0, v0, Lu6/g;->p:I

    .line 19
    .line 20
    iget-object v1, p0, Lu6/h;->g:Landroid/graphics/Path;

    .line 21
    .line 22
    iget-object v2, p0, Lu6/h;->p:Lt6/a;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, v2, Lt6/a;->a:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    const/4 v3, 0x4

    .line 33
    if-ge v0, v3, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Lu6/h;->b:[Lu6/v;

    .line 36
    .line 37
    aget-object v3, v3, v0

    .line 38
    .line 39
    iget-object v4, p0, Lu6/h;->a:Lu6/g;

    .line 40
    .line 41
    iget v4, v4, Lu6/g;->o:I

    .line 42
    .line 43
    sget-object v5, Lu6/v;->a:Landroid/graphics/Matrix;

    .line 44
    .line 45
    invoke-virtual {v3, v5, v2, v4, p1}, Lu6/v;->a(Landroid/graphics/Matrix;Lt6/a;ILandroid/graphics/Canvas;)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lu6/h;->c:[Lu6/v;

    .line 49
    .line 50
    aget-object v3, v3, v0

    .line 51
    .line 52
    iget-object v4, p0, Lu6/h;->a:Lu6/g;

    .line 53
    .line 54
    iget v4, v4, Lu6/g;->o:I

    .line 55
    .line 56
    invoke-virtual {v3, v5, v2, v4, p1}, Lu6/v;->a(Landroid/graphics/Matrix;Lt6/a;ILandroid/graphics/Canvas;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-boolean v0, p0, Lu6/h;->v:Z

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 67
    .line 68
    iget v2, v0, Lu6/g;->p:I

    .line 69
    .line 70
    int-to-double v2, v2

    .line 71
    iget v0, v0, Lu6/g;->q:I

    .line 72
    .line 73
    int-to-double v4, v0

    .line 74
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    mul-double v4, v4, v2

    .line 83
    .line 84
    double-to-int v0, v4

    .line 85
    invoke-virtual {p0}, Lu6/h;->h()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    neg-int v3, v0

    .line 90
    int-to-float v3, v3

    .line 91
    neg-int v4, v2

    .line 92
    int-to-float v4, v4

    .line 93
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    .line 95
    .line 96
    sget-object v3, Lu6/h;->w:Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    int-to-float v0, v0

    .line 102
    int-to-float v1, v2

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    .line 105
    .line 106
    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v8, v6, Lu6/h;->n:Landroid/graphics/Paint;

    .line 6
    .line 7
    iget-object v0, v6, Lu6/h;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 8
    .line 9
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    .line 13
    .line 14
    .line 15
    move-result v9

    .line 16
    iget-object v0, v6, Lu6/h;->a:Lu6/g;

    .line 17
    .line 18
    iget v0, v0, Lu6/g;->k:I

    .line 19
    .line 20
    ushr-int/lit8 v1, v0, 0x7

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int v0, v0, v9

    .line 24
    .line 25
    ushr-int/lit8 v0, v0, 0x8

    .line 26
    .line 27
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 28
    .line 29
    .line 30
    iget-object v10, v6, Lu6/h;->o:Landroid/graphics/Paint;

    .line 31
    .line 32
    iget-object v0, v6, Lu6/h;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 33
    .line 34
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 35
    .line 36
    .line 37
    iget-object v0, v6, Lu6/h;->a:Lu6/g;

    .line 38
    .line 39
    iget v0, v0, Lu6/g;->j:F

    .line 40
    .line 41
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    iget-object v0, v6, Lu6/h;->a:Lu6/g;

    .line 49
    .line 50
    iget v0, v0, Lu6/g;->k:I

    .line 51
    .line 52
    ushr-int/lit8 v1, v0, 0x7

    .line 53
    .line 54
    add-int/2addr v0, v1

    .line 55
    mul-int v0, v0, v11

    .line 56
    .line 57
    ushr-int/lit8 v0, v0, 0x8

    .line 58
    .line 59
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 60
    .line 61
    .line 62
    iget-boolean v0, v6, Lu6/h;->e:Z

    .line 63
    .line 64
    iget-object v3, v6, Lu6/h;->g:Landroid/graphics/Path;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Lu6/h;->j()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v1, 0x0

    .line 73
    const/high16 v2, 0x40000000    # 2.0f

    .line 74
    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    div-float/2addr v0, v2

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    neg-float v0, v0

    .line 85
    iget-object v4, v6, Lu6/h;->a:Lu6/g;

    .line 86
    .line 87
    iget-object v4, v4, Lu6/g;->a:Lu6/m;

    .line 88
    .line 89
    invoke-virtual {v4}, Lu6/m;->f()Lu6/l;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-object v12, v4, Lu6/m;->e:Lu6/c;

    .line 94
    .line 95
    instance-of v13, v12, Lu6/j;

    .line 96
    .line 97
    if-eqz v13, :cond_1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    new-instance v13, Lu6/b;

    .line 101
    .line 102
    invoke-direct {v13, v0, v12}, Lu6/b;-><init>(FLu6/c;)V

    .line 103
    .line 104
    .line 105
    move-object v12, v13

    .line 106
    :goto_1
    iput-object v12, v5, Lu6/l;->e:Lu6/c;

    .line 107
    .line 108
    iget-object v12, v4, Lu6/m;->f:Lu6/c;

    .line 109
    .line 110
    instance-of v13, v12, Lu6/j;

    .line 111
    .line 112
    if-eqz v13, :cond_2

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    new-instance v13, Lu6/b;

    .line 116
    .line 117
    invoke-direct {v13, v0, v12}, Lu6/b;-><init>(FLu6/c;)V

    .line 118
    .line 119
    .line 120
    move-object v12, v13

    .line 121
    :goto_2
    iput-object v12, v5, Lu6/l;->f:Lu6/c;

    .line 122
    .line 123
    iget-object v12, v4, Lu6/m;->h:Lu6/c;

    .line 124
    .line 125
    instance-of v13, v12, Lu6/j;

    .line 126
    .line 127
    if-eqz v13, :cond_3

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_3
    new-instance v13, Lu6/b;

    .line 131
    .line 132
    invoke-direct {v13, v0, v12}, Lu6/b;-><init>(FLu6/c;)V

    .line 133
    .line 134
    .line 135
    move-object v12, v13

    .line 136
    :goto_3
    iput-object v12, v5, Lu6/l;->h:Lu6/c;

    .line 137
    .line 138
    iget-object v4, v4, Lu6/m;->g:Lu6/c;

    .line 139
    .line 140
    instance-of v12, v4, Lu6/j;

    .line 141
    .line 142
    if-eqz v12, :cond_4

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_4
    new-instance v12, Lu6/b;

    .line 146
    .line 147
    invoke-direct {v12, v0, v4}, Lu6/b;-><init>(FLu6/c;)V

    .line 148
    .line 149
    .line 150
    move-object v4, v12

    .line 151
    :goto_4
    iput-object v4, v5, Lu6/l;->g:Lu6/c;

    .line 152
    .line 153
    invoke-virtual {v5}, Lu6/l;->a()Lu6/m;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    iput-object v13, v6, Lu6/h;->m:Lu6/m;

    .line 158
    .line 159
    iget-object v0, v6, Lu6/h;->a:Lu6/g;

    .line 160
    .line 161
    iget v14, v0, Lu6/g;->i:F

    .line 162
    .line 163
    iget-object v15, v6, Lu6/h;->j:Landroid/graphics/RectF;

    .line 164
    .line 165
    invoke-virtual/range {p0 .. p0}, Lu6/h;->g()Landroid/graphics/RectF;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v15, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Lu6/h;->j()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_5

    .line 177
    .line 178
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    div-float v1, v0, v2

    .line 183
    .line 184
    :cond_5
    invoke-virtual {v15, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 185
    .line 186
    .line 187
    iget-object v0, v6, Lu6/h;->h:Landroid/graphics/Path;

    .line 188
    .line 189
    const/16 v16, 0x0

    .line 190
    .line 191
    iget-object v12, v6, Lu6/h;->r:Lu6/o;

    .line 192
    .line 193
    move-object/from16 v17, v0

    .line 194
    .line 195
    invoke-virtual/range {v12 .. v17}, Lu6/o;->a(Lu6/m;FLandroid/graphics/RectF;Ls2/c;Landroid/graphics/Path;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p0 .. p0}, Lu6/h;->g()Landroid/graphics/RectF;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v6, v0, v3}, Lu6/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 203
    .line 204
    .line 205
    const/4 v0, 0x0

    .line 206
    iput-boolean v0, v6, Lu6/h;->e:Z

    .line 207
    .line 208
    :cond_6
    iget-object v0, v6, Lu6/h;->a:Lu6/g;

    .line 209
    .line 210
    iget v1, v0, Lu6/g;->n:I

    .line 211
    .line 212
    const/4 v2, 0x1

    .line 213
    if-eq v1, v2, :cond_a

    .line 214
    .line 215
    iget v0, v0, Lu6/g;->o:I

    .line 216
    .line 217
    if-lez v0, :cond_a

    .line 218
    .line 219
    const/4 v0, 0x2

    .line 220
    if-eq v1, v0, :cond_7

    .line 221
    .line 222
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 223
    .line 224
    invoke-virtual/range {p0 .. p0}, Lu6/h;->l()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_a

    .line 229
    .line 230
    invoke-virtual {v3}, Landroid/graphics/Path;->isConvex()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-nez v2, :cond_a

    .line 235
    .line 236
    const/16 v2, 0x1d

    .line 237
    .line 238
    if-ge v1, v2, :cond_a

    .line 239
    .line 240
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 241
    .line 242
    .line 243
    iget-object v1, v6, Lu6/h;->a:Lu6/g;

    .line 244
    .line 245
    iget v2, v1, Lu6/g;->p:I

    .line 246
    .line 247
    int-to-double v4, v2

    .line 248
    iget v1, v1, Lu6/g;->q:I

    .line 249
    .line 250
    int-to-double v1, v1

    .line 251
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 252
    .line 253
    .line 254
    move-result-wide v1

    .line 255
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 256
    .line 257
    .line 258
    move-result-wide v1

    .line 259
    mul-double v1, v1, v4

    .line 260
    .line 261
    double-to-int v1, v1

    .line 262
    invoke-virtual/range {p0 .. p0}, Lu6/h;->h()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    int-to-float v1, v1

    .line 267
    int-to-float v2, v2

    .line 268
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 269
    .line 270
    .line 271
    iget-boolean v1, v6, Lu6/h;->v:Z

    .line 272
    .line 273
    if-nez v1, :cond_8

    .line 274
    .line 275
    invoke-virtual/range {p0 .. p1}, Lu6/h;->d(Landroid/graphics/Canvas;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_5

    .line 282
    .line 283
    :cond_8
    iget-object v1, v6, Lu6/h;->u:Landroid/graphics/RectF;

    .line 284
    .line 285
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    int-to-float v4, v4

    .line 298
    sub-float/2addr v2, v4

    .line 299
    float-to-int v2, v2

    .line 300
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    int-to-float v5, v5

    .line 313
    sub-float/2addr v4, v5

    .line 314
    float-to-int v4, v4

    .line 315
    if-ltz v2, :cond_9

    .line 316
    .line 317
    if-ltz v4, :cond_9

    .line 318
    .line 319
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    float-to-int v5, v5

    .line 324
    iget-object v12, v6, Lu6/h;->a:Lu6/g;

    .line 325
    .line 326
    iget v12, v12, Lu6/g;->o:I

    .line 327
    .line 328
    mul-int/lit8 v12, v12, 0x2

    .line 329
    .line 330
    add-int/2addr v12, v5

    .line 331
    add-int/2addr v12, v2

    .line 332
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    float-to-int v1, v1

    .line 337
    iget-object v5, v6, Lu6/h;->a:Lu6/g;

    .line 338
    .line 339
    iget v5, v5, Lu6/g;->o:I

    .line 340
    .line 341
    mul-int/lit8 v5, v5, 0x2

    .line 342
    .line 343
    add-int/2addr v5, v1

    .line 344
    add-int/2addr v5, v4

    .line 345
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 346
    .line 347
    invoke-static {v12, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    new-instance v1, Landroid/graphics/Canvas;

    .line 352
    .line 353
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 361
    .line 362
    iget-object v12, v6, Lu6/h;->a:Lu6/g;

    .line 363
    .line 364
    iget v12, v12, Lu6/g;->o:I

    .line 365
    .line 366
    sub-int/2addr v5, v12

    .line 367
    sub-int/2addr v5, v2

    .line 368
    int-to-float v2, v5

    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 374
    .line 375
    iget-object v12, v6, Lu6/h;->a:Lu6/g;

    .line 376
    .line 377
    iget v12, v12, Lu6/g;->o:I

    .line 378
    .line 379
    sub-int/2addr v5, v12

    .line 380
    sub-int/2addr v5, v4

    .line 381
    int-to-float v4, v5

    .line 382
    neg-float v5, v2

    .line 383
    neg-float v12, v4

    .line 384
    invoke-virtual {v1, v5, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v6, v1}, Lu6/h;->d(Landroid/graphics/Canvas;)V

    .line 388
    .line 389
    .line 390
    const/4 v1, 0x0

    .line 391
    invoke-virtual {v7, v0, v2, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 395
    .line 396
    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 398
    .line 399
    .line 400
    goto :goto_5

    .line 401
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 402
    .line 403
    const-string v1, "Invalid shadow bounds. Check that the treatments result in a valid path."

    .line 404
    .line 405
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw v0

    .line 409
    :cond_a
    :goto_5
    iget-object v0, v6, Lu6/h;->a:Lu6/g;

    .line 410
    .line 411
    iget-object v1, v0, Lu6/g;->r:Landroid/graphics/Paint$Style;

    .line 412
    .line 413
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 414
    .line 415
    if-eq v1, v2, :cond_b

    .line 416
    .line 417
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 418
    .line 419
    if-ne v1, v2, :cond_c

    .line 420
    .line 421
    :cond_b
    iget-object v4, v0, Lu6/g;->a:Lu6/m;

    .line 422
    .line 423
    invoke-virtual/range {p0 .. p0}, Lu6/h;->g()Landroid/graphics/RectF;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    move-object/from16 v0, p0

    .line 428
    .line 429
    move-object/from16 v1, p1

    .line 430
    .line 431
    move-object v2, v8

    .line 432
    invoke-virtual/range {v0 .. v5}, Lu6/h;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lu6/m;Landroid/graphics/RectF;)V

    .line 433
    .line 434
    .line 435
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lu6/h;->j()Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-eqz v0, :cond_d

    .line 440
    .line 441
    invoke-virtual/range {p0 .. p1}, Lu6/h;->f(Landroid/graphics/Canvas;)V

    .line 442
    .line 443
    .line 444
    :cond_d
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 448
    .line 449
    .line 450
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lu6/m;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p4, p5}, Lu6/m;->e(Landroid/graphics/RectF;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p3, p4, Lu6/m;->f:Lu6/c;

    .line 8
    .line 9
    invoke-interface {p3, p5}, Lu6/c;->a(Landroid/graphics/RectF;)F

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    iget-object p4, p0, Lu6/h;->a:Lu6/g;

    .line 14
    .line 15
    iget p4, p4, Lu6/g;->i:F

    .line 16
    .line 17
    mul-float p3, p3, p4

    .line 18
    .line 19
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public f(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v2, p0, Lu6/h;->o:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget-object v3, p0, Lu6/h;->h:Landroid/graphics/Path;

    .line 4
    .line 5
    iget-object v4, p0, Lu6/h;->m:Lu6/m;

    .line 6
    .line 7
    iget-object v5, p0, Lu6/h;->j:Landroid/graphics/RectF;

    .line 8
    .line 9
    invoke-virtual {p0}, Lu6/h;->g()Landroid/graphics/RectF;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lu6/h;->j()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/high16 v1, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {v5, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 32
    .line 33
    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p1

    .line 36
    invoke-virtual/range {v0 .. v5}, Lu6/h;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lu6/m;Landroid/graphics/RectF;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final g()Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/h;->i:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget v0, v0, Lu6/g;->k:I

    .line 4
    .line 5
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget v0, v0, Lu6/g;->n:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lu6/h;->l()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lu6/h;->i()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lu6/h;->a:Lu6/g;

    .line 20
    .line 21
    iget v1, v1, Lu6/g;->i:F

    .line 22
    .line 23
    mul-float v0, v0, v1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lu6/h;->g()Landroid/graphics/RectF;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lu6/h;->g:Landroid/graphics/Path;

    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lu6/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/graphics/Path;->isConvex()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .line 50
    const/16 v2, 0x1d

    .line 51
    .line 52
    if-lt v0, v2, :cond_3

    .line 53
    .line 54
    :cond_2
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    :catch_0
    :cond_3
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget-object v0, v0, Lu6/g;->g:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lu6/h;->k:Landroid/graphics/Region;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lu6/h;->g()Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lu6/h;->g:Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v2}, Lu6/h;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lu6/h;->l:Landroid/graphics/Region;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 22
    .line 23
    .line 24
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public final h()I
    .locals 5

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget v1, v0, Lu6/g;->p:I

    .line 4
    .line 5
    int-to-double v1, v1

    .line 6
    iget v0, v0, Lu6/g;->q:I

    .line 7
    .line 8
    int-to-double v3, v0

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    mul-double v3, v3, v1

    .line 18
    .line 19
    double-to-int v0, v3

    .line 20
    return v0
.end method

.method public final i()F
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget-object v0, v0, Lu6/g;->a:Lu6/m;

    .line 4
    .line 5
    iget-object v0, v0, Lu6/m;->e:Lu6/c;

    .line 6
    .line 7
    invoke-virtual {p0}, Lu6/h;->g()Landroid/graphics/RectF;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lu6/c;->a(Landroid/graphics/RectF;)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final invalidateSelf()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu6/h;->e:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 8
    .line 9
    iget-object v0, v0, Lu6/g;->e:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 25
    .line 26
    iget-object v0, v0, Lu6/g;->d:Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 37
    .line 38
    iget-object v0, v0, Lu6/g;->c:Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 52
    :goto_1
    return v0
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget-object v0, v0, Lu6/g;->r:Landroid/graphics/Paint$Style;

    .line 4
    .line 5
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lu6/h;->o:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    cmpl-float v0, v0, v1

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public final k(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    new-instance v1, Lj6/a;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lj6/a;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lu6/g;->b:Lj6/a;

    .line 9
    .line 10
    invoke-virtual {p0}, Lu6/h;->v()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget-object v0, v0, Lu6/g;->a:Lu6/m;

    .line 4
    .line 5
    invoke-virtual {p0}, Lu6/h;->g()Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lu6/m;->e(Landroid/graphics/RectF;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final m(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget v1, v0, Lu6/g;->m:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, Lu6/g;->m:F

    .line 10
    .line 11
    invoke-virtual {p0}, Lu6/h;->v()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    new-instance v0, Lu6/g;

    .line 2
    .line 3
    iget-object v1, p0, Lu6/h;->a:Lu6/g;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, v0, Lu6/g;->c:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    iput-object v2, v0, Lu6/g;->d:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    iput-object v2, v0, Lu6/g;->e:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    iput-object v3, v0, Lu6/g;->f:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    iput-object v2, v0, Lu6/g;->g:Landroid/graphics/Rect;

    .line 20
    .line 21
    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    .line 23
    iput v2, v0, Lu6/g;->h:F

    .line 24
    .line 25
    iput v2, v0, Lu6/g;->i:F

    .line 26
    .line 27
    const/16 v2, 0xff

    .line 28
    .line 29
    iput v2, v0, Lu6/g;->k:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput v2, v0, Lu6/g;->l:F

    .line 33
    .line 34
    iput v2, v0, Lu6/g;->m:F

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iput v2, v0, Lu6/g;->n:I

    .line 38
    .line 39
    iput v2, v0, Lu6/g;->o:I

    .line 40
    .line 41
    iput v2, v0, Lu6/g;->p:I

    .line 42
    .line 43
    iput v2, v0, Lu6/g;->q:I

    .line 44
    .line 45
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 46
    .line 47
    iput-object v2, v0, Lu6/g;->r:Landroid/graphics/Paint$Style;

    .line 48
    .line 49
    iget-object v2, v1, Lu6/g;->a:Lu6/m;

    .line 50
    .line 51
    iput-object v2, v0, Lu6/g;->a:Lu6/m;

    .line 52
    .line 53
    iget-object v2, v1, Lu6/g;->b:Lj6/a;

    .line 54
    .line 55
    iput-object v2, v0, Lu6/g;->b:Lj6/a;

    .line 56
    .line 57
    iget v2, v1, Lu6/g;->j:F

    .line 58
    .line 59
    iput v2, v0, Lu6/g;->j:F

    .line 60
    .line 61
    iget-object v2, v1, Lu6/g;->c:Landroid/content/res/ColorStateList;

    .line 62
    .line 63
    iput-object v2, v0, Lu6/g;->c:Landroid/content/res/ColorStateList;

    .line 64
    .line 65
    iget-object v2, v1, Lu6/g;->d:Landroid/content/res/ColorStateList;

    .line 66
    .line 67
    iput-object v2, v0, Lu6/g;->d:Landroid/content/res/ColorStateList;

    .line 68
    .line 69
    iget-object v2, v1, Lu6/g;->f:Landroid/graphics/PorterDuff$Mode;

    .line 70
    .line 71
    iput-object v2, v0, Lu6/g;->f:Landroid/graphics/PorterDuff$Mode;

    .line 72
    .line 73
    iget-object v2, v1, Lu6/g;->e:Landroid/content/res/ColorStateList;

    .line 74
    .line 75
    iput-object v2, v0, Lu6/g;->e:Landroid/content/res/ColorStateList;

    .line 76
    .line 77
    iget v2, v1, Lu6/g;->k:I

    .line 78
    .line 79
    iput v2, v0, Lu6/g;->k:I

    .line 80
    .line 81
    iget v2, v1, Lu6/g;->h:F

    .line 82
    .line 83
    iput v2, v0, Lu6/g;->h:F

    .line 84
    .line 85
    iget v2, v1, Lu6/g;->p:I

    .line 86
    .line 87
    iput v2, v0, Lu6/g;->p:I

    .line 88
    .line 89
    iget v2, v1, Lu6/g;->n:I

    .line 90
    .line 91
    iput v2, v0, Lu6/g;->n:I

    .line 92
    .line 93
    iget v2, v1, Lu6/g;->i:F

    .line 94
    .line 95
    iput v2, v0, Lu6/g;->i:F

    .line 96
    .line 97
    iget v2, v1, Lu6/g;->l:F

    .line 98
    .line 99
    iput v2, v0, Lu6/g;->l:F

    .line 100
    .line 101
    iget v2, v1, Lu6/g;->m:F

    .line 102
    .line 103
    iput v2, v0, Lu6/g;->m:F

    .line 104
    .line 105
    iget v2, v1, Lu6/g;->o:I

    .line 106
    .line 107
    iput v2, v0, Lu6/g;->o:I

    .line 108
    .line 109
    iget v2, v1, Lu6/g;->q:I

    .line 110
    .line 111
    iput v2, v0, Lu6/g;->q:I

    .line 112
    .line 113
    iget-object v2, v1, Lu6/g;->r:Landroid/graphics/Paint$Style;

    .line 114
    .line 115
    iput-object v2, v0, Lu6/g;->r:Landroid/graphics/Paint$Style;

    .line 116
    .line 117
    iget-object v2, v1, Lu6/g;->g:Landroid/graphics/Rect;

    .line 118
    .line 119
    if-eqz v2, :cond_0

    .line 120
    .line 121
    new-instance v2, Landroid/graphics/Rect;

    .line 122
    .line 123
    iget-object v1, v1, Lu6/g;->g:Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 126
    .line 127
    .line 128
    iput-object v2, v0, Lu6/g;->g:Landroid/graphics/Rect;

    .line 129
    .line 130
    :cond_0
    iput-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 131
    .line 132
    return-object p0
.end method

.method public final n(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget-object v1, v0, Lu6/g;->c:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lu6/g;->c:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lu6/h;->onStateChange([I)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final o(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget v1, v0, Lu6/g;->i:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, Lu6/g;->i:F

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lu6/h;->e:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lu6/h;->invalidateSelf()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu6/h;->e:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lu6/h;->t([I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lu6/h;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lu6/h;->invalidateSelf()V

    .line 20
    .line 21
    .line 22
    :cond_2
    return p1
.end method

.method public final p(Landroid/graphics/Paint$Style;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iput-object p1, v0, Lu6/g;->r:Landroid/graphics/Paint$Style;

    .line 4
    .line 5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    const v0, -0xbbbbbc

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lu6/h;->p:Lt6/a;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lt6/a;->a(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget v1, v0, Lu6/g;->n:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    iput v2, v0, Lu6/g;->n:I

    .line 9
    .line 10
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final s(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget-object v1, v0, Lu6/g;->d:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lu6/g;->d:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lu6/h;->onStateChange([I)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget v1, v0, Lu6/g;->k:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput p1, v0, Lu6/g;->k:I

    .line 8
    .line 9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setShapeAppearanceModel(Lu6/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iput-object p1, v0, Lu6/g;->a:Lu6/m;

    .line 4
    .line 5
    invoke-virtual {p0}, Lu6/h;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setTint(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lu6/h;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iput-object p1, v0, Lu6/g;->e:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    invoke-virtual {p0}, Lu6/h;->u()Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget-object v1, v0, Lu6/g;->f:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lu6/g;->f:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    invoke-virtual {p0}, Lu6/h;->u()Z

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final t([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget-object v0, v0, Lu6/g;->c:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lu6/h;->n:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lu6/h;->a:Lu6/g;

    .line 15
    .line 16
    iget-object v3, v3, Lu6/g;->c:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v2, p0, Lu6/h;->a:Lu6/g;

    .line 31
    .line 32
    iget-object v2, v2, Lu6/g;->d:Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Lu6/h;->o:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, Lu6/h;->a:Lu6/g;

    .line 43
    .line 44
    iget-object v4, v4, Lu6/g;->d:Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    invoke-virtual {v4, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eq v3, p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v1, v0

    .line 57
    :goto_1
    return v1
.end method

.method public final u()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lu6/h;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 2
    .line 3
    iget-object v1, p0, Lu6/h;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 4
    .line 5
    iget-object v2, p0, Lu6/h;->a:Lu6/g;

    .line 6
    .line 7
    iget-object v3, v2, Lu6/g;->e:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iget-object v2, v2, Lu6/g;->f:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    iget-object v4, p0, Lu6/h;->n:Landroid/graphics/Paint;

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0, v3}, Lu6/h;->c(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 33
    .line 34
    invoke-direct {v4, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v2}, Lu6/h;->c(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eq v3, v2, :cond_2

    .line 47
    .line 48
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 49
    .line 50
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 51
    .line 52
    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    move-object v4, v2

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/4 v2, 0x0

    .line 58
    goto :goto_1

    .line 59
    :goto_2
    iput-object v4, p0, Lu6/h;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 60
    .line 61
    iget-object v2, p0, Lu6/h;->a:Lu6/g;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    iput-object v2, p0, Lu6/h;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 68
    .line 69
    iget-object v2, p0, Lu6/h;->a:Lu6/g;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lu6/h;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 75
    .line 76
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    iget-object v0, p0, Lu6/h;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 83
    .line 84
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    const/4 v5, 0x0

    .line 92
    :cond_4
    :goto_3
    return v5
.end method

.method public final v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 2
    .line 3
    iget v1, v0, Lu6/g;->m:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    add-float/2addr v1, v2

    .line 7
    const/high16 v2, 0x3f400000    # 0.75f

    .line 8
    .line 9
    mul-float v2, v2, v1

    .line 10
    .line 11
    float-to-double v2, v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    double-to-int v2, v2

    .line 17
    iput v2, v0, Lu6/g;->o:I

    .line 18
    .line 19
    iget-object v0, p0, Lu6/h;->a:Lu6/g;

    .line 20
    .line 21
    const/high16 v2, 0x3e800000    # 0.25f

    .line 22
    .line 23
    mul-float v1, v1, v2

    .line 24
    .line 25
    float-to-double v1, v1

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    double-to-int v1, v1

    .line 31
    iput v1, v0, Lu6/g;->p:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lu6/h;->u()Z

    .line 34
    .line 35
    .line 36
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
