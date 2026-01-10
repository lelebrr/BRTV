.class public Lcom/youth/banner/transformer/RotateUpPageTransformer;
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
    iput v0, p0, Lcom/youth/banner/transformer/RotateUpPageTransformer;->mMaxRotate:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    .line 4
    iput p1, p0, Lcom/youth/banner/transformer/RotateUpPageTransformer;->mMaxRotate:F

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, p2, v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    iget p2, p0, Lcom/youth/banner/transformer/RotateUpPageTransformer;->mMaxRotate:F

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    int-to-float p2, p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    .line 27
    cmpg-float v2, p2, v0

    .line 28
    .line 29
    if-gtz v2, :cond_2

    .line 30
    .line 31
    const/high16 v2, 0x3f000000    # 0.5f

    .line 32
    .line 33
    cmpg-float v3, p2, v1

    .line 34
    .line 35
    if-gez v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-float v0, v0

    .line 42
    neg-float v3, p2

    .line 43
    mul-float v3, v3, v2

    .line 44
    .line 45
    add-float/2addr v3, v2

    .line 46
    mul-float v3, v3, v0

    .line 47
    .line 48
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 52
    .line 53
    .line 54
    iget v0, p0, Lcom/youth/banner/transformer/RotateUpPageTransformer;->mMaxRotate:F

    .line 55
    .line 56
    neg-float v0, v0

    .line 57
    mul-float v0, v0, p2

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    int-to-float v3, v3

    .line 68
    mul-float v3, v3, v2

    .line 69
    .line 70
    sub-float/2addr v0, p2

    .line 71
    mul-float v0, v0, v3

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 77
    .line 78
    .line 79
    iget v0, p0, Lcom/youth/banner/transformer/RotateUpPageTransformer;->mMaxRotate:F

    .line 80
    .line 81
    neg-float v0, v0

    .line 82
    mul-float v0, v0, p2

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget p2, p0, Lcom/youth/banner/transformer/RotateUpPageTransformer;->mMaxRotate:F

    .line 89
    .line 90
    neg-float p2, p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method
