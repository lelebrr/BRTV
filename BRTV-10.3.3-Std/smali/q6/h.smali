.class public final Lq6/h;
.super Lq6/n;
.source "MyApplication"


# static fields
.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:Landroidx/appcompat/widget/g3;

.field public static final p:Landroidx/appcompat/widget/g3;


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public e:Landroid/animation/ObjectAnimator;

.field public final f:Lg1/a;

.field public final g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

.field public h:I

.field public i:F

.field public j:F

.field public k:Lq6/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x546

    .line 3
    .line 4
    const/16 v2, 0xa8c

    .line 5
    .line 6
    const/16 v3, 0xfd2

    .line 7
    .line 8
    filled-new-array {v0, v1, v2, v3}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lq6/h;->l:[I

    .line 13
    .line 14
    const/16 v0, 0x29b

    .line 15
    .line 16
    const/16 v1, 0x7e1

    .line 17
    .line 18
    const/16 v2, 0xd27

    .line 19
    .line 20
    const/16 v3, 0x126d

    .line 21
    .line 22
    filled-new-array {v0, v1, v2, v3}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lq6/h;->m:[I

    .line 27
    .line 28
    const/16 v0, 0x3e8

    .line 29
    .line 30
    const/16 v1, 0x92e

    .line 31
    .line 32
    const/16 v2, 0xe74

    .line 33
    .line 34
    const/16 v3, 0x13ba

    .line 35
    .line 36
    filled-new-array {v0, v1, v2, v3}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lq6/h;->n:[I

    .line 41
    .line 42
    new-instance v0, Landroidx/appcompat/widget/g3;

    .line 43
    .line 44
    const-string v1, "animationFraction"

    .line 45
    .line 46
    const-class v2, Ljava/lang/Float;

    .line 47
    .line 48
    const/4 v3, 0x5

    .line 49
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/g3;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lq6/h;->o:Landroidx/appcompat/widget/g3;

    .line 53
    .line 54
    new-instance v0, Landroidx/appcompat/widget/g3;

    .line 55
    .line 56
    const-string v1, "completeEndFraction"

    .line 57
    .line 58
    const/4 v3, 0x6

    .line 59
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/g3;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lq6/h;->p:Landroidx/appcompat/widget/g3;

    .line 63
    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lq6/n;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lq6/h;->h:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lq6/h;->k:Lq6/c;

    .line 10
    .line 11
    iput-object p1, p0, Lq6/h;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 12
    .line 13
    new-instance p1, Lg1/a;

    .line 14
    .line 15
    invoke-direct {p1}, Lg1/a;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lq6/h;->f:Lg1/a;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq6/h;->d:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lq6/h;->h:I

    .line 3
    .line 4
    iget-object v1, p0, Lq6/h;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 5
    .line 6
    iget-object v1, v1, Lq6/e;->c:[I

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    iget-object v2, p0, Lq6/n;->a:Lq6/o;

    .line 11
    .line 12
    iget v2, v2, Lq6/l;->j:I

    .line 13
    .line 14
    invoke-static {v1, v2}, Lo9/e;->j(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lq6/n;->c:[I

    .line 19
    .line 20
    aput v1, v2, v0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lq6/h;->j:F

    .line 24
    .line 25
    return-void
.end method

.method public final c(Lq6/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq6/h;->k:Lq6/c;

    .line 2
    .line 3
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq6/h;->e:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lq6/n;->a:Lq6/o;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lq6/h;->e:Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lq6/h;->a()V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lq6/h;->d:Landroid/animation/ObjectAnimator;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    sget-object v2, Lq6/h;->o:Landroidx/appcompat/widget/g3;

    .line 9
    .line 10
    new-array v4, v1, [F

    .line 11
    .line 12
    fill-array-data v4, :array_0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Lq6/h;->d:Landroid/animation/ObjectAnimator;

    .line 20
    .line 21
    const-wide/16 v4, 0x1518

    .line 22
    .line 23
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lq6/h;->d:Landroid/animation/ObjectAnimator;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lq6/h;->d:Landroid/animation/ObjectAnimator;

    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lq6/h;->d:Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    new-instance v4, Lq6/g;

    .line 41
    .line 42
    invoke-direct {v4, p0, v0}, Lq6/g;-><init>(Lq6/h;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v2, p0, Lq6/h;->e:Landroid/animation/ObjectAnimator;

    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    sget-object v2, Lq6/h;->p:Landroidx/appcompat/widget/g3;

    .line 53
    .line 54
    new-array v1, v1, [F

    .line 55
    .line 56
    fill-array-data v1, :array_1

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Lq6/h;->e:Landroid/animation/ObjectAnimator;

    .line 64
    .line 65
    const-wide/16 v4, 0x14d

    .line 66
    .line 67
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lq6/h;->e:Landroid/animation/ObjectAnimator;

    .line 71
    .line 72
    iget-object v2, p0, Lq6/h;->f:Lg1/a;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lq6/h;->e:Landroid/animation/ObjectAnimator;

    .line 78
    .line 79
    new-instance v2, Lq6/g;

    .line 80
    .line 81
    const/4 v4, 0x1

    .line 82
    invoke-direct {v2, p0, v4}, Lq6/g;-><init>(Lq6/h;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    iput v0, p0, Lq6/h;->h:I

    .line 89
    .line 90
    iget-object v1, p0, Lq6/h;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 91
    .line 92
    iget-object v1, v1, Lq6/e;->c:[I

    .line 93
    .line 94
    aget v1, v1, v0

    .line 95
    .line 96
    iget-object v2, p0, Lq6/n;->a:Lq6/o;

    .line 97
    .line 98
    iget v2, v2, Lq6/l;->j:I

    .line 99
    .line 100
    invoke-static {v1, v2}, Lo9/e;->j(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iget-object v2, p0, Lq6/n;->c:[I

    .line 105
    .line 106
    aput v1, v2, v0

    .line 107
    .line 108
    iput v3, p0, Lq6/h;->j:F

    .line 109
    .line 110
    iget-object v0, p0, Lq6/h;->d:Landroid/animation/ObjectAnimator;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lq6/h;->k:Lq6/c;

    .line 3
    .line 4
    return-void
.end method
