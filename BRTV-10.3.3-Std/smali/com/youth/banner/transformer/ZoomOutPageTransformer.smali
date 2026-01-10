.class public Lcom/youth/banner/transformer/ZoomOutPageTransformer;
.super Lcom/youth/banner/transformer/BasePageTransformer;
.source "MyApplication"


# static fields
.field private static final DEFAULT_MIN_ALPHA:F = 0.5f

.field private static final DEFAULT_MIN_SCALE:F = 0.85f


# instance fields
.field private mMinAlpha:F

.field private mMinScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    const v0, 0x3f59999a    # 0.85f

    .line 2
    iput v0, p0, Lcom/youth/banner/transformer/ZoomOutPageTransformer;->mMinScale:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 3
    iput v0, p0, Lcom/youth/banner/transformer/ZoomOutPageTransformer;->mMinAlpha:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    .line 5
    iput p1, p0, Lcom/youth/banner/transformer/ZoomOutPageTransformer;->mMinScale:F

    .line 6
    iput p2, p0, Lcom/youth/banner/transformer/ZoomOutPageTransformer;->mMinAlpha:F

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, -0x40800000    # -1.0f

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    cmpg-float v2, p2, v2

    .line 13
    .line 14
    if-gez v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    .line 22
    cmpg-float v4, p2, v2

    .line 23
    .line 24
    if-gtz v4, :cond_2

    .line 25
    .line 26
    iget v4, p0, Lcom/youth/banner/transformer/ZoomOutPageTransformer;->mMinScale:F

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    sub-float v5, v2, v5

    .line 33
    .line 34
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    int-to-float v1, v1

    .line 39
    sub-float v5, v2, v4

    .line 40
    .line 41
    mul-float v1, v1, v5

    .line 42
    .line 43
    const/high16 v6, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float/2addr v1, v6

    .line 46
    int-to-float v0, v0

    .line 47
    mul-float v0, v0, v5

    .line 48
    .line 49
    div-float/2addr v0, v6

    .line 50
    cmpg-float p2, p2, v3

    .line 51
    .line 52
    if-gez p2, :cond_1

    .line 53
    .line 54
    div-float/2addr v1, v6

    .line 55
    sub-float/2addr v0, v1

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    neg-float p2, v0

    .line 61
    div-float/2addr v1, v6

    .line 62
    add-float/2addr v1, p2

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 70
    .line 71
    .line 72
    iget p2, p0, Lcom/youth/banner/transformer/ZoomOutPageTransformer;->mMinAlpha:F

    .line 73
    .line 74
    iget v0, p0, Lcom/youth/banner/transformer/ZoomOutPageTransformer;->mMinScale:F

    .line 75
    .line 76
    sub-float/2addr v4, v0

    .line 77
    sub-float v0, v2, v0

    .line 78
    .line 79
    div-float/2addr v4, v0

    .line 80
    sub-float/2addr v2, p2

    .line 81
    mul-float v2, v2, v4

    .line 82
    .line 83
    add-float/2addr v2, p2

    .line 84
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-void
.end method
