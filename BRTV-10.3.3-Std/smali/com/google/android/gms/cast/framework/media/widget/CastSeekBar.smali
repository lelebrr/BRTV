.class public Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;
.super Landroid/view/View;
.source "MyApplication"


# static fields
.field public static final synthetic t:I


# instance fields
.field public a:Lu4/b;

.field public b:Z

.field public c:Ljava/lang/Integer;

.field public d:Ln0/r;

.field public e:Ljava/util/ArrayList;

.field public f:Ls2/c;

.field public final g:F

.field public final h:F

.field public final i:F

.field public final j:F

.field public final k:F

.field public final l:Landroid/graphics/Paint;

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public q:[I

.field public r:Landroid/graphics/Point;

.field public s:Ls4/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->e:Ljava/util/ArrayList;

    .line 4
    new-instance p2, Lcom/google/android/material/textfield/p;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0}, Lcom/google/android/material/textfield/p;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance p2, Landroid/graphics/Paint;

    .line 5
    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->l:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 6
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070075

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->g:F

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070074

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->h:F

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070076

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->i:F

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070077

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->j:F

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070073

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->k:F

    new-instance p2, Lu4/b;

    .line 12
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 14
    iput p3, p2, Lu4/b;->b:I

    .line 15
    sget-object p2, Lq4/d;->a:[I

    const p3, 0x7f0400c8

    const v0, 0x7f130111

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1, p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0x12

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/16 v1, 0x14

    .line 18
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/16 v2, 0x17

    .line 19
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 20
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->m:I

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->n:I

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->o:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->p:I

    .line 25
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->e:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final b(I)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 16
    .line 17
    iget v1, v1, Lu4/b;->b:I

    .line 18
    .line 19
    int-to-double v1, v1

    .line 20
    int-to-double v3, p1

    .line 21
    int-to-double v5, v0

    .line 22
    div-double/2addr v3, v5

    .line 23
    mul-double v3, v3, v1

    .line 24
    .line 25
    double-to-int p1, v3

    .line 26
    return p1
.end method

.method public final c(Landroid/graphics/Canvas;IIIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->l:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    int-to-float p3, p3

    .line 7
    int-to-float p2, p2

    .line 8
    int-to-float p4, p4

    .line 9
    div-float/2addr p3, p4

    .line 10
    div-float/2addr p2, p4

    .line 11
    int-to-float p4, p5

    .line 12
    mul-float p5, p3, p4

    .line 13
    .line 14
    mul-float p2, p2, p4

    .line 15
    .line 16
    iget p6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->i:F

    .line 17
    .line 18
    neg-float p3, p6

    .line 19
    move p4, p5

    .line 20
    move p5, p6

    .line 21
    move-object p6, v0

    .line 22
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final d(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 3
    .line 4
    iget-boolean v2, v1, Lu4/b;->f:Z

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v2, v1, Lu4/b;->d:I

    .line 10
    .line 11
    iget v1, v1, Lu4/b;->e:I

    .line 12
    .line 13
    sget-object v3, Lv4/a;->a:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Ljava/lang/Integer;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->f:Ls2/c;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ls2/c;->f(Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->s:Ls4/h;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    new-instance p1, Ls4/h;

    .line 44
    .line 45
    invoke-direct {p1, v0, p0}, Ls4/h;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->s:Ls4/h;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->s:Ls4/h;

    .line 55
    .line 56
    const-wide/16 v0, 0xc8

    .line 57
    .line 58
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->f:Ls2/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Ls2/c;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lt4/b;

    .line 11
    .line 12
    iget-object v0, v0, Lt4/b;->d:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/gms/internal/cast/o0;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    iput-boolean v2, v1, Lcom/google/android/gms/internal/cast/o0;->b:Z

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/o0;->f()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public getMaxProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 2
    .line 3
    iget v0, v0, Lu4/b;->b:I

    .line 4
    .line 5
    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 11
    .line 12
    iget v0, v0, Lu4/b;->a:I

    .line 13
    .line 14
    return v0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->s:Ls4/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->d:Ln0/r;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_f

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    sub-int/2addr v1, v3

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    sub-int/2addr v1, v3

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    sub-int/2addr v3, v4

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    sub-int/2addr v3, v4

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    div-int/lit8 v3, v3, 0x2

    .line 60
    .line 61
    int-to-float v3, v3

    .line 62
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 66
    .line 67
    iget-boolean v4, v3, Lu4/b;->f:Z

    .line 68
    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    iget v7, v3, Lu4/b;->d:I

    .line 72
    .line 73
    if-lez v7, :cond_0

    .line 74
    .line 75
    iget v8, v3, Lu4/b;->b:I

    .line 76
    .line 77
    iget v10, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->o:I

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    move-object v4, p0

    .line 81
    move-object v5, p1

    .line 82
    move v9, v1

    .line 83
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c(Landroid/graphics/Canvas;IIIII)V

    .line 84
    .line 85
    .line 86
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 87
    .line 88
    iget v6, v3, Lu4/b;->d:I

    .line 89
    .line 90
    if-le v11, v6, :cond_1

    .line 91
    .line 92
    iget v8, v3, Lu4/b;->b:I

    .line 93
    .line 94
    iget v10, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->m:I

    .line 95
    .line 96
    move-object v4, p0

    .line 97
    move-object v5, p1

    .line 98
    move v7, v11

    .line 99
    move v9, v1

    .line 100
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c(Landroid/graphics/Canvas;IIIII)V

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 104
    .line 105
    iget v7, v3, Lu4/b;->e:I

    .line 106
    .line 107
    if-le v7, v11, :cond_2

    .line 108
    .line 109
    iget v8, v3, Lu4/b;->b:I

    .line 110
    .line 111
    iget v10, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->n:I

    .line 112
    .line 113
    move-object v4, p0

    .line 114
    move-object v5, p1

    .line 115
    move v6, v11

    .line 116
    move v9, v1

    .line 117
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c(Landroid/graphics/Canvas;IIIII)V

    .line 118
    .line 119
    .line 120
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 121
    .line 122
    iget v8, v3, Lu4/b;->b:I

    .line 123
    .line 124
    iget v6, v3, Lu4/b;->e:I

    .line 125
    .line 126
    if-le v8, v6, :cond_6

    .line 127
    .line 128
    iget v10, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->o:I

    .line 129
    .line 130
    move-object v4, p0

    .line 131
    move-object v5, p1

    .line 132
    move v7, v8

    .line 133
    move v9, v1

    .line 134
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c(Landroid/graphics/Canvas;IIIII)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_3
    iget v3, v3, Lu4/b;->c:I

    .line 139
    .line 140
    const/4 v4, 0x0

    .line 141
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-lez v3, :cond_4

    .line 146
    .line 147
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 148
    .line 149
    iget v8, v4, Lu4/b;->b:I

    .line 150
    .line 151
    iget v10, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->o:I

    .line 152
    .line 153
    const/4 v6, 0x0

    .line 154
    move-object v4, p0

    .line 155
    move-object v5, p1

    .line 156
    move v7, v3

    .line 157
    move v9, v1

    .line 158
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c(Landroid/graphics/Canvas;IIIII)V

    .line 159
    .line 160
    .line 161
    :cond_4
    if-le v11, v3, :cond_5

    .line 162
    .line 163
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 164
    .line 165
    iget v8, v4, Lu4/b;->b:I

    .line 166
    .line 167
    iget v10, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->m:I

    .line 168
    .line 169
    move-object v4, p0

    .line 170
    move-object v5, p1

    .line 171
    move v6, v3

    .line 172
    move v7, v11

    .line 173
    move v9, v1

    .line 174
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c(Landroid/graphics/Canvas;IIIII)V

    .line 175
    .line 176
    .line 177
    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 178
    .line 179
    iget v8, v3, Lu4/b;->b:I

    .line 180
    .line 181
    if-le v8, v11, :cond_6

    .line 182
    .line 183
    iget v10, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->o:I

    .line 184
    .line 185
    move-object v4, p0

    .line 186
    move-object v5, p1

    .line 187
    move v6, v11

    .line 188
    move v7, v8

    .line 189
    move v9, v1

    .line 190
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c(Landroid/graphics/Canvas;IIIII)V

    .line 191
    .line 192
    .line 193
    :cond_6
    :goto_0
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->e:Ljava/util/ArrayList;

    .line 197
    .line 198
    iget-object v9, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->l:Landroid/graphics/Paint;

    .line 199
    .line 200
    if-eqz v1, :cond_e

    .line 201
    .line 202
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_7

    .line 207
    .line 208
    goto/16 :goto_3

    .line 209
    .line 210
    :cond_7
    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->p:I

    .line 211
    .line 212
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    sub-int/2addr v3, v4

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    sub-int v10, v3, v4

    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    sub-int/2addr v3, v4

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    sub-int/2addr v3, v4

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 245
    .line 246
    .line 247
    move-result v11

    .line 248
    div-int/lit8 v3, v3, 0x2

    .line 249
    .line 250
    int-to-float v3, v3

    .line 251
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    .line 253
    .line 254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_d

    .line 263
    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Lu4/a;

    .line 269
    .line 270
    if-eqz v2, :cond_8

    .line 271
    .line 272
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 273
    .line 274
    iget v3, v3, Lu4/b;->b:I

    .line 275
    .line 276
    iget v4, v2, Lu4/a;->a:I

    .line 277
    .line 278
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    iget-boolean v4, v2, Lu4/a;->c:Z

    .line 283
    .line 284
    if-eqz v4, :cond_9

    .line 285
    .line 286
    iget v2, v2, Lu4/a;->b:I

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_9
    const/4 v2, 0x1

    .line 290
    :goto_2
    add-int/2addr v2, v3

    .line 291
    int-to-float v3, v3

    .line 292
    int-to-float v4, v10

    .line 293
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 294
    .line 295
    iget v5, v5, Lu4/b;->b:I

    .line 296
    .line 297
    int-to-float v5, v5

    .line 298
    int-to-float v2, v2

    .line 299
    mul-float v2, v2, v4

    .line 300
    .line 301
    div-float/2addr v2, v5

    .line 302
    mul-float v3, v3, v4

    .line 303
    .line 304
    div-float/2addr v3, v5

    .line 305
    sub-float v5, v2, v3

    .line 306
    .line 307
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->k:F

    .line 308
    .line 309
    cmpg-float v5, v5, v6

    .line 310
    .line 311
    if-gez v5, :cond_a

    .line 312
    .line 313
    add-float v2, v3, v6

    .line 314
    .line 315
    :cond_a
    cmpl-float v5, v2, v4

    .line 316
    .line 317
    if-lez v5, :cond_b

    .line 318
    .line 319
    move v2, v4

    .line 320
    :cond_b
    sub-float v4, v2, v3

    .line 321
    .line 322
    cmpg-float v4, v4, v6

    .line 323
    .line 324
    if-gez v4, :cond_c

    .line 325
    .line 326
    sub-float v3, v2, v6

    .line 327
    .line 328
    :cond_c
    move v4, v3

    .line 329
    iget v7, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->i:F

    .line 330
    .line 331
    neg-float v5, v7

    .line 332
    move-object v3, p1

    .line 333
    move v6, v2

    .line 334
    move-object v8, v9

    .line 335
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 336
    .line 337
    .line 338
    goto :goto_1

    .line 339
    :cond_d
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 340
    .line 341
    .line 342
    :cond_e
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_10

    .line 347
    .line 348
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 349
    .line 350
    iget-boolean v1, v1, Lu4/b;->f:Z

    .line 351
    .line 352
    if-eqz v1, :cond_10

    .line 353
    .line 354
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->m:I

    .line 355
    .line 356
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    sub-int/2addr v1, v2

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    sub-int/2addr v1, v2

    .line 373
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    sub-int/2addr v2, v3

    .line 382
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    sub-int/2addr v2, v3

    .line 387
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    int-to-double v3, v3

    .line 392
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 393
    .line 394
    iget v5, v5, Lu4/b;->b:I

    .line 395
    .line 396
    int-to-double v5, v5

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    int-to-float v2, v2

    .line 402
    const/high16 v8, 0x40000000    # 2.0f

    .line 403
    .line 404
    div-float/2addr v2, v8

    .line 405
    div-double/2addr v3, v5

    .line 406
    int-to-double v5, v1

    .line 407
    mul-double v3, v3, v5

    .line 408
    .line 409
    double-to-int v1, v3

    .line 410
    int-to-float v1, v1

    .line 411
    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->j:F

    .line 412
    .line 413
    invoke-virtual {p1, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 417
    .line 418
    .line 419
    goto :goto_4

    .line 420
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 425
    .line 426
    .line 427
    move-result v4

    .line 428
    sub-int/2addr v3, v4

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    sub-int/2addr v3, v4

    .line 434
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    sub-int/2addr v4, v5

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    sub-int/2addr v4, v5

    .line 448
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 449
    .line 450
    .line 451
    move-result v12

    .line 452
    div-int/lit8 v4, v4, 0x2

    .line 453
    .line 454
    int-to-float v4, v4

    .line 455
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 456
    .line 457
    .line 458
    iget v11, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->p:I

    .line 459
    .line 460
    const/4 v7, 0x0

    .line 461
    iget v2, v1, Ln0/r;->a:I

    .line 462
    .line 463
    iget v1, v1, Ln0/r;->b:I

    .line 464
    .line 465
    move-object v5, p0

    .line 466
    move-object v6, p1

    .line 467
    move v8, v2

    .line 468
    move v9, v1

    .line 469
    move v10, v3

    .line 470
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c(Landroid/graphics/Canvas;IIIII)V

    .line 471
    .line 472
    .line 473
    iget v11, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->o:I

    .line 474
    .line 475
    move v7, v2

    .line 476
    move v8, v1

    .line 477
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c(Landroid/graphics/Canvas;IIIII)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 481
    .line 482
    .line 483
    :cond_10
    :goto_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 484
    .line 485
    .line 486
    return-void
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    int-to-float v0, v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    int-to-float v1, v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-float v3, v3

    .line 22
    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->g:F

    .line 23
    .line 24
    add-float/2addr v4, v0

    .line 25
    add-float/2addr v4, v1

    .line 26
    float-to-int v0, v4

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->h:F

    .line 33
    .line 34
    add-float/2addr v0, v2

    .line 35
    add-float/2addr v0, v3

    .line 36
    float-to-int v0, v0

    .line 37
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->a:Lu4/b;

    .line 9
    .line 10
    iget-boolean v0, v0, Lu4/b;->f:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->r:Landroid/graphics/Point;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Point;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->r:Landroid/graphics/Point;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->q:[I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    new-array v0, v2, [I

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->q:[I

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->q:[I

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->r:Landroid/graphics/Point;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    float-to-int v3, v3

    .line 48
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->q:[I

    .line 49
    .line 50
    aget v4, v4, v1

    .line 51
    .line 52
    sub-int/2addr v3, v4

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    sub-int/2addr v3, v4

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    float-to-int v4, v4

    .line 63
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->q:[I

    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    aget v5, v5, v6

    .line 67
    .line 68
    sub-int/2addr v4, v5

    .line 69
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_8

    .line 77
    .line 78
    if-eq p1, v6, :cond_6

    .line 79
    .line 80
    if-eq p1, v2, :cond_5

    .line 81
    .line 82
    const/4 v0, 0x3

    .line 83
    if-eq p1, v0, :cond_3

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b:Z

    .line 87
    .line 88
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Ljava/lang/Integer;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->f:Ls2/c;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v6}, Ls2/c;->f(Z)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->f:Ls2/c;

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ls2/c;->h(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 107
    .line 108
    .line 109
    return v6

    .line 110
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->r:Landroid/graphics/Point;

    .line 111
    .line 112
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b(I)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->d(I)V

    .line 119
    .line 120
    .line 121
    return v6

    .line 122
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->r:Landroid/graphics/Point;

    .line 123
    .line 124
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b(I)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->d(I)V

    .line 131
    .line 132
    .line 133
    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b:Z

    .line 134
    .line 135
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->f:Ls2/c;

    .line 136
    .line 137
    if-eqz p1, :cond_7

    .line 138
    .line 139
    invoke-virtual {p1, p0}, Ls2/c;->h(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    return v6

    .line 143
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->e()V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->r:Landroid/graphics/Point;

    .line 147
    .line 148
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b(I)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->d(I)V

    .line 155
    .line 156
    .line 157
    return v6

    .line 158
    :cond_9
    :goto_0
    return v1
.end method
