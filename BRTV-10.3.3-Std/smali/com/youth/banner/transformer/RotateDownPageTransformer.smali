.class public Lcom/youth/banner/transformer/RotateDownPageTransformer;
.super Lcom/youth/banner/transformer/BasePageTransformer;
.source "MyApplication"


# static fields
.field private static final DEFAULT_MAX_ROTATE:F = 15.0f


# instance fields
.field private mMaxRotate:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    const/high16 v0, 0x41700000    # 15.0f

    .line 2
    iput v0, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    .line 4
    iput p1, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 3

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    cmpg-float v1, p2, v0

    .line 4
    .line 5
    if-gez v1, :cond_0

    .line 6
    .line 7
    iget p2, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    .line 8
    .line 9
    mul-float p2, p2, v0

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    int-to-float p2, p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    int-to-float p2, p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    .line 33
    cmpg-float v1, p2, v0

    .line 34
    .line 35
    if-gtz v1, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    const/high16 v2, 0x3f000000    # 0.5f

    .line 39
    .line 40
    cmpg-float v1, p2, v1

    .line 41
    .line 42
    if-gez v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-float v0, v0

    .line 49
    neg-float v1, p2

    .line 50
    mul-float v1, v1, v2

    .line 51
    .line 52
    add-float/2addr v1, v2

    .line 53
    mul-float v1, v1, v0

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-float v0, v0

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    .line 67
    .line 68
    mul-float v0, v0, p2

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    int-to-float v1, v1

    .line 79
    mul-float v1, v1, v2

    .line 80
    .line 81
    sub-float/2addr v0, p2

    .line 82
    mul-float v0, v0, v1

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    int-to-float v0, v0

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 93
    .line 94
    .line 95
    iget v0, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    .line 96
    .line 97
    mul-float v0, v0, p2

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget p2, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 109
    .line 110
    .line 111
    const/4 p2, 0x0

    .line 112
    int-to-float p2, p2

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    int-to-float p2, p2

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 122
    .line 123
    .line 124
    :goto_0
    return-void
.end method
