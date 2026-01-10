.class public final Lcom/google/android/material/slider/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/slider/BaseSlider;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/slider/b;->a:Lcom/google/android/material/slider/BaseSlider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/google/android/material/slider/b;->a:Lcom/google/android/material/slider/BaseSlider;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/google/android/material/slider/BaseSlider;->k:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lz6/a;

    .line 30
    .line 31
    const v3, 0x3f99999a    # 1.2f

    .line 32
    .line 33
    .line 34
    iput v3, v2, Lz6/a;->L:F

    .line 35
    .line 36
    iput p1, v2, Lz6/a;->J:F

    .line 37
    .line 38
    iput p1, v2, Lz6/a;->K:F

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    const/high16 v4, 0x3f800000    # 1.0f

    .line 42
    .line 43
    const v5, 0x3e428f5c    # 0.19f

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4, v5, v4, p1}, Ly5/a;->b(FFFFF)F

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iput v3, v2, Lz6/a;->M:F

    .line 51
    .line 52
    invoke-virtual {v2}, Lu6/h;->invalidateSelf()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object p1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 59
    .line 60
    .line 61
    return-void
.end method
