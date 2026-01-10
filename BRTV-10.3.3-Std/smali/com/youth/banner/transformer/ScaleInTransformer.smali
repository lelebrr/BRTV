.class public Lcom/youth/banner/transformer/ScaleInTransformer;
.super Lcom/youth/banner/transformer/BasePageTransformer;
.source "MyApplication"


# static fields
.field private static final DEFAULT_MIN_SCALE:F = 0.85f


# instance fields
.field private mMinScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    const v0, 0x3f59999a    # 0.85f

    .line 2
    iput v0, p0, Lcom/youth/banner/transformer/ScaleInTransformer;->mMinScale:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    .line 4
    iput p1, p0, Lcom/youth/banner/transformer/ScaleInTransformer;->mMinScale:F

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 5

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
    div-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 13
    .line 14
    .line 15
    div-int/lit8 v1, v0, 0x2

    .line 16
    .line 17
    int-to-float v1, v1

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 19
    .line 20
    .line 21
    const/high16 v1, -0x40800000    # -1.0f

    .line 22
    .line 23
    cmpg-float v1, p2, v1

    .line 24
    .line 25
    if-gez v1, :cond_0

    .line 26
    .line 27
    iget p2, p0, Lcom/youth/banner/transformer/ScaleInTransformer;->mMinScale:F

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 30
    .line 31
    .line 32
    iget p2, p0, Lcom/youth/banner/transformer/ScaleInTransformer;->mMinScale:F

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 35
    .line 36
    .line 37
    int-to-float p2, v0

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    .line 45
    cmpg-float v3, p2, v2

    .line 46
    .line 47
    if-gtz v3, :cond_2

    .line 48
    .line 49
    const/high16 v3, 0x3f000000    # 0.5f

    .line 50
    .line 51
    cmpg-float v1, p2, v1

    .line 52
    .line 53
    if-gez v1, :cond_1

    .line 54
    .line 55
    add-float v1, p2, v2

    .line 56
    .line 57
    iget v4, p0, Lcom/youth/banner/transformer/ScaleInTransformer;->mMinScale:F

    .line 58
    .line 59
    sub-float/2addr v2, v4

    .line 60
    mul-float v2, v2, v1

    .line 61
    .line 62
    add-float/2addr v2, v4

    .line 63
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 67
    .line 68
    .line 69
    int-to-float v0, v0

    .line 70
    neg-float p2, p2

    .line 71
    mul-float p2, p2, v3

    .line 72
    .line 73
    add-float/2addr p2, v3

    .line 74
    mul-float p2, p2, v0

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    sub-float p2, v2, p2

    .line 81
    .line 82
    iget v1, p0, Lcom/youth/banner/transformer/ScaleInTransformer;->mMinScale:F

    .line 83
    .line 84
    sub-float/2addr v2, v1

    .line 85
    mul-float v2, v2, p2

    .line 86
    .line 87
    add-float/2addr v2, v1

    .line 88
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 92
    .line 93
    .line 94
    int-to-float v0, v0

    .line 95
    mul-float p2, p2, v3

    .line 96
    .line 97
    mul-float p2, p2, v0

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 104
    .line 105
    .line 106
    iget p2, p0, Lcom/youth/banner/transformer/ScaleInTransformer;->mMinScale:F

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 109
    .line 110
    .line 111
    iget p2, p0, Lcom/youth/banner/transformer/ScaleInTransformer;->mMinScale:F

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 114
    .line 115
    .line 116
    :goto_0
    return-void
.end method
