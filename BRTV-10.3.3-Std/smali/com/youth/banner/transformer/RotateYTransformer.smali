.class public Lcom/youth/banner/transformer/RotateYTransformer;
.super Lcom/youth/banner/transformer/BasePageTransformer;
.source "MyApplication"


# static fields
.field private static final DEFAULT_MAX_ROTATE:F = 35.0f


# instance fields
.field private mMaxRotate:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    const/high16 v0, 0x420c0000    # 35.0f

    .line 2
    iput v0, p0, Lcom/youth/banner/transformer/RotateYTransformer;->mMaxRotate:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    .line 4
    iput p1, p0, Lcom/youth/banner/transformer/RotateYTransformer;->mMaxRotate:F

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 9
    .line 10
    .line 11
    const/high16 v0, -0x40800000    # -1.0f

    .line 12
    .line 13
    cmpg-float v1, p2, v0

    .line 14
    .line 15
    if-gez v1, :cond_0

    .line 16
    .line 17
    iget p2, p0, Lcom/youth/banner/transformer/RotateYTransformer;->mMaxRotate:F

    .line 18
    .line 19
    mul-float p2, p2, v0

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    int-to-float p2, p2

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    cmpg-float v2, p2, v1

    .line 37
    .line 38
    if-gtz v2, :cond_2

    .line 39
    .line 40
    iget v2, p0, Lcom/youth/banner/transformer/RotateYTransformer;->mMaxRotate:F

    .line 41
    .line 42
    mul-float v2, v2, p2

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationY(F)V

    .line 45
    .line 46
    .line 47
    const/high16 v2, 0x3f000000    # 0.5f

    .line 48
    .line 49
    cmpg-float v3, p2, v0

    .line 50
    .line 51
    if-gez v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    int-to-float v0, v0

    .line 58
    neg-float p2, p2

    .line 59
    mul-float p2, p2, v2

    .line 60
    .line 61
    add-float/2addr p2, v2

    .line 62
    mul-float p2, p2, v0

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    int-to-float p2, p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    int-to-float v3, v3

    .line 81
    mul-float v3, v3, v2

    .line 82
    .line 83
    sub-float/2addr v1, p2

    .line 84
    mul-float v1, v1, v3

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iget p2, p0, Lcom/youth/banner/transformer/RotateYTransformer;->mMaxRotate:F

    .line 94
    .line 95
    mul-float p2, p2, v1

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method
