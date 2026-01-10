.class public final Lj6/a;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final f:I


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x4014666666666667L    # 5.1000000000000005

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    long-to-int v1, v0

    .line 11
    sput v1, Lj6/a;->f:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    const v0, 0x7f0401c9

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v2, v0, Landroid/util/TypedValue;->type:I

    .line 12
    .line 13
    const/16 v3, 0x12

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    const v2, 0x7f0401c8

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v2, v1}, Lo9/e;->q(Landroid/content/Context;II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const v3, 0x7f0401c7

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v3, v1}, Lo9/e;->q(Landroid/content/Context;II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const v4, 0x7f040147

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v4, v1}, Lo9/e;->q(Landroid/content/Context;II)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-boolean v0, p0, Lj6/a;->a:Z

    .line 59
    .line 60
    iput v2, p0, Lj6/a;->b:I

    .line 61
    .line 62
    iput v3, p0, Lj6/a;->c:I

    .line 63
    .line 64
    iput v1, p0, Lj6/a;->d:I

    .line 65
    .line 66
    iput p1, p0, Lj6/a;->e:F

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final a(IF)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lj6/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    invoke-static {p1, v0}, Lf0/a;->h(II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v2, p0, Lj6/a;->d:I

    .line 12
    .line 13
    if-ne v1, v2, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iget v2, p0, Lj6/a;->e:F

    .line 17
    .line 18
    cmpg-float v3, v2, v1

    .line 19
    .line 20
    if-lez v3, :cond_1

    .line 21
    .line 22
    cmpg-float v3, p2, v1

    .line 23
    .line 24
    if-gtz v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    div-float/2addr p2, v2

    .line 28
    float-to-double v2, p2

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->log1p(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    double-to-float p2, v2

    .line 34
    const/high16 v2, 0x40900000    # 4.5f

    .line 35
    .line 36
    mul-float p2, p2, v2

    .line 37
    .line 38
    const/high16 v2, 0x40000000    # 2.0f

    .line 39
    .line 40
    add-float/2addr p2, v2

    .line 41
    const/high16 v2, 0x42c80000    # 100.0f

    .line 42
    .line 43
    div-float/2addr p2, v2

    .line 44
    const/high16 v2, 0x3f800000    # 1.0f

    .line 45
    .line 46
    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 52
    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {p1, v0}, Lf0/a;->h(II)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget v0, p0, Lj6/a;->b:I

    .line 61
    .line 62
    invoke-static {p2, p1, v0}, Lo9/e;->x(FII)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    cmpl-float p2, p2, v1

    .line 67
    .line 68
    if-lez p2, :cond_2

    .line 69
    .line 70
    iget p2, p0, Lj6/a;->c:I

    .line 71
    .line 72
    if-eqz p2, :cond_2

    .line 73
    .line 74
    sget v0, Lj6/a;->f:I

    .line 75
    .line 76
    invoke-static {p2, v0}, Lf0/a;->h(II)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    invoke-static {p2, p1}, Lf0/a;->f(II)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    :cond_2
    invoke-static {p1, v2}, Lf0/a;->h(II)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    :cond_3
    return p1
.end method
