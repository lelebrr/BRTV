.class public Lcom/youth/banner/transformer/AlphaPageTransformer;
.super Lcom/youth/banner/transformer/BasePageTransformer;
.source "MyApplication"


# static fields
.field private static final DEFAULT_MIN_ALPHA:F = 0.5f


# instance fields
.field private mMinAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    .line 4
    iput p1, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 3

    .line 1
    const v0, 0x3f7fbe77    # 0.999f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 5
    .line 6
    .line 7
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    .line 9
    cmpg-float v0, p2, v0

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    iget p2, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    .line 21
    cmpg-float v1, p2, v0

    .line 22
    .line 23
    if-gtz v1, :cond_2

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    cmpg-float v1, p2, v1

    .line 27
    .line 28
    if-gez v1, :cond_1

    .line 29
    .line 30
    iget v1, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    .line 31
    .line 32
    sub-float v2, v0, v1

    .line 33
    .line 34
    add-float/2addr p2, v0

    .line 35
    mul-float p2, p2, v2

    .line 36
    .line 37
    add-float/2addr p2, v1

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget v1, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    .line 43
    .line 44
    sub-float v2, v0, v1

    .line 45
    .line 46
    sub-float/2addr v0, p2

    .line 47
    mul-float v0, v0, v2

    .line 48
    .line 49
    add-float/2addr v0, v1

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget p2, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method
