.class public final Ld6/c;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final t:D

.field public static final u:Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field public final a:Lcom/google/android/material/card/MaterialCardView;

.field public final b:Landroid/graphics/Rect;

.field public final c:Lu6/h;

.field public final d:Lu6/h;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Lu6/m;

.field public n:Landroid/content/res/ColorStateList;

.field public o:Landroid/graphics/drawable/RippleDrawable;

.field public p:Landroid/graphics/drawable/LayerDrawable;

.field public q:Lu6/h;

.field public r:Z

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x4046800000000000L    # 45.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Ld6/c;->t:D

    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v1, 0x1c

    .line 19
    .line 20
    if-gt v0, v1, :cond_0

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    sput-object v0, Ld6/c;->u:Landroid/graphics/drawable/ColorDrawable;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld6/c;->b:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Ld6/c;->r:Z

    .line 13
    .line 14
    iput-object p1, p0, Ld6/c;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 15
    .line 16
    new-instance v0, Lu6/h;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f130489

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, p2, p3, v2}, Lu6/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Ld6/c;->c:Lu6/h;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lu6/h;->k(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lu6/h;->q()V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lu6/h;->a:Lu6/g;

    .line 41
    .line 42
    iget-object v0, v0, Lu6/g;->a:Lu6/m;

    .line 43
    .line 44
    invoke-virtual {v0}, Lu6/m;->f()Lu6/l;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object v1, Lx5/a;->h:[I

    .line 53
    .line 54
    const v2, 0x7f13010e

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 p2, 0x3

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    if-eqz p3, :cond_0

    .line 67
    .line 68
    const/4 p3, 0x0

    .line 69
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-virtual {v0, p2}, Lu6/l;->c(F)V

    .line 74
    .line 75
    .line 76
    :cond_0
    new-instance p2, Lu6/h;

    .line 77
    .line 78
    invoke-direct {p2}, Lu6/h;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p2, p0, Ld6/c;->d:Lu6/h;

    .line 82
    .line 83
    invoke-virtual {v0}, Lu6/l;->a()Lu6/m;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p0, p2}, Ld6/c;->g(Lu6/m;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public static b(Ln5/d;F)F
    .locals 4

    .line 1
    instance-of v0, p0, Lu6/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    sget-wide v2, Ld6/c;->t:D

    .line 8
    .line 9
    sub-double/2addr v0, v2

    .line 10
    float-to-double p0, p1

    .line 11
    mul-double v0, v0, p0

    .line 12
    .line 13
    double-to-float p0, v0

    .line 14
    return p0

    .line 15
    :cond_0
    instance-of p0, p0, Lu6/d;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const/high16 p0, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float/2addr p1, p0

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method


# virtual methods
.method public final a()F
    .locals 5

    .line 1
    iget-object v0, p0, Ld6/c;->m:Lu6/m;

    .line 2
    .line 3
    iget-object v0, v0, Lu6/m;->a:Ln5/d;

    .line 4
    .line 5
    iget-object v1, p0, Ld6/c;->c:Lu6/h;

    .line 6
    .line 7
    invoke-virtual {v1}, Lu6/h;->i()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v0, v2}, Ld6/c;->b(Ln5/d;F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, Ld6/c;->m:Lu6/m;

    .line 16
    .line 17
    iget-object v2, v2, Lu6/m;->b:Ln5/d;

    .line 18
    .line 19
    iget-object v3, v1, Lu6/h;->a:Lu6/g;

    .line 20
    .line 21
    iget-object v3, v3, Lu6/g;->a:Lu6/m;

    .line 22
    .line 23
    iget-object v3, v3, Lu6/m;->f:Lu6/c;

    .line 24
    .line 25
    invoke-virtual {v1}, Lu6/h;->g()Landroid/graphics/RectF;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v3, v4}, Lu6/c;->a(Landroid/graphics/RectF;)F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v2, v3}, Ld6/c;->b(Ln5/d;F)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v2, p0, Ld6/c;->m:Lu6/m;

    .line 42
    .line 43
    iget-object v2, v2, Lu6/m;->c:Ln5/d;

    .line 44
    .line 45
    iget-object v3, v1, Lu6/h;->a:Lu6/g;

    .line 46
    .line 47
    iget-object v3, v3, Lu6/g;->a:Lu6/m;

    .line 48
    .line 49
    iget-object v3, v3, Lu6/m;->g:Lu6/c;

    .line 50
    .line 51
    invoke-virtual {v1}, Lu6/h;->g()Landroid/graphics/RectF;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-interface {v3, v4}, Lu6/c;->a(Landroid/graphics/RectF;)F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-static {v2, v3}, Ld6/c;->b(Ln5/d;F)F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iget-object v3, p0, Ld6/c;->m:Lu6/m;

    .line 64
    .line 65
    iget-object v3, v3, Lu6/m;->d:Ln5/d;

    .line 66
    .line 67
    iget-object v4, v1, Lu6/h;->a:Lu6/g;

    .line 68
    .line 69
    iget-object v4, v4, Lu6/g;->a:Lu6/m;

    .line 70
    .line 71
    iget-object v4, v4, Lu6/m;->h:Lu6/c;

    .line 72
    .line 73
    invoke-virtual {v1}, Lu6/h;->g()Landroid/graphics/RectF;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v4, v1}, Lu6/c;->a(Landroid/graphics/RectF;)F

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v3, v1}, Ld6/c;->b(Ln5/d;F)F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    return v0
.end method

.method public final c()Landroid/graphics/drawable/LayerDrawable;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Ld6/c;->o:Landroid/graphics/drawable/RippleDrawable;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    sget-object v1, Ls6/c;->a:[I

    .line 7
    .line 8
    new-instance v1, Lu6/h;

    .line 9
    .line 10
    iget-object v2, p0, Ld6/c;->m:Lu6/m;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lu6/h;-><init>(Lu6/m;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Ld6/c;->q:Lu6/h;

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    .line 18
    .line 19
    iget-object v2, p0, Ld6/c;->k:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    iget-object v3, p0, Ld6/c;->q:Lu6/h;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v1, v2, v4, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Ld6/c;->o:Landroid/graphics/drawable/RippleDrawable;

    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Ld6/c;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .line 34
    .line 35
    iget-object v2, p0, Ld6/c;->o:Landroid/graphics/drawable/RippleDrawable;

    .line 36
    .line 37
    iget-object v3, p0, Ld6/c;->d:Lu6/h;

    .line 38
    .line 39
    iget-object v4, p0, Ld6/c;->j:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    aput-object v2, v5, v6

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    aput-object v3, v5, v2

    .line 49
    .line 50
    aput-object v4, v5, v0

    .line 51
    .line 52
    invoke-direct {v1, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Ld6/c;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 56
    .line 57
    const v2, 0x7f0b0303

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Ld6/c;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 64
    .line 65
    return-object v0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)Ld6/b;
    .locals 8

    .line 1
    iget-object v0, p0, Ld6/c;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 14
    .line 15
    mul-float v1, v1, v2

    .line 16
    .line 17
    invoke-virtual {p0}, Ld6/c;->h()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Ld6/c;->a()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    add-float/2addr v1, v2

    .line 31
    float-to-double v1, v1

    .line 32
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    double-to-int v1, v1

    .line 37
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0}, Ld6/c;->h()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Ld6/c;->a()F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :cond_1
    add-float/2addr v0, v3

    .line 52
    float-to-double v2, v0

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    double-to-int v0, v2

    .line 58
    move v6, v0

    .line 59
    move v7, v1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v1, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    :goto_1
    new-instance v0, Ld6/b;

    .line 65
    .line 66
    move-object v2, v0

    .line 67
    move-object v3, p1

    .line 68
    move v4, v6

    .line 69
    move v5, v7

    .line 70
    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method public final e(II)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    const/16 v1, 0x50

    .line 3
    .line 4
    iget-object v2, v0, Ld6/c;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 5
    .line 6
    if-eqz v2, :cond_8

    .line 7
    .line 8
    iget-object v2, v0, Ld6/c;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 21
    .line 22
    mul-float v3, v3, v4

    .line 23
    .line 24
    invoke-virtual {p0}, Ld6/c;->h()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Ld6/c;->a()F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v4, 0x0

    .line 37
    :goto_0
    add-float/2addr v3, v4

    .line 38
    const/high16 v4, 0x40000000    # 2.0f

    .line 39
    .line 40
    mul-float v3, v3, v4

    .line 41
    .line 42
    float-to-double v6, v3

    .line 43
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    double-to-int v3, v6

    .line 48
    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-virtual {p0}, Ld6/c;->h()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Ld6/c;->a()F

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    :cond_1
    add-float/2addr v6, v5

    .line 63
    mul-float v6, v6, v4

    .line 64
    .line 65
    float-to-double v4, v6

    .line 66
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    double-to-int v4, v4

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v3, 0x0

    .line 73
    const/4 v4, 0x0

    .line 74
    :goto_1
    iget v5, v0, Ld6/c;->g:I

    .line 75
    .line 76
    const v6, 0x800005

    .line 77
    .line 78
    .line 79
    and-int v7, v5, v6

    .line 80
    .line 81
    if-ne v7, v6, :cond_3

    .line 82
    .line 83
    iget v7, v0, Ld6/c;->e:I

    .line 84
    .line 85
    sub-int v7, p1, v7

    .line 86
    .line 87
    iget v8, v0, Ld6/c;->f:I

    .line 88
    .line 89
    sub-int/2addr v7, v8

    .line 90
    sub-int/2addr v7, v4

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    iget v7, v0, Ld6/c;->e:I

    .line 93
    .line 94
    :goto_2
    and-int/lit8 v8, v5, 0x50

    .line 95
    .line 96
    if-ne v8, v1, :cond_4

    .line 97
    .line 98
    iget v8, v0, Ld6/c;->e:I

    .line 99
    .line 100
    :goto_3
    move v14, v8

    .line 101
    goto :goto_4

    .line 102
    :cond_4
    iget v8, v0, Ld6/c;->e:I

    .line 103
    .line 104
    sub-int v8, p2, v8

    .line 105
    .line 106
    iget v9, v0, Ld6/c;->f:I

    .line 107
    .line 108
    sub-int/2addr v8, v9

    .line 109
    sub-int/2addr v8, v3

    .line 110
    goto :goto_3

    .line 111
    :goto_4
    and-int v8, v5, v6

    .line 112
    .line 113
    if-ne v8, v6, :cond_5

    .line 114
    .line 115
    iget v4, v0, Ld6/c;->e:I

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_5
    iget v6, v0, Ld6/c;->e:I

    .line 119
    .line 120
    sub-int v6, p1, v6

    .line 121
    .line 122
    iget v8, v0, Ld6/c;->f:I

    .line 123
    .line 124
    sub-int/2addr v6, v8

    .line 125
    sub-int v4, v6, v4

    .line 126
    .line 127
    :goto_5
    and-int/2addr v5, v1

    .line 128
    if-ne v5, v1, :cond_6

    .line 129
    .line 130
    iget v1, v0, Ld6/c;->e:I

    .line 131
    .line 132
    sub-int v1, p2, v1

    .line 133
    .line 134
    iget v5, v0, Ld6/c;->f:I

    .line 135
    .line 136
    sub-int/2addr v1, v5

    .line 137
    sub-int/2addr v1, v3

    .line 138
    :goto_6
    move v12, v1

    .line 139
    goto :goto_7

    .line 140
    :cond_6
    iget v1, v0, Ld6/c;->e:I

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :goto_7
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    const/4 v2, 0x1

    .line 150
    if-ne v1, v2, :cond_7

    .line 151
    .line 152
    move v11, v4

    .line 153
    move v13, v7

    .line 154
    goto :goto_8

    .line 155
    :cond_7
    move v13, v4

    .line 156
    move v11, v7

    .line 157
    :goto_8
    iget-object v9, v0, Ld6/c;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 158
    .line 159
    const/4 v10, 0x2

    .line 160
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 161
    .line 162
    .line 163
    :cond_8
    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {p1}, Ln5/d;->W(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ld6/c;->j:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    iget-object v0, p0, Ld6/c;->l:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lg0/a;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Ld6/c;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    iget-boolean p1, p1, Lcom/google/android/material/card/MaterialCardView;->j:Z

    .line 21
    .line 22
    iget-object v0, p0, Ld6/c;->j:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/16 p1, 0xff

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    sget-object p1, Ld6/c;->u:Landroid/graphics/drawable/ColorDrawable;

    .line 37
    .line 38
    iput-object p1, p0, Ld6/c;->j:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    :cond_2
    :goto_1
    iget-object p1, p0, Ld6/c;->p:Landroid/graphics/drawable/LayerDrawable;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    const v0, 0x7f0b0303

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Ld6/c;->j:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public final g(Lu6/m;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ld6/c;->m:Lu6/m;

    .line 2
    .line 3
    iget-object v0, p0, Ld6/c;->c:Lu6/h;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lu6/h;->setShapeAppearanceModel(Lu6/m;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lu6/h;->l()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    xor-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    iput-boolean v1, v0, Lu6/h;->v:Z

    .line 15
    .line 16
    iget-object v0, p0, Ld6/c;->d:Lu6/h;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lu6/h;->setShapeAppearanceModel(Lu6/m;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Ld6/c;->q:Lu6/h;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lu6/h;->setShapeAppearanceModel(Lu6/m;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld6/c;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Ld6/c;->c:Lu6/h;

    .line 10
    .line 11
    invoke-virtual {v1}, Lu6/h;->l()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public final i()V
    .locals 7

    .line 1
    iget-object v0, p0, Ld6/c;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Ld6/c;->c:Lu6/h;

    .line 11
    .line 12
    invoke-virtual {v1}, Lu6/h;->l()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    const/4 v3, 0x0

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Ld6/c;->h()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ld6/c;->a()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_2
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 50
    .line 51
    sget-wide v5, Ld6/c;->t:D

    .line 52
    .line 53
    sub-double/2addr v3, v5

    .line 54
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getCardViewRadius()F

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    float-to-double v5, v5

    .line 59
    mul-double v3, v3, v5

    .line 60
    .line 61
    double-to-float v3, v3

    .line 62
    :cond_3
    sub-float/2addr v1, v3

    .line 63
    float-to-int v1, v1

    .line 64
    iget-object v3, p0, Ld6/c;->b:Landroid/graphics/Rect;

    .line 65
    .line 66
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 67
    .line 68
    add-int/2addr v4, v1

    .line 69
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    add-int/2addr v5, v1

    .line 72
    iget v6, v3, Landroid/graphics/Rect;->right:I

    .line 73
    .line 74
    add-int/2addr v6, v1

    .line 75
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 76
    .line 77
    add-int/2addr v3, v1

    .line 78
    iget-object v1, v0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v0, Landroidx/cardview/widget/CardView;->e:Ll6/h;

    .line 84
    .line 85
    iget-object v1, v0, Ll6/h;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Landroidx/cardview/widget/CardView;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0, v2, v2, v2, v2}, Ll6/h;->s(IIII)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    iget-object v1, v0, Ll6/h;->b:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    check-cast v1, Lo/a;

    .line 104
    .line 105
    iget v2, v1, Lo/a;->e:F

    .line 106
    .line 107
    iget v1, v1, Lo/a;->a:F

    .line 108
    .line 109
    iget-object v3, v0, Ll6/h;->c:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v3, Landroidx/cardview/widget/CardView;

    .line 112
    .line 113
    invoke-virtual {v3}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-static {v2, v1, v4}, Lo/b;->a(FFZ)F

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    float-to-double v4, v4

    .line 122
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 123
    .line 124
    .line 125
    move-result-wide v4

    .line 126
    double-to-int v4, v4

    .line 127
    invoke-virtual {v3}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-static {v2, v1, v3}, Lo/b;->b(FFZ)F

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    float-to-double v1, v1

    .line 136
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    double-to-int v1, v1

    .line 141
    invoke-virtual {v0, v4, v1, v4, v1}, Ll6/h;->s(IIII)V

    .line 142
    .line 143
    .line 144
    :goto_3
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld6/c;->r:Z

    .line 2
    .line 3
    iget-object v1, p0, Ld6/c;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ld6/c;->c:Lu6/h;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ld6/c;->d(Landroid/graphics/drawable/Drawable;)Ld6/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Ld6/c;->i:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ld6/c;->d(Landroid/graphics/drawable/Drawable;)Ld6/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
