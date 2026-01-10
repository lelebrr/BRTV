.class public final Ly1/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MyApplication"


# instance fields
.field public a:Z

.field public final b:Landroid/graphics/Matrix;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/graphics/Matrix;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Ly1/j;

.field public final synthetic g:Ly1/i;

.field public final synthetic h:Landroidx/transition/ChangeTransform;


# direct methods
.method public constructor <init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Ly1/j;Ly1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/g;->h:Landroidx/transition/ChangeTransform;

    .line 2
    .line 3
    iput-boolean p2, p0, Ly1/g;->c:Z

    .line 4
    .line 5
    iput-object p3, p0, Ly1/g;->d:Landroid/graphics/Matrix;

    .line 6
    .line 7
    iput-object p4, p0, Ly1/g;->e:Landroid/view/View;

    .line 8
    .line 9
    iput-object p5, p0, Ly1/g;->f:Ly1/j;

    .line 10
    .line 11
    iput-object p6, p0, Ly1/g;->g:Ly1/i;

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroid/graphics/Matrix;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Ly1/g;->b:Landroid/graphics/Matrix;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ly1/g;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Ly1/g;->a:Z

    .line 2
    .line 3
    iget-object v0, p0, Ly1/g;->f:Ly1/j;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Ly1/g;->e:Landroid/view/View;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Ly1/g;->c:Z

    .line 11
    .line 12
    const v3, 0x7f0b0435

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Ly1/g;->h:Landroidx/transition/ChangeTransform;

    .line 18
    .line 19
    iget-boolean p1, p1, Landroidx/transition/ChangeTransform;->x:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Ly1/g;->d:Landroid/graphics/Matrix;

    .line 24
    .line 25
    iget-object v4, p0, Ly1/g;->b:Landroid/graphics/Matrix;

    .line 26
    .line 27
    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget-object p1, Landroidx/transition/ChangeTransform;->A:[Ljava/lang/String;

    .line 37
    .line 38
    iget p1, v0, Ly1/j;->a:F

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 41
    .line 42
    .line 43
    iget p1, v0, Ly1/j;->b:F

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 49
    .line 50
    iget p1, v0, Ly1/j;->c:F

    .line 51
    .line 52
    invoke-static {v2, p1}, Ln0/g0;->w(Landroid/view/View;F)V

    .line 53
    .line 54
    .line 55
    iget p1, v0, Ly1/j;->d:F

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 58
    .line 59
    .line 60
    iget p1, v0, Ly1/j;->e:F

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 63
    .line 64
    .line 65
    iget p1, v0, Ly1/j;->f:F

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Landroid/view/View;->setRotationX(F)V

    .line 68
    .line 69
    .line 70
    iget p1, v0, Ly1/j;->g:F

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Landroid/view/View;->setRotationY(F)V

    .line 73
    .line 74
    .line 75
    iget p1, v0, Ly1/j;->h:F

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Landroid/view/View;->setRotation(F)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const p1, 0x7f0b0335

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    sget-object p1, Ly1/g0;->a:Ly1/h0;

    .line 91
    .line 92
    invoke-virtual {p1, v2, v1}, Ly1/h0;->l(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    sget-object p1, Landroidx/transition/ChangeTransform;->A:[Ljava/lang/String;

    .line 99
    .line 100
    iget p1, v0, Ly1/j;->a:F

    .line 101
    .line 102
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 103
    .line 104
    .line 105
    iget p1, v0, Ly1/j;->b:F

    .line 106
    .line 107
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 108
    .line 109
    .line 110
    sget-object p1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 111
    .line 112
    iget p1, v0, Ly1/j;->c:F

    .line 113
    .line 114
    invoke-static {v2, p1}, Ln0/g0;->w(Landroid/view/View;F)V

    .line 115
    .line 116
    .line 117
    iget p1, v0, Ly1/j;->d:F

    .line 118
    .line 119
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 120
    .line 121
    .line 122
    iget p1, v0, Ly1/j;->e:F

    .line 123
    .line 124
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 125
    .line 126
    .line 127
    iget p1, v0, Ly1/j;->f:F

    .line 128
    .line 129
    invoke-virtual {v2, p1}, Landroid/view/View;->setRotationX(F)V

    .line 130
    .line 131
    .line 132
    iget p1, v0, Ly1/j;->g:F

    .line 133
    .line 134
    invoke-virtual {v2, p1}, Landroid/view/View;->setRotationY(F)V

    .line 135
    .line 136
    .line 137
    iget p1, v0, Ly1/j;->h:F

    .line 138
    .line 139
    invoke-virtual {v2, p1}, Landroid/view/View;->setRotation(F)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ly1/g;->g:Ly1/i;

    .line 2
    .line 3
    iget-object p1, p1, Ly1/i;->a:Landroid/graphics/Matrix;

    .line 4
    .line 5
    iget-object v0, p0, Ly1/g;->b:Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0b0435

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Ly1/g;->e:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Ly1/g;->f:Ly1/j;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v0, Landroidx/transition/ChangeTransform;->A:[Ljava/lang/String;

    .line 24
    .line 25
    iget v0, p1, Ly1/j;->a:F

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 28
    .line 29
    .line 30
    iget v0, p1, Ly1/j;->b:F

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 36
    .line 37
    iget v0, p1, Ly1/j;->c:F

    .line 38
    .line 39
    invoke-static {v1, v0}, Ln0/g0;->w(Landroid/view/View;F)V

    .line 40
    .line 41
    .line 42
    iget v0, p1, Ly1/j;->d:F

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 45
    .line 46
    .line 47
    iget v0, p1, Ly1/j;->e:F

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 50
    .line 51
    .line 52
    iget v0, p1, Ly1/j;->f:F

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 55
    .line 56
    .line 57
    iget v0, p1, Ly1/j;->g:F

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 60
    .line 61
    .line 62
    iget p1, p1, Ly1/j;->h:F

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    sget-object p1, Landroidx/transition/ChangeTransform;->A:[Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Ly1/g;->e:Landroid/view/View;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-static {p1, v0}, Ln0/g0;->w(Landroid/view/View;F)V

    .line 15
    .line 16
    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
