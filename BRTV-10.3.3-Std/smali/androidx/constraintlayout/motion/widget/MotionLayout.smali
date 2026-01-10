.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MyApplication"

# interfaces
.implements Ln0/q;


# static fields
.field public static final synthetic A0:I


# instance fields
.field public A:J

.field public B:F

.field public C:F

.field public D:F

.field public E:J

.field public F:F

.field public G:Z

.field public H:Z

.field public I:Lt/w;

.field public J:I

.field public K:Lt/s;

.field public L:Z

.field public final M:Ls/h;

.field public final N:Lt/r;

.field public O:Lt/a;

.field public P:I

.field public Q:I

.field public R:Z

.field public S:F

.field public T:F

.field public U:J

.field public V:F

.field public W:Z

.field public b0:Ljava/util/ArrayList;

.field public c0:Ljava/util/ArrayList;

.field public d0:Ljava/util/ArrayList;

.field public e0:I

.field public f0:J

.field public g0:F

.field public h0:I

.field public i0:F

.field public j0:Z

.field public k0:I

.field public l0:I

.field public m0:I

.field public n0:I

.field public o0:I

.field public p0:I

.field public q:Lt/c0;

.field public q0:F

.field public r:Landroid/view/animation/Interpolator;

.field public final r0:Lt/u;

.field public s:F

.field public s0:Z

.field public t:I

.field public t0:Lt/v;

.field public u:I

.field public u0:Lt/x;

.field public v:I

.field public final v0:Lt/t;

.field public w:I

.field public w0:Z

.field public x:I

.field public final x0:Landroid/graphics/RectF;

.field public y:Z

.field public y0:Landroid/view/View;

.field public final z:Ljava/util/HashMap;

.field public final z0:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 7
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 12
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 13
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 14
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 15
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 16
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 17
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 18
    new-instance v1, Ls/h;

    invoke-direct {v1}, Ls/h;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Ls/h;

    .line 19
    new-instance v1, Lt/r;

    invoke-direct {v1, p0}, Lt/r;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Lt/r;

    .line 20
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Z

    .line 21
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Z

    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Ljava/util/ArrayList;

    .line 23
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    .line 24
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 25
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:I

    const-wide/16 v2, -0x1

    .line 26
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:J

    .line 27
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:F

    .line 28
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:I

    .line 29
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:F

    .line 30
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Z

    .line 31
    new-instance p1, Lt/u;

    invoke-direct {p1}, Lt/u;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Lt/u;

    .line 32
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    .line 33
    sget-object p1, Lt/x;->a:Lt/x;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Lt/x;

    .line 34
    new-instance p1, Lt/t;

    invoke-direct {p1, p0}, Lt/t;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Lt/t;

    .line 35
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Z

    .line 36
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Landroid/graphics/RectF;

    .line 37
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Landroid/view/View;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    const/4 p3, -0x1

    .line 42
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 43
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 44
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    const/4 p3, 0x0

    .line 45
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 46
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 51
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 52
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 53
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 54
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 55
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 56
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 57
    new-instance v0, Ls/h;

    invoke-direct {v0}, Ls/h;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Ls/h;

    .line 58
    new-instance v0, Lt/r;

    invoke-direct {v0, p0}, Lt/r;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Lt/r;

    .line 59
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Z

    .line 60
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Z

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Ljava/util/ArrayList;

    .line 62
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    .line 63
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 64
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:I

    const-wide/16 v1, -0x1

    .line 65
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:J

    .line 66
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:F

    .line 67
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:I

    .line 68
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:F

    .line 69
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Z

    .line 70
    new-instance p1, Lt/u;

    invoke-direct {p1}, Lt/u;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Lt/u;

    .line 71
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    .line 72
    sget-object p1, Lt/x;->a:Lt/x;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Lt/x;

    .line 73
    new-instance p1, Lt/t;

    invoke-direct {p1, p0}, Lt/t;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Lt/t;

    .line 74
    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Z

    .line 75
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Landroid/graphics/RectF;

    .line 76
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Landroid/view/View;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final A(FFI)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 7
    .line 8
    cmpl-float v0, v0, p1

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:J

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 23
    .line 24
    iget-object v2, v1, Lt/c0;->c:Lt/b0;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iget v2, v2, Lt/b0;->h:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget v2, v1, Lt/c0;->j:I

    .line 32
    .line 33
    :goto_0
    int-to-float v2, v2

    .line 34
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 35
    .line 36
    div-float v9, v2, v3

    .line 37
    .line 38
    iput v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 39
    .line 40
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 41
    .line 42
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Ls/h;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    const/high16 v5, 0x3f800000    # 1.0f

    .line 49
    .line 50
    const/4 v6, 0x2

    .line 51
    if-eqz p3, :cond_a

    .line 52
    .line 53
    if-eq p3, v0, :cond_a

    .line 54
    .line 55
    if-eq p3, v6, :cond_a

    .line 56
    .line 57
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Lt/r;

    .line 58
    .line 59
    const/4 v7, 0x4

    .line 60
    if-eq p3, v7, :cond_9

    .line 61
    .line 62
    const/4 v7, 0x5

    .line 63
    if-eq p3, v7, :cond_3

    .line 64
    .line 65
    goto/16 :goto_9

    .line 66
    .line 67
    :cond_3
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 68
    .line 69
    invoke-virtual {v1}, Lt/c0;->f()F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/high16 v7, 0x40000000    # 2.0f

    .line 74
    .line 75
    cmpl-float v8, p2, v4

    .line 76
    .line 77
    if-lez v8, :cond_4

    .line 78
    .line 79
    div-float v8, p2, v1

    .line 80
    .line 81
    mul-float v9, p2, v8

    .line 82
    .line 83
    mul-float v1, v1, v8

    .line 84
    .line 85
    mul-float v1, v1, v8

    .line 86
    .line 87
    div-float/2addr v1, v7

    .line 88
    sub-float/2addr v9, v1

    .line 89
    add-float/2addr v9, p3

    .line 90
    cmpl-float p3, v9, v5

    .line 91
    .line 92
    if-lez p3, :cond_5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    neg-float v5, p2

    .line 96
    div-float/2addr v5, v1

    .line 97
    mul-float v8, p2, v5

    .line 98
    .line 99
    mul-float v1, v1, v5

    .line 100
    .line 101
    mul-float v1, v1, v5

    .line 102
    .line 103
    div-float/2addr v1, v7

    .line 104
    add-float/2addr v1, v8

    .line 105
    add-float/2addr v1, p3

    .line 106
    cmpg-float p3, v1, v4

    .line 107
    .line 108
    if-gez p3, :cond_5

    .line 109
    .line 110
    :goto_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 111
    .line 112
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 113
    .line 114
    invoke-virtual {p3}, Lt/c0;->f()F

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    iput p2, v6, Lt/r;->a:F

    .line 119
    .line 120
    iput p1, v6, Lt/r;->b:F

    .line 121
    .line 122
    iput p3, v6, Lt/r;->c:F

    .line 123
    .line 124
    iput-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 125
    .line 126
    goto/16 :goto_9

    .line 127
    .line 128
    :cond_5
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 129
    .line 130
    iget v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 131
    .line 132
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 133
    .line 134
    invoke-virtual {v1}, Lt/c0;->f()F

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 139
    .line 140
    iget-object v1, v1, Lt/c0;->c:Lt/b0;

    .line 141
    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    iget-object v1, v1, Lt/b0;->l:Lt/o0;

    .line 145
    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    iget v1, v1, Lt/o0;->p:F

    .line 149
    .line 150
    move v9, v1

    .line 151
    goto :goto_2

    .line 152
    :cond_6
    const/4 v9, 0x0

    .line 153
    :goto_2
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Ls/h;

    .line 154
    .line 155
    iput p3, v5, Ls/h;->l:F

    .line 156
    .line 157
    cmpl-float v1, p3, p1

    .line 158
    .line 159
    if-lez v1, :cond_7

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    const/4 v0, 0x0

    .line 163
    :goto_3
    iput-boolean v0, v5, Ls/h;->k:Z

    .line 164
    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    neg-float v6, p2

    .line 168
    sub-float v7, p3, p1

    .line 169
    .line 170
    invoke-virtual/range {v5 .. v10}, Ls/h;->c(FFFFF)V

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_8
    sub-float v7, p1, p3

    .line 175
    .line 176
    move v6, p2

    .line 177
    invoke-virtual/range {v5 .. v10}, Ls/h;->c(FFFFF)V

    .line 178
    .line 179
    .line 180
    :goto_4
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    .line 181
    .line 182
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 183
    .line 184
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 185
    .line 186
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 187
    .line 188
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 189
    .line 190
    goto :goto_9

    .line 191
    :cond_9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 192
    .line 193
    invoke-virtual {v1}, Lt/c0;->f()F

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    iput p2, v6, Lt/r;->a:F

    .line 198
    .line 199
    iput p1, v6, Lt/r;->b:F

    .line 200
    .line 201
    iput p3, v6, Lt/r;->c:F

    .line 202
    .line 203
    iput-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 204
    .line 205
    goto :goto_9

    .line 206
    :cond_a
    if-ne p3, v0, :cond_b

    .line 207
    .line 208
    const/4 p1, 0x0

    .line 209
    goto :goto_5

    .line 210
    :cond_b
    if-ne p3, v6, :cond_c

    .line 211
    .line 212
    const/high16 p1, 0x3f800000    # 1.0f

    .line 213
    .line 214
    :cond_c
    :goto_5
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 215
    .line 216
    invoke-virtual {v1}, Lt/c0;->f()F

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 221
    .line 222
    iget-object v1, v1, Lt/c0;->c:Lt/b0;

    .line 223
    .line 224
    if-eqz v1, :cond_d

    .line 225
    .line 226
    iget-object v1, v1, Lt/b0;->l:Lt/o0;

    .line 227
    .line 228
    if-eqz v1, :cond_d

    .line 229
    .line 230
    iget v1, v1, Lt/o0;->p:F

    .line 231
    .line 232
    move v8, v1

    .line 233
    goto :goto_6

    .line 234
    :cond_d
    const/4 v8, 0x0

    .line 235
    :goto_6
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:Ls/h;

    .line 236
    .line 237
    iput p3, v4, Ls/h;->l:F

    .line 238
    .line 239
    cmpl-float v1, p3, p1

    .line 240
    .line 241
    if-lez v1, :cond_e

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_e
    const/4 v0, 0x0

    .line 245
    :goto_7
    iput-boolean v0, v4, Ls/h;->k:Z

    .line 246
    .line 247
    if-eqz v0, :cond_f

    .line 248
    .line 249
    neg-float v5, p2

    .line 250
    sub-float v6, p3, p1

    .line 251
    .line 252
    invoke-virtual/range {v4 .. v9}, Ls/h;->c(FFFFF)V

    .line 253
    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_f
    sub-float v6, p1, p3

    .line 257
    .line 258
    move v5, p2

    .line 259
    invoke-virtual/range {v4 .. v9}, Ls/h;->c(FFFFF)V

    .line 260
    .line 261
    .line 262
    :goto_8
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 263
    .line 264
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 265
    .line 266
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 267
    .line 268
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 269
    .line 270
    :goto_9
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Z

    .line 271
    .line 272
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 273
    .line 274
    .line 275
    move-result-wide p1

    .line 276
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:J

    .line 277
    .line 278
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public final B(I)V
    .locals 14

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lt/v;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lt/v;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 19
    .line 20
    iput p1, v0, Lt/v;->d:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_b

    .line 28
    .line 29
    iget-object v0, v0, Lt/c0;->b:Lc6/b;

    .line 30
    .line 31
    if-eqz v0, :cond_b

    .line 32
    .line 33
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 34
    .line 35
    int-to-float v4, v1

    .line 36
    iget-object v0, v0, Lc6/b;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ly/k;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    move v3, p1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    iget-object v5, v0, Ly/k;->b:Ljava/util/ArrayList;

    .line 51
    .line 52
    iget v0, v0, Ly/k;->c:I

    .line 53
    .line 54
    const/high16 v6, -0x40800000    # -1.0f

    .line 55
    .line 56
    cmpl-float v6, v4, v6

    .line 57
    .line 58
    if-eqz v6, :cond_8

    .line 59
    .line 60
    if-nez v6, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    move-object v6, v2

    .line 68
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_6

    .line 73
    .line 74
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Ly/l;

    .line 79
    .line 80
    invoke-virtual {v7, v4, v4}, Ly/l;->a(FF)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_4

    .line 85
    .line 86
    iget v6, v7, Ly/l;->e:I

    .line 87
    .line 88
    if-ne v3, v6, :cond_5

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    move-object v6, v7

    .line 92
    goto :goto_0

    .line 93
    :cond_6
    if-eqz v6, :cond_7

    .line 94
    .line 95
    iget v3, v6, Ly/l;->e:I

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_7
    move v3, v0

    .line 99
    goto :goto_2

    .line 100
    :cond_8
    :goto_1
    if-ne v0, v3, :cond_9

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_7

    .line 112
    .line 113
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Ly/l;

    .line 118
    .line 119
    iget v5, v5, Ly/l;->e:I

    .line 120
    .line 121
    if-ne v3, v5, :cond_a

    .line 122
    .line 123
    :goto_2
    if-eq v3, v1, :cond_b

    .line 124
    .line 125
    move p1, v3

    .line 126
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 127
    .line 128
    if-ne v0, p1, :cond_c

    .line 129
    .line 130
    goto/16 :goto_c

    .line 131
    .line 132
    :cond_c
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    if-ne v3, p1, :cond_d

    .line 136
    .line 137
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o(F)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_c

    .line 141
    .line 142
    :cond_d
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 143
    .line 144
    const/high16 v5, 0x3f800000    # 1.0f

    .line 145
    .line 146
    if-ne v3, p1, :cond_e

    .line 147
    .line 148
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o(F)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_c

    .line 152
    .line 153
    :cond_e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 154
    .line 155
    if-eq v0, v1, :cond_f

    .line 156
    .line 157
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z(II)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o(F)V

    .line 161
    .line 162
    .line 163
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 164
    .line 165
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o(F)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_c

    .line 169
    .line 170
    :cond_f
    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 172
    .line 173
    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 174
    .line 175
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 176
    .line 177
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 180
    .line 181
    .line 182
    move-result-wide v6

    .line 183
    iput-wide v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:J

    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 186
    .line 187
    .line 188
    move-result-wide v6

    .line 189
    iput-wide v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:J

    .line 190
    .line 191
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Z

    .line 192
    .line 193
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 194
    .line 195
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 196
    .line 197
    iget-object v6, v3, Lt/c0;->c:Lt/b0;

    .line 198
    .line 199
    if-eqz v6, :cond_10

    .line 200
    .line 201
    iget v6, v6, Lt/b0;->h:I

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_10
    iget v6, v3, Lt/c0;->j:I

    .line 205
    .line 206
    :goto_3
    int-to-float v6, v6

    .line 207
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 208
    .line 209
    div-float/2addr v6, v7

    .line 210
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 211
    .line 212
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 213
    .line 214
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 215
    .line 216
    invoke-virtual {v3, v1, v6}, Lt/c0;->k(II)V

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 220
    .line 221
    invoke-virtual {v1}, Lt/c0;->g()I

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Ljava/util/HashMap;

    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 231
    .line 232
    .line 233
    const/4 v6, 0x0

    .line 234
    :goto_4
    if-ge v6, v1, :cond_11

    .line 235
    .line 236
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    new-instance v8, Lt/o;

    .line 241
    .line 242
    invoke-direct {v8, v7}, Lt/o;-><init>(Landroid/view/View;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    add-int/lit8 v6, v6, 0x1

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_11
    const/4 v6, 0x1

    .line 252
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 253
    .line 254
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 255
    .line 256
    invoke-virtual {v7, p1}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Lt/t;

    .line 261
    .line 262
    invoke-virtual {v7, v2, p1}, Lt/t;->d(Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7}, Lt/t;->a()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    const/4 v2, 0x0

    .line 276
    :goto_5
    if-ge v2, p1, :cond_14

    .line 277
    .line 278
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    check-cast v8, Lt/o;

    .line 287
    .line 288
    if-nez v8, :cond_12

    .line 289
    .line 290
    goto/16 :goto_7

    .line 291
    .line 292
    :cond_12
    iget-object v9, v8, Lt/o;->d:Lt/y;

    .line 293
    .line 294
    iput v4, v9, Lt/y;->c:F

    .line 295
    .line 296
    iput v4, v9, Lt/y;->d:F

    .line 297
    .line 298
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    .line 299
    .line 300
    .line 301
    move-result v10

    .line 302
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    .line 303
    .line 304
    .line 305
    move-result v11

    .line 306
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 307
    .line 308
    .line 309
    move-result v12

    .line 310
    int-to-float v12, v12

    .line 311
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 312
    .line 313
    .line 314
    move-result v13

    .line 315
    int-to-float v13, v13

    .line 316
    iput v10, v9, Lt/y;->e:F

    .line 317
    .line 318
    iput v11, v9, Lt/y;->f:F

    .line 319
    .line 320
    iput v12, v9, Lt/y;->g:F

    .line 321
    .line 322
    iput v13, v9, Lt/y;->h:F

    .line 323
    .line 324
    iget-object v8, v8, Lt/o;->f:Lt/n;

    .line 325
    .line 326
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    .line 330
    .line 331
    .line 332
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    .line 333
    .line 334
    .line 335
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 336
    .line 337
    .line 338
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 339
    .line 340
    .line 341
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    iput v9, v8, Lt/n;->c:I

    .line 346
    .line 347
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 348
    .line 349
    .line 350
    move-result v9

    .line 351
    if-eqz v9, :cond_13

    .line 352
    .line 353
    const/4 v9, 0x0

    .line 354
    goto :goto_6

    .line 355
    :cond_13
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    .line 356
    .line 357
    .line 358
    move-result v9

    .line 359
    :goto_6
    iput v9, v8, Lt/n;->a:F

    .line 360
    .line 361
    invoke-virtual {v7}, Landroid/view/View;->getElevation()F

    .line 362
    .line 363
    .line 364
    move-result v9

    .line 365
    iput v9, v8, Lt/n;->d:F

    .line 366
    .line 367
    invoke-virtual {v7}, Landroid/view/View;->getRotation()F

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    iput v9, v8, Lt/n;->e:F

    .line 372
    .line 373
    invoke-virtual {v7}, Landroid/view/View;->getRotationX()F

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    iput v9, v8, Lt/n;->f:F

    .line 378
    .line 379
    invoke-virtual {v7}, Landroid/view/View;->getRotationY()F

    .line 380
    .line 381
    .line 382
    move-result v9

    .line 383
    iput v9, v8, Lt/n;->g:F

    .line 384
    .line 385
    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    .line 386
    .line 387
    .line 388
    move-result v9

    .line 389
    iput v9, v8, Lt/n;->h:F

    .line 390
    .line 391
    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    .line 392
    .line 393
    .line 394
    move-result v9

    .line 395
    iput v9, v8, Lt/n;->i:F

    .line 396
    .line 397
    invoke-virtual {v7}, Landroid/view/View;->getPivotX()F

    .line 398
    .line 399
    .line 400
    move-result v9

    .line 401
    iput v9, v8, Lt/n;->j:F

    .line 402
    .line 403
    invoke-virtual {v7}, Landroid/view/View;->getPivotY()F

    .line 404
    .line 405
    .line 406
    move-result v9

    .line 407
    iput v9, v8, Lt/n;->k:F

    .line 408
    .line 409
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    .line 410
    .line 411
    .line 412
    move-result v9

    .line 413
    iput v9, v8, Lt/n;->l:F

    .line 414
    .line 415
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    .line 416
    .line 417
    .line 418
    move-result v9

    .line 419
    iput v9, v8, Lt/n;->m:F

    .line 420
    .line 421
    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    iput v7, v8, Lt/n;->n:F

    .line 426
    .line 427
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 428
    .line 429
    goto/16 :goto_5

    .line 430
    .line 431
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 432
    .line 433
    .line 434
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 435
    .line 436
    .line 437
    const/4 p1, 0x0

    .line 438
    :goto_8
    if-ge p1, v1, :cond_15

    .line 439
    .line 440
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    check-cast v2, Lt/o;

    .line 449
    .line 450
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 451
    .line 452
    invoke-virtual {v7, v2}, Lt/c0;->e(Lt/o;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 456
    .line 457
    .line 458
    move-result-wide v7

    .line 459
    invoke-virtual {v2, v7, v8}, Lt/o;->e(J)V

    .line 460
    .line 461
    .line 462
    add-int/lit8 p1, p1, 0x1

    .line 463
    .line 464
    goto :goto_8

    .line 465
    :cond_15
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 466
    .line 467
    iget-object p1, p1, Lt/c0;->c:Lt/b0;

    .line 468
    .line 469
    if-eqz p1, :cond_16

    .line 470
    .line 471
    iget p1, p1, Lt/b0;->i:F

    .line 472
    .line 473
    goto :goto_9

    .line 474
    :cond_16
    const/4 p1, 0x0

    .line 475
    :goto_9
    cmpl-float v2, p1, v4

    .line 476
    .line 477
    if-eqz v2, :cond_18

    .line 478
    .line 479
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 480
    .line 481
    .line 482
    const v7, -0x800001

    .line 483
    .line 484
    .line 485
    const/4 v8, 0x0

    .line 486
    :goto_a
    if-ge v8, v1, :cond_17

    .line 487
    .line 488
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 489
    .line 490
    .line 491
    move-result-object v9

    .line 492
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v9

    .line 496
    check-cast v9, Lt/o;

    .line 497
    .line 498
    iget-object v9, v9, Lt/o;->e:Lt/y;

    .line 499
    .line 500
    iget v10, v9, Lt/y;->e:F

    .line 501
    .line 502
    iget v9, v9, Lt/y;->f:F

    .line 503
    .line 504
    add-float/2addr v9, v10

    .line 505
    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    .line 510
    .line 511
    .line 512
    move-result v7

    .line 513
    add-int/lit8 v8, v8, 0x1

    .line 514
    .line 515
    goto :goto_a

    .line 516
    :cond_17
    :goto_b
    if-ge v0, v1, :cond_18

    .line 517
    .line 518
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 519
    .line 520
    .line 521
    move-result-object v8

    .line 522
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v8

    .line 526
    check-cast v8, Lt/o;

    .line 527
    .line 528
    iget-object v9, v8, Lt/o;->e:Lt/y;

    .line 529
    .line 530
    iget v10, v9, Lt/y;->e:F

    .line 531
    .line 532
    iget v9, v9, Lt/y;->f:F

    .line 533
    .line 534
    sub-float v11, v5, p1

    .line 535
    .line 536
    div-float v11, v5, v11

    .line 537
    .line 538
    iput v11, v8, Lt/o;->l:F

    .line 539
    .line 540
    add-float/2addr v10, v9

    .line 541
    sub-float/2addr v10, v2

    .line 542
    mul-float v10, v10, p1

    .line 543
    .line 544
    sub-float v9, v7, v2

    .line 545
    .line 546
    div-float/2addr v10, v9

    .line 547
    sub-float v9, p1, v10

    .line 548
    .line 549
    iput v9, v8, Lt/o;->k:F

    .line 550
    .line 551
    add-int/lit8 v0, v0, 0x1

    .line 552
    .line 553
    goto :goto_b

    .line 554
    :cond_18
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 555
    .line 556
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 557
    .line 558
    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 559
    .line 560
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 561
    .line 562
    .line 563
    :goto_c
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroid/view/View;II[II)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 10
    .line 11
    if-eqz v4, :cond_12

    .line 12
    .line 13
    iget-object v4, v4, Lt/c0;->c:Lt/b0;

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    iget-boolean v5, v4, Lt/b0;->o:Z

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const/4 v6, -0x1

    .line 25
    if-nez v5, :cond_2

    .line 26
    .line 27
    iget-object v5, v4, Lt/b0;->l:Lt/o0;

    .line 28
    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    iget v5, v5, Lt/o0;->e:I

    .line 32
    .line 33
    if-eq v5, v6, :cond_2

    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eq v7, v5, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 43
    .line 44
    const/high16 v7, 0x3f800000    # 1.0f

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    if-eqz v5, :cond_5

    .line 49
    .line 50
    iget-object v5, v5, Lt/c0;->c:Lt/b0;

    .line 51
    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    iget-object v5, v5, Lt/b0;->l:Lt/o0;

    .line 55
    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    iget-boolean v5, v5, Lt/o0;->r:Z

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 v5, 0x0

    .line 62
    :goto_0
    if-eqz v5, :cond_5

    .line 63
    .line 64
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 65
    .line 66
    cmpl-float v10, v5, v7

    .line 67
    .line 68
    if-eqz v10, :cond_4

    .line 69
    .line 70
    cmpl-float v5, v5, v8

    .line 71
    .line 72
    if-nez v5, :cond_5

    .line 73
    .line 74
    :cond_4
    invoke-virtual {v1, v6}, Landroid/view/View;->canScrollVertically(I)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    return-void

    .line 81
    :cond_5
    iget-object v4, v4, Lt/b0;->l:Lt/o0;

    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    if-eqz v4, :cond_b

    .line 85
    .line 86
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 87
    .line 88
    iget-object v4, v4, Lt/c0;->c:Lt/b0;

    .line 89
    .line 90
    iget-object v4, v4, Lt/b0;->l:Lt/o0;

    .line 91
    .line 92
    iget v6, v4, Lt/o0;->t:I

    .line 93
    .line 94
    and-int/2addr v6, v5

    .line 95
    if-eqz v6, :cond_b

    .line 96
    .line 97
    int-to-float v6, v2

    .line 98
    int-to-float v10, v3

    .line 99
    iget-object v11, v4, Lt/o0;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 100
    .line 101
    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    iget v13, v4, Lt/o0;->d:I

    .line 106
    .line 107
    iget v15, v4, Lt/o0;->h:F

    .line 108
    .line 109
    iget v11, v4, Lt/o0;->g:F

    .line 110
    .line 111
    iget-object v12, v4, Lt/o0;->l:[F

    .line 112
    .line 113
    iget-object v7, v4, Lt/o0;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 114
    .line 115
    move-object/from16 v17, v12

    .line 116
    .line 117
    move-object v12, v7

    .line 118
    move/from16 v16, v11

    .line 119
    .line 120
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s(IFFF[F)V

    .line 121
    .line 122
    .line 123
    iget v7, v4, Lt/o0;->i:F

    .line 124
    .line 125
    iget-object v11, v4, Lt/o0;->l:[F

    .line 126
    .line 127
    const v12, 0x33d6bf95    # 1.0E-7f

    .line 128
    .line 129
    .line 130
    cmpl-float v13, v7, v8

    .line 131
    .line 132
    if-eqz v13, :cond_7

    .line 133
    .line 134
    aget v4, v11, v9

    .line 135
    .line 136
    cmpl-float v4, v4, v8

    .line 137
    .line 138
    if-nez v4, :cond_6

    .line 139
    .line 140
    aput v12, v11, v9

    .line 141
    .line 142
    :cond_6
    mul-float v6, v6, v7

    .line 143
    .line 144
    aget v4, v11, v9

    .line 145
    .line 146
    div-float/2addr v6, v4

    .line 147
    goto :goto_1

    .line 148
    :cond_7
    aget v6, v11, v5

    .line 149
    .line 150
    cmpl-float v6, v6, v8

    .line 151
    .line 152
    if-nez v6, :cond_8

    .line 153
    .line 154
    aput v12, v11, v5

    .line 155
    .line 156
    :cond_8
    iget v4, v4, Lt/o0;->j:F

    .line 157
    .line 158
    mul-float v10, v10, v4

    .line 159
    .line 160
    aget v4, v11, v5

    .line 161
    .line 162
    div-float v6, v10, v4

    .line 163
    .line 164
    :goto_1
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 165
    .line 166
    cmpg-float v7, v4, v8

    .line 167
    .line 168
    if-gtz v7, :cond_9

    .line 169
    .line 170
    cmpg-float v7, v6, v8

    .line 171
    .line 172
    if-ltz v7, :cond_a

    .line 173
    .line 174
    :cond_9
    const/high16 v7, 0x3f800000    # 1.0f

    .line 175
    .line 176
    cmpl-float v4, v4, v7

    .line 177
    .line 178
    if-ltz v4, :cond_b

    .line 179
    .line 180
    cmpl-float v4, v6, v8

    .line 181
    .line 182
    if-lez v4, :cond_b

    .line 183
    .line 184
    :cond_a
    invoke-virtual {v1, v9}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 185
    .line 186
    .line 187
    new-instance v2, Lt/q;

    .line 188
    .line 189
    move-object v3, v1

    .line 190
    check-cast v3, Landroid/view/ViewGroup;

    .line 191
    .line 192
    invoke-direct {v2, v3}, Lt/q;-><init>(Landroid/view/ViewGroup;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_b
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 202
    .line 203
    .line 204
    move-result-wide v6

    .line 205
    int-to-float v4, v2

    .line 206
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:F

    .line 207
    .line 208
    int-to-float v10, v3

    .line 209
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:F

    .line 210
    .line 211
    iget-wide v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:J

    .line 212
    .line 213
    sub-long v11, v6, v11

    .line 214
    .line 215
    long-to-double v11, v11

    .line 216
    const-wide v13, 0x3e112e0be826d695L    # 1.0E-9

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    mul-double v11, v11, v13

    .line 222
    .line 223
    double-to-float v11, v11

    .line 224
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:F

    .line 225
    .line 226
    iput-wide v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:J

    .line 227
    .line 228
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 229
    .line 230
    iget-object v6, v6, Lt/c0;->c:Lt/b0;

    .line 231
    .line 232
    if-eqz v6, :cond_f

    .line 233
    .line 234
    iget-object v6, v6, Lt/b0;->l:Lt/o0;

    .line 235
    .line 236
    if-eqz v6, :cond_f

    .line 237
    .line 238
    iget-object v7, v6, Lt/o0;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 239
    .line 240
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 241
    .line 242
    .line 243
    move-result v15

    .line 244
    iget-boolean v11, v6, Lt/o0;->k:Z

    .line 245
    .line 246
    if-nez v11, :cond_c

    .line 247
    .line 248
    iput-boolean v5, v6, Lt/o0;->k:Z

    .line 249
    .line 250
    invoke-virtual {v7, v15}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 251
    .line 252
    .line 253
    :cond_c
    iget v12, v6, Lt/o0;->d:I

    .line 254
    .line 255
    iget v14, v6, Lt/o0;->h:F

    .line 256
    .line 257
    iget v13, v6, Lt/o0;->g:F

    .line 258
    .line 259
    iget-object v11, v6, Lt/o0;->l:[F

    .line 260
    .line 261
    iget-object v8, v6, Lt/o0;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 262
    .line 263
    move-object/from16 v16, v11

    .line 264
    .line 265
    move-object v11, v8

    .line 266
    move v8, v13

    .line 267
    move v13, v15

    .line 268
    move/from16 v18, v15

    .line 269
    .line 270
    move v15, v8

    .line 271
    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s(IFFF[F)V

    .line 272
    .line 273
    .line 274
    iget v8, v6, Lt/o0;->i:F

    .line 275
    .line 276
    iget-object v11, v6, Lt/o0;->l:[F

    .line 277
    .line 278
    aget v12, v11, v9

    .line 279
    .line 280
    mul-float v8, v8, v12

    .line 281
    .line 282
    iget v12, v6, Lt/o0;->j:F

    .line 283
    .line 284
    aget v13, v11, v5

    .line 285
    .line 286
    mul-float v12, v12, v13

    .line 287
    .line 288
    add-float/2addr v12, v8

    .line 289
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    float-to-double v12, v8

    .line 294
    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    cmpg-double v8, v12, v14

    .line 300
    .line 301
    if-gez v8, :cond_d

    .line 302
    .line 303
    const v8, 0x3c23d70a    # 0.01f

    .line 304
    .line 305
    .line 306
    aput v8, v11, v9

    .line 307
    .line 308
    aput v8, v11, v5

    .line 309
    .line 310
    :cond_d
    iget v8, v6, Lt/o0;->i:F

    .line 311
    .line 312
    const/4 v12, 0x0

    .line 313
    cmpl-float v13, v8, v12

    .line 314
    .line 315
    if-eqz v13, :cond_e

    .line 316
    .line 317
    mul-float v4, v4, v8

    .line 318
    .line 319
    aget v6, v11, v9

    .line 320
    .line 321
    div-float/2addr v4, v6

    .line 322
    goto :goto_2

    .line 323
    :cond_e
    iget v4, v6, Lt/o0;->j:F

    .line 324
    .line 325
    mul-float v10, v10, v4

    .line 326
    .line 327
    aget v4, v11, v5

    .line 328
    .line 329
    div-float v4, v10, v4

    .line 330
    .line 331
    :goto_2
    add-float v15, v18, v4

    .line 332
    .line 333
    const/high16 v4, 0x3f800000    # 1.0f

    .line 334
    .line 335
    invoke-static {v15, v4}, Ljava/lang/Math;->min(FF)F

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    const/4 v6, 0x0

    .line 340
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    cmpl-float v6, v4, v6

    .line 349
    .line 350
    if-eqz v6, :cond_f

    .line 351
    .line 352
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 353
    .line 354
    .line 355
    :cond_f
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 356
    .line 357
    cmpl-float v1, v1, v4

    .line 358
    .line 359
    if-eqz v1, :cond_10

    .line 360
    .line 361
    aput v2, p4, v9

    .line 362
    .line 363
    aput v3, p4, v5

    .line 364
    .line 365
    :cond_10
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->p(Z)V

    .line 366
    .line 367
    .line 368
    aget v1, p4, v9

    .line 369
    .line 370
    if-nez v1, :cond_11

    .line 371
    .line 372
    aget v1, p4, v5

    .line 373
    .line 374
    if-eqz v1, :cond_12

    .line 375
    .line 376
    :cond_11
    iput-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Z

    .line 377
    .line 378
    :cond_12
    :goto_3
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->p(Z)V

    .line 7
    .line 8
    .line 9
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    and-int/2addr v3, v4

    .line 21
    const/high16 v5, 0x41300000    # 11.0f

    .line 22
    .line 23
    const/high16 v6, 0x41200000    # 10.0f

    .line 24
    .line 25
    if-ne v3, v4, :cond_7

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_7

    .line 32
    .line 33
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:I

    .line 34
    .line 35
    add-int/2addr v3, v4

    .line 36
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:I

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v7

    .line 42
    iget-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:J

    .line 43
    .line 44
    const-wide/16 v11, -0x1

    .line 45
    .line 46
    cmp-long v3, v9, v11

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    sub-long v9, v7, v9

    .line 51
    .line 52
    const-wide/32 v11, 0xbebc200

    .line 53
    .line 54
    .line 55
    cmp-long v3, v9, v11

    .line 56
    .line 57
    if-lez v3, :cond_2

    .line 58
    .line 59
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:I

    .line 60
    .line 61
    int-to-float v3, v3

    .line 62
    long-to-float v9, v9

    .line 63
    const v10, 0x3089705f    # 1.0E-9f

    .line 64
    .line 65
    .line 66
    mul-float v9, v9, v10

    .line 67
    .line 68
    div-float/2addr v3, v9

    .line 69
    const/high16 v9, 0x42c80000    # 100.0f

    .line 70
    .line 71
    mul-float v3, v3, v9

    .line 72
    .line 73
    float-to-int v3, v3

    .line 74
    int-to-float v3, v3

    .line 75
    div-float/2addr v3, v9

    .line 76
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:F

    .line 77
    .line 78
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:I

    .line 79
    .line 80
    iput-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:J

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iput-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:J

    .line 84
    .line 85
    :cond_2
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    .line 86
    .line 87
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 88
    .line 89
    .line 90
    const/high16 v7, 0x42280000    # 42.0f

    .line 91
    .line 92
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 100
    .line 101
    mul-float v7, v7, v8

    .line 102
    .line 103
    float-to-int v7, v7

    .line 104
    int-to-float v7, v7

    .line 105
    div-float/2addr v7, v6

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:F

    .line 112
    .line 113
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v9, " fps "

    .line 117
    .line 118
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 122
    .line 123
    const-string v10, "UNDEFINED"

    .line 124
    .line 125
    const/4 v11, -0x1

    .line 126
    if-ne v9, v11, :cond_3

    .line 127
    .line 128
    move-object v9, v10

    .line 129
    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    :goto_1
    const-string v12, " -> "

    .line 143
    .line 144
    invoke-static {v8, v9, v12}, La/e;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-static {v8}, Lea/q;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 153
    .line 154
    if-ne v9, v11, :cond_4

    .line 155
    .line 156
    move-object v9, v10

    .line 157
    goto :goto_2

    .line 158
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v9, " (progress: "

    .line 174
    .line 175
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v7, " ) state="

    .line 182
    .line 183
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 187
    .line 188
    if-ne v7, v11, :cond_5

    .line 189
    .line 190
    const-string v7, "undefined"

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_5
    if-ne v7, v11, :cond_6

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    :goto_3
    move-object v7, v10

    .line 209
    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    const/high16 v8, -0x1000000

    .line 217
    .line 218
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    add-int/lit8 v8, v8, -0x1d

    .line 226
    .line 227
    int-to-float v8, v8

    .line 228
    invoke-virtual {v1, v7, v5, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    .line 230
    .line 231
    const v8, -0x77ff78

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    add-int/lit8 v8, v8, -0x1e

    .line 242
    .line 243
    int-to-float v8, v8

    .line 244
    invoke-virtual {v1, v7, v6, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    .line 246
    .line 247
    :cond_7
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 248
    .line 249
    if-le v3, v4, :cond_31

    .line 250
    .line 251
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Lt/s;

    .line 252
    .line 253
    if-nez v3, :cond_8

    .line 254
    .line 255
    new-instance v3, Lt/s;

    .line 256
    .line 257
    invoke-direct {v3, v0}, Lt/s;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 258
    .line 259
    .line 260
    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Lt/s;

    .line 261
    .line 262
    :cond_8
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:Lt/s;

    .line 263
    .line 264
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Ljava/util/HashMap;

    .line 265
    .line 266
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 267
    .line 268
    iget-object v9, v8, Lt/c0;->c:Lt/b0;

    .line 269
    .line 270
    if-eqz v9, :cond_9

    .line 271
    .line 272
    iget v8, v9, Lt/b0;->h:I

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_9
    iget v8, v8, Lt/c0;->j:I

    .line 276
    .line 277
    :goto_5
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 278
    .line 279
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    if-eqz v7, :cond_31

    .line 283
    .line 284
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    .line 285
    .line 286
    .line 287
    move-result v10

    .line 288
    if-nez v10, :cond_a

    .line 289
    .line 290
    goto/16 :goto_1c

    .line 291
    .line 292
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 293
    .line 294
    .line 295
    iget-object v10, v3, Lt/s;->n:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 296
    .line 297
    invoke-virtual {v10}, Landroid/view/View;->isInEditMode()Z

    .line 298
    .line 299
    .line 300
    move-result v11

    .line 301
    iget-object v12, v3, Lt/s;->e:Landroid/graphics/Paint;

    .line 302
    .line 303
    const/4 v13, 0x2

    .line 304
    if-nez v11, :cond_b

    .line 305
    .line 306
    and-int/lit8 v11, v9, 0x1

    .line 307
    .line 308
    if-ne v11, v13, :cond_b

    .line 309
    .line 310
    new-instance v11, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 316
    .line 317
    .line 318
    move-result-object v14

    .line 319
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    iget v15, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 324
    .line 325
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v14, ":"

    .line 333
    .line 334
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 338
    .line 339
    .line 340
    move-result v14

    .line 341
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 349
    .line 350
    .line 351
    move-result v14

    .line 352
    add-int/lit8 v14, v14, -0x1e

    .line 353
    .line 354
    int-to-float v14, v14

    .line 355
    iget-object v15, v3, Lt/s;->h:Landroid/graphics/Paint;

    .line 356
    .line 357
    invoke-virtual {v1, v11, v6, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    add-int/lit8 v6, v6, -0x1d

    .line 365
    .line 366
    int-to-float v6, v6

    .line 367
    invoke-virtual {v1, v11, v5, v6, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 368
    .line 369
    .line 370
    :cond_b
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    if-eqz v6, :cond_30

    .line 383
    .line 384
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    check-cast v6, Lt/o;

    .line 389
    .line 390
    iget-object v7, v6, Lt/o;->d:Lt/y;

    .line 391
    .line 392
    iget v7, v7, Lt/y;->b:I

    .line 393
    .line 394
    iget-object v10, v6, Lt/o;->s:Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 397
    .line 398
    .line 399
    move-result-object v11

    .line 400
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 401
    .line 402
    .line 403
    move-result v14

    .line 404
    if-eqz v14, :cond_c

    .line 405
    .line 406
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v14

    .line 410
    check-cast v14, Lt/y;

    .line 411
    .line 412
    iget v14, v14, Lt/y;->b:I

    .line 413
    .line 414
    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    .line 415
    .line 416
    .line 417
    move-result v7

    .line 418
    goto :goto_7

    .line 419
    :cond_c
    iget-object v11, v6, Lt/o;->e:Lt/y;

    .line 420
    .line 421
    iget v11, v11, Lt/y;->b:I

    .line 422
    .line 423
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    .line 424
    .line 425
    .line 426
    move-result v7

    .line 427
    if-lez v9, :cond_d

    .line 428
    .line 429
    if-nez v7, :cond_d

    .line 430
    .line 431
    const/4 v7, 0x1

    .line 432
    :cond_d
    if-nez v7, :cond_e

    .line 433
    .line 434
    goto :goto_6

    .line 435
    :cond_e
    iget-object v11, v6, Lt/o;->d:Lt/y;

    .line 436
    .line 437
    iget-object v14, v3, Lt/s;->c:[F

    .line 438
    .line 439
    if-eqz v14, :cond_11

    .line 440
    .line 441
    iget-object v15, v6, Lt/o;->h:[Lr4/b;

    .line 442
    .line 443
    aget-object v15, v15, v2

    .line 444
    .line 445
    invoke-virtual {v15}, Lr4/b;->w()[D

    .line 446
    .line 447
    .line 448
    move-result-object v15

    .line 449
    iget-object v13, v3, Lt/s;->b:[I

    .line 450
    .line 451
    if-eqz v13, :cond_f

    .line 452
    .line 453
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 454
    .line 455
    .line 456
    move-result-object v16

    .line 457
    const/16 v17, 0x0

    .line 458
    .line 459
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 460
    .line 461
    .line 462
    move-result v18

    .line 463
    if-eqz v18, :cond_f

    .line 464
    .line 465
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v18

    .line 469
    check-cast v18, Lt/y;

    .line 470
    .line 471
    add-int/lit8 v19, v17, 0x1

    .line 472
    .line 473
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    aput v2, v13, v17

    .line 477
    .line 478
    move/from16 v17, v19

    .line 479
    .line 480
    goto :goto_8

    .line 481
    :cond_f
    const/4 v4, 0x0

    .line 482
    const/4 v13, 0x0

    .line 483
    :goto_9
    array-length v2, v15

    .line 484
    if-ge v13, v2, :cond_10

    .line 485
    .line 486
    iget-object v2, v6, Lt/o;->h:[Lr4/b;

    .line 487
    .line 488
    const/16 v17, 0x0

    .line 489
    .line 490
    aget-object v2, v2, v17

    .line 491
    .line 492
    move/from16 v18, v9

    .line 493
    .line 494
    move-object/from16 v19, v10

    .line 495
    .line 496
    aget-wide v9, v15, v13

    .line 497
    .line 498
    iget-object v0, v6, Lt/o;->n:[D

    .line 499
    .line 500
    invoke-virtual {v2, v9, v10, v0}, Lr4/b;->r(D[D)V

    .line 501
    .line 502
    .line 503
    iget-object v0, v6, Lt/o;->m:[I

    .line 504
    .line 505
    iget-object v2, v6, Lt/o;->n:[D

    .line 506
    .line 507
    invoke-virtual {v11, v0, v2, v14, v4}, Lt/y;->c([I[D[FI)V

    .line 508
    .line 509
    .line 510
    add-int/lit8 v4, v4, 0x2

    .line 511
    .line 512
    add-int/lit8 v13, v13, 0x1

    .line 513
    .line 514
    move-object/from16 v0, p0

    .line 515
    .line 516
    move/from16 v9, v18

    .line 517
    .line 518
    move-object/from16 v10, v19

    .line 519
    .line 520
    goto :goto_9

    .line 521
    :cond_10
    move/from16 v18, v9

    .line 522
    .line 523
    move-object/from16 v19, v10

    .line 524
    .line 525
    div-int/lit8 v0, v4, 0x2

    .line 526
    .line 527
    goto :goto_a

    .line 528
    :cond_11
    move/from16 v18, v9

    .line 529
    .line 530
    move-object/from16 v19, v10

    .line 531
    .line 532
    const/4 v0, 0x0

    .line 533
    :goto_a
    iput v0, v3, Lt/s;->k:I

    .line 534
    .line 535
    const/4 v0, 0x1

    .line 536
    if-lt v7, v0, :cond_2f

    .line 537
    .line 538
    div-int/lit8 v0, v8, 0x10

    .line 539
    .line 540
    iget-object v2, v3, Lt/s;->a:[F

    .line 541
    .line 542
    if-eqz v2, :cond_12

    .line 543
    .line 544
    array-length v2, v2

    .line 545
    mul-int/lit8 v4, v0, 0x2

    .line 546
    .line 547
    if-eq v2, v4, :cond_13

    .line 548
    .line 549
    :cond_12
    mul-int/lit8 v2, v0, 0x2

    .line 550
    .line 551
    new-array v2, v2, [F

    .line 552
    .line 553
    iput-object v2, v3, Lt/s;->a:[F

    .line 554
    .line 555
    new-instance v2, Landroid/graphics/Path;

    .line 556
    .line 557
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 558
    .line 559
    .line 560
    iput-object v2, v3, Lt/s;->d:Landroid/graphics/Path;

    .line 561
    .line 562
    :cond_13
    iget v2, v3, Lt/s;->m:I

    .line 563
    .line 564
    int-to-float v4, v2

    .line 565
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 566
    .line 567
    .line 568
    const/high16 v4, 0x77000000

    .line 569
    .line 570
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 571
    .line 572
    .line 573
    iget-object v9, v3, Lt/s;->i:Landroid/graphics/Paint;

    .line 574
    .line 575
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 576
    .line 577
    .line 578
    iget-object v10, v3, Lt/s;->f:Landroid/graphics/Paint;

    .line 579
    .line 580
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 581
    .line 582
    .line 583
    iget-object v13, v3, Lt/s;->g:Landroid/graphics/Paint;

    .line 584
    .line 585
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 586
    .line 587
    .line 588
    iget-object v4, v3, Lt/s;->a:[F

    .line 589
    .line 590
    add-int/lit8 v14, v0, -0x1

    .line 591
    .line 592
    int-to-float v14, v14

    .line 593
    const/high16 v15, 0x3f800000    # 1.0f

    .line 594
    .line 595
    div-float v14, v15, v14

    .line 596
    .line 597
    iget-object v15, v6, Lt/o;->w:Ljava/util/HashMap;

    .line 598
    .line 599
    move-object/from16 v21, v5

    .line 600
    .line 601
    const-string v5, "translationX"

    .line 602
    .line 603
    if-nez v15, :cond_14

    .line 604
    .line 605
    move/from16 v22, v8

    .line 606
    .line 607
    const/4 v15, 0x0

    .line 608
    goto :goto_b

    .line 609
    :cond_14
    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v15

    .line 613
    check-cast v15, Lt/h0;

    .line 614
    .line 615
    move/from16 v22, v8

    .line 616
    .line 617
    :goto_b
    iget-object v8, v6, Lt/o;->w:Ljava/util/HashMap;

    .line 618
    .line 619
    move/from16 v23, v2

    .line 620
    .line 621
    const-string v2, "translationY"

    .line 622
    .line 623
    if-nez v8, :cond_15

    .line 624
    .line 625
    move-object/from16 v24, v13

    .line 626
    .line 627
    const/4 v8, 0x0

    .line 628
    goto :goto_c

    .line 629
    :cond_15
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v8

    .line 633
    check-cast v8, Lt/h0;

    .line 634
    .line 635
    move-object/from16 v24, v13

    .line 636
    .line 637
    :goto_c
    iget-object v13, v6, Lt/o;->x:Ljava/util/HashMap;

    .line 638
    .line 639
    if-nez v13, :cond_16

    .line 640
    .line 641
    const/4 v5, 0x0

    .line 642
    goto :goto_d

    .line 643
    :cond_16
    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v5

    .line 647
    check-cast v5, Lt/i;

    .line 648
    .line 649
    :goto_d
    iget-object v13, v6, Lt/o;->x:Ljava/util/HashMap;

    .line 650
    .line 651
    if-nez v13, :cond_17

    .line 652
    .line 653
    const/4 v2, 0x0

    .line 654
    goto :goto_e

    .line 655
    :cond_17
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    check-cast v2, Lt/i;

    .line 660
    .line 661
    :goto_e
    const/4 v13, 0x0

    .line 662
    :goto_f
    const/high16 v25, 0x7fc00000    # Float.NaN

    .line 663
    .line 664
    const/16 v26, 0x0

    .line 665
    .line 666
    if-ge v13, v0, :cond_27

    .line 667
    .line 668
    move/from16 v27, v0

    .line 669
    .line 670
    int-to-float v0, v13

    .line 671
    mul-float v0, v0, v14

    .line 672
    .line 673
    move/from16 v28, v14

    .line 674
    .line 675
    iget v14, v6, Lt/o;->l:F

    .line 676
    .line 677
    const/high16 v20, 0x3f800000    # 1.0f

    .line 678
    .line 679
    cmpl-float v29, v14, v20

    .line 680
    .line 681
    if-eqz v29, :cond_1a

    .line 682
    .line 683
    move-object/from16 v29, v9

    .line 684
    .line 685
    iget v9, v6, Lt/o;->k:F

    .line 686
    .line 687
    cmpg-float v30, v0, v9

    .line 688
    .line 689
    if-gez v30, :cond_18

    .line 690
    .line 691
    const/4 v0, 0x0

    .line 692
    :cond_18
    cmpl-float v30, v0, v9

    .line 693
    .line 694
    if-lez v30, :cond_19

    .line 695
    .line 696
    move/from16 v30, v7

    .line 697
    .line 698
    move-object/from16 v31, v8

    .line 699
    .line 700
    float-to-double v7, v0

    .line 701
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    .line 702
    .line 703
    cmpg-double v34, v7, v32

    .line 704
    .line 705
    if-gez v34, :cond_1b

    .line 706
    .line 707
    sub-float/2addr v0, v9

    .line 708
    mul-float v0, v0, v14

    .line 709
    .line 710
    goto :goto_10

    .line 711
    :cond_19
    move/from16 v30, v7

    .line 712
    .line 713
    move-object/from16 v31, v8

    .line 714
    .line 715
    goto :goto_10

    .line 716
    :cond_1a
    move/from16 v30, v7

    .line 717
    .line 718
    move-object/from16 v31, v8

    .line 719
    .line 720
    move-object/from16 v29, v9

    .line 721
    .line 722
    :cond_1b
    :goto_10
    float-to-double v7, v0

    .line 723
    iget-object v9, v11, Lt/y;->a:Ls/e;

    .line 724
    .line 725
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 726
    .line 727
    .line 728
    move-result-object v14

    .line 729
    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 730
    .line 731
    .line 732
    move-result v32

    .line 733
    if-eqz v32, :cond_1e

    .line 734
    .line 735
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v32

    .line 739
    move-wide/from16 v33, v7

    .line 740
    .line 741
    move-object/from16 v7, v32

    .line 742
    .line 743
    check-cast v7, Lt/y;

    .line 744
    .line 745
    iget-object v8, v7, Lt/y;->a:Ls/e;

    .line 746
    .line 747
    if-eqz v8, :cond_1d

    .line 748
    .line 749
    move-object/from16 v32, v8

    .line 750
    .line 751
    iget v8, v7, Lt/y;->c:F

    .line 752
    .line 753
    cmpg-float v35, v8, v0

    .line 754
    .line 755
    if-gez v35, :cond_1c

    .line 756
    .line 757
    move/from16 v26, v8

    .line 758
    .line 759
    move-object/from16 v9, v32

    .line 760
    .line 761
    goto :goto_12

    .line 762
    :cond_1c
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->isNaN(F)Z

    .line 763
    .line 764
    .line 765
    move-result v8

    .line 766
    if-eqz v8, :cond_1d

    .line 767
    .line 768
    iget v7, v7, Lt/y;->c:F

    .line 769
    .line 770
    move/from16 v25, v7

    .line 771
    .line 772
    :cond_1d
    :goto_12
    move-wide/from16 v7, v33

    .line 773
    .line 774
    goto :goto_11

    .line 775
    :cond_1e
    move-wide/from16 v33, v7

    .line 776
    .line 777
    if-eqz v9, :cond_20

    .line 778
    .line 779
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->isNaN(F)Z

    .line 780
    .line 781
    .line 782
    move-result v7

    .line 783
    if-eqz v7, :cond_1f

    .line 784
    .line 785
    const/high16 v25, 0x3f800000    # 1.0f

    .line 786
    .line 787
    :cond_1f
    sub-float v7, v0, v26

    .line 788
    .line 789
    sub-float v25, v25, v26

    .line 790
    .line 791
    div-float v7, v7, v25

    .line 792
    .line 793
    float-to-double v7, v7

    .line 794
    invoke-virtual {v9, v7, v8}, Ls/e;->a(D)D

    .line 795
    .line 796
    .line 797
    move-result-wide v7

    .line 798
    double-to-float v7, v7

    .line 799
    mul-float v7, v7, v25

    .line 800
    .line 801
    add-float v7, v7, v26

    .line 802
    .line 803
    float-to-double v7, v7

    .line 804
    goto :goto_13

    .line 805
    :cond_20
    move-wide/from16 v7, v33

    .line 806
    .line 807
    :goto_13
    iget-object v9, v6, Lt/o;->h:[Lr4/b;

    .line 808
    .line 809
    const/4 v14, 0x0

    .line 810
    aget-object v9, v9, v14

    .line 811
    .line 812
    iget-object v14, v6, Lt/o;->n:[D

    .line 813
    .line 814
    invoke-virtual {v9, v7, v8, v14}, Lr4/b;->r(D[D)V

    .line 815
    .line 816
    .line 817
    iget-object v9, v6, Lt/o;->i:Ls/b;

    .line 818
    .line 819
    if-eqz v9, :cond_21

    .line 820
    .line 821
    iget-object v14, v6, Lt/o;->n:[D

    .line 822
    .line 823
    move-object/from16 v32, v10

    .line 824
    .line 825
    array-length v10, v14

    .line 826
    if-lez v10, :cond_22

    .line 827
    .line 828
    invoke-virtual {v9, v7, v8, v14}, Ls/b;->r(D[D)V

    .line 829
    .line 830
    .line 831
    goto :goto_14

    .line 832
    :cond_21
    move-object/from16 v32, v10

    .line 833
    .line 834
    :cond_22
    :goto_14
    iget-object v7, v6, Lt/o;->m:[I

    .line 835
    .line 836
    iget-object v8, v6, Lt/o;->n:[D

    .line 837
    .line 838
    mul-int/lit8 v9, v13, 0x2

    .line 839
    .line 840
    invoke-virtual {v11, v7, v8, v4, v9}, Lt/y;->c([I[D[FI)V

    .line 841
    .line 842
    .line 843
    if-eqz v5, :cond_23

    .line 844
    .line 845
    aget v7, v4, v9

    .line 846
    .line 847
    invoke-virtual {v5, v0}, Lt/i;->a(F)F

    .line 848
    .line 849
    .line 850
    move-result v8

    .line 851
    add-float/2addr v8, v7

    .line 852
    aput v8, v4, v9

    .line 853
    .line 854
    goto :goto_15

    .line 855
    :cond_23
    if-eqz v15, :cond_24

    .line 856
    .line 857
    aget v7, v4, v9

    .line 858
    .line 859
    invoke-virtual {v15, v0}, Lt/h0;->a(F)F

    .line 860
    .line 861
    .line 862
    move-result v8

    .line 863
    add-float/2addr v8, v7

    .line 864
    aput v8, v4, v9

    .line 865
    .line 866
    :cond_24
    :goto_15
    if-eqz v2, :cond_26

    .line 867
    .line 868
    add-int/lit8 v9, v9, 0x1

    .line 869
    .line 870
    aget v7, v4, v9

    .line 871
    .line 872
    invoke-virtual {v2, v0}, Lt/i;->a(F)F

    .line 873
    .line 874
    .line 875
    move-result v0

    .line 876
    add-float/2addr v0, v7

    .line 877
    aput v0, v4, v9

    .line 878
    .line 879
    :cond_25
    move-object/from16 v8, v31

    .line 880
    .line 881
    goto :goto_16

    .line 882
    :cond_26
    if-eqz v31, :cond_25

    .line 883
    .line 884
    add-int/lit8 v9, v9, 0x1

    .line 885
    .line 886
    aget v7, v4, v9

    .line 887
    .line 888
    move-object/from16 v8, v31

    .line 889
    .line 890
    invoke-virtual {v8, v0}, Lt/h0;->a(F)F

    .line 891
    .line 892
    .line 893
    move-result v0

    .line 894
    add-float/2addr v0, v7

    .line 895
    aput v0, v4, v9

    .line 896
    .line 897
    :goto_16
    add-int/lit8 v13, v13, 0x1

    .line 898
    .line 899
    move/from16 v0, v27

    .line 900
    .line 901
    move/from16 v14, v28

    .line 902
    .line 903
    move-object/from16 v9, v29

    .line 904
    .line 905
    move/from16 v7, v30

    .line 906
    .line 907
    move-object/from16 v10, v32

    .line 908
    .line 909
    goto/16 :goto_f

    .line 910
    .line 911
    :cond_27
    move/from16 v30, v7

    .line 912
    .line 913
    move-object/from16 v29, v9

    .line 914
    .line 915
    move-object/from16 v32, v10

    .line 916
    .line 917
    iget v0, v3, Lt/s;->k:I

    .line 918
    .line 919
    move/from16 v4, v30

    .line 920
    .line 921
    invoke-virtual {v3, v1, v4, v0, v6}, Lt/s;->a(Landroid/graphics/Canvas;IILt/o;)V

    .line 922
    .line 923
    .line 924
    const/16 v0, -0x55cd

    .line 925
    .line 926
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 927
    .line 928
    .line 929
    const v0, -0x1f8a66

    .line 930
    .line 931
    .line 932
    move-object/from16 v2, v32

    .line 933
    .line 934
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 935
    .line 936
    .line 937
    move-object/from16 v2, v29

    .line 938
    .line 939
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 940
    .line 941
    .line 942
    const v0, -0xcc5600

    .line 943
    .line 944
    .line 945
    move-object/from16 v2, v24

    .line 946
    .line 947
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 948
    .line 949
    .line 950
    move/from16 v0, v23

    .line 951
    .line 952
    neg-int v0, v0

    .line 953
    int-to-float v0, v0

    .line 954
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 955
    .line 956
    .line 957
    iget v0, v3, Lt/s;->k:I

    .line 958
    .line 959
    invoke-virtual {v3, v1, v4, v0, v6}, Lt/s;->a(Landroid/graphics/Canvas;IILt/o;)V

    .line 960
    .line 961
    .line 962
    const/4 v0, 0x5

    .line 963
    if-ne v4, v0, :cond_2e

    .line 964
    .line 965
    iget-object v2, v3, Lt/s;->d:Landroid/graphics/Path;

    .line 966
    .line 967
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 968
    .line 969
    .line 970
    const/4 v2, 0x0

    .line 971
    :goto_17
    const/16 v4, 0x32

    .line 972
    .line 973
    if-gt v2, v4, :cond_2d

    .line 974
    .line 975
    int-to-float v5, v2

    .line 976
    int-to-float v4, v4

    .line 977
    div-float/2addr v5, v4

    .line 978
    const/4 v4, 0x0

    .line 979
    invoke-virtual {v6, v4, v5}, Lt/o;->a([FF)F

    .line 980
    .line 981
    .line 982
    move-result v5

    .line 983
    iget-object v7, v6, Lt/o;->h:[Lr4/b;

    .line 984
    .line 985
    const/4 v8, 0x0

    .line 986
    aget-object v7, v7, v8

    .line 987
    .line 988
    float-to-double v8, v5

    .line 989
    iget-object v5, v6, Lt/o;->n:[D

    .line 990
    .line 991
    invoke-virtual {v7, v8, v9, v5}, Lr4/b;->r(D[D)V

    .line 992
    .line 993
    .line 994
    iget-object v5, v6, Lt/o;->m:[I

    .line 995
    .line 996
    iget-object v7, v6, Lt/o;->n:[D

    .line 997
    .line 998
    iget v8, v11, Lt/y;->e:F

    .line 999
    .line 1000
    iget v9, v11, Lt/y;->f:F

    .line 1001
    .line 1002
    iget v10, v11, Lt/y;->g:F

    .line 1003
    .line 1004
    iget v13, v11, Lt/y;->h:F

    .line 1005
    .line 1006
    const/4 v14, 0x0

    .line 1007
    :goto_18
    array-length v15, v5

    .line 1008
    const/4 v4, 0x4

    .line 1009
    if-ge v14, v15, :cond_2c

    .line 1010
    .line 1011
    aget-wide v0, v7, v14

    .line 1012
    .line 1013
    double-to-float v0, v0

    .line 1014
    aget v1, v5, v14

    .line 1015
    .line 1016
    const/4 v15, 0x1

    .line 1017
    if-eq v1, v15, :cond_2b

    .line 1018
    .line 1019
    const/4 v15, 0x2

    .line 1020
    if-eq v1, v15, :cond_2a

    .line 1021
    .line 1022
    const/4 v15, 0x3

    .line 1023
    if-eq v1, v15, :cond_29

    .line 1024
    .line 1025
    if-eq v1, v4, :cond_28

    .line 1026
    .line 1027
    goto :goto_19

    .line 1028
    :cond_28
    move v13, v0

    .line 1029
    goto :goto_19

    .line 1030
    :cond_29
    move v10, v0

    .line 1031
    goto :goto_19

    .line 1032
    :cond_2a
    move v9, v0

    .line 1033
    goto :goto_19

    .line 1034
    :cond_2b
    move v8, v0

    .line 1035
    :goto_19
    add-int/lit8 v14, v14, 0x1

    .line 1036
    .line 1037
    move-object/from16 v1, p1

    .line 1038
    .line 1039
    const/4 v0, 0x5

    .line 1040
    const/4 v4, 0x0

    .line 1041
    goto :goto_18

    .line 1042
    :cond_2c
    add-float/2addr v10, v8

    .line 1043
    add-float/2addr v13, v9

    .line 1044
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->isNaN(F)Z

    .line 1045
    .line 1046
    .line 1047
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->isNaN(F)Z

    .line 1048
    .line 1049
    .line 1050
    add-float v8, v8, v26

    .line 1051
    .line 1052
    add-float v9, v9, v26

    .line 1053
    .line 1054
    add-float v10, v10, v26

    .line 1055
    .line 1056
    add-float v13, v13, v26

    .line 1057
    .line 1058
    iget-object v0, v3, Lt/s;->j:[F

    .line 1059
    .line 1060
    const/4 v1, 0x0

    .line 1061
    aput v8, v0, v1

    .line 1062
    .line 1063
    const/4 v5, 0x1

    .line 1064
    aput v9, v0, v5

    .line 1065
    .line 1066
    const/4 v7, 0x2

    .line 1067
    aput v10, v0, v7

    .line 1068
    .line 1069
    const/4 v7, 0x3

    .line 1070
    aput v9, v0, v7

    .line 1071
    .line 1072
    aput v10, v0, v4

    .line 1073
    .line 1074
    const/4 v7, 0x5

    .line 1075
    aput v13, v0, v7

    .line 1076
    .line 1077
    const/4 v7, 0x6

    .line 1078
    aput v8, v0, v7

    .line 1079
    .line 1080
    const/4 v10, 0x7

    .line 1081
    aput v13, v0, v10

    .line 1082
    .line 1083
    iget-object v13, v3, Lt/s;->d:Landroid/graphics/Path;

    .line 1084
    .line 1085
    invoke-virtual {v13, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1086
    .line 1087
    .line 1088
    iget-object v8, v3, Lt/s;->d:Landroid/graphics/Path;

    .line 1089
    .line 1090
    const/4 v9, 0x2

    .line 1091
    aget v13, v0, v9

    .line 1092
    .line 1093
    const/4 v14, 0x3

    .line 1094
    aget v14, v0, v14

    .line 1095
    .line 1096
    invoke-virtual {v8, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1097
    .line 1098
    .line 1099
    iget-object v8, v3, Lt/s;->d:Landroid/graphics/Path;

    .line 1100
    .line 1101
    aget v4, v0, v4

    .line 1102
    .line 1103
    const/4 v13, 0x5

    .line 1104
    aget v14, v0, v13

    .line 1105
    .line 1106
    invoke-virtual {v8, v4, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1107
    .line 1108
    .line 1109
    iget-object v4, v3, Lt/s;->d:Landroid/graphics/Path;

    .line 1110
    .line 1111
    aget v7, v0, v7

    .line 1112
    .line 1113
    aget v0, v0, v10

    .line 1114
    .line 1115
    invoke-virtual {v4, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1116
    .line 1117
    .line 1118
    iget-object v0, v3, Lt/s;->d:Landroid/graphics/Path;

    .line 1119
    .line 1120
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1121
    .line 1122
    .line 1123
    add-int/lit8 v2, v2, 0x1

    .line 1124
    .line 1125
    move-object/from16 v1, p1

    .line 1126
    .line 1127
    const/4 v0, 0x5

    .line 1128
    goto/16 :goto_17

    .line 1129
    .line 1130
    :cond_2d
    const/4 v1, 0x0

    .line 1131
    const/4 v5, 0x1

    .line 1132
    const/4 v9, 0x2

    .line 1133
    const/high16 v0, 0x44000000    # 512.0f

    .line 1134
    .line 1135
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1136
    .line 1137
    .line 1138
    const/high16 v0, 0x40000000    # 2.0f

    .line 1139
    .line 1140
    move-object/from16 v2, p1

    .line 1141
    .line 1142
    invoke-virtual {v2, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1143
    .line 1144
    .line 1145
    iget-object v0, v3, Lt/s;->d:Landroid/graphics/Path;

    .line 1146
    .line 1147
    invoke-virtual {v2, v0, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1148
    .line 1149
    .line 1150
    const/high16 v0, -0x40000000    # -2.0f

    .line 1151
    .line 1152
    invoke-virtual {v2, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1153
    .line 1154
    .line 1155
    const/high16 v0, -0x10000

    .line 1156
    .line 1157
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1158
    .line 1159
    .line 1160
    iget-object v0, v3, Lt/s;->d:Landroid/graphics/Path;

    .line 1161
    .line 1162
    invoke-virtual {v2, v0, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1163
    .line 1164
    .line 1165
    goto :goto_1b

    .line 1166
    :cond_2e
    move-object v2, v1

    .line 1167
    :goto_1a
    const/4 v1, 0x0

    .line 1168
    const/4 v5, 0x1

    .line 1169
    const/4 v9, 0x2

    .line 1170
    goto :goto_1b

    .line 1171
    :cond_2f
    move-object v2, v1

    .line 1172
    move-object/from16 v21, v5

    .line 1173
    .line 1174
    move/from16 v22, v8

    .line 1175
    .line 1176
    goto :goto_1a

    .line 1177
    :goto_1b
    move-object/from16 v0, p0

    .line 1178
    .line 1179
    move-object v1, v2

    .line 1180
    move/from16 v9, v18

    .line 1181
    .line 1182
    move-object/from16 v5, v21

    .line 1183
    .line 1184
    move/from16 v8, v22

    .line 1185
    .line 1186
    const/4 v2, 0x0

    .line 1187
    const/4 v4, 0x1

    .line 1188
    const/4 v13, 0x2

    .line 1189
    goto/16 :goto_6

    .line 1190
    .line 1191
    :cond_30
    move-object v2, v1

    .line 1192
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1193
    .line 1194
    .line 1195
    :cond_31
    :goto_1c
    return-void
.end method

.method public final f(ILandroid/view/View;)V
    .locals 11

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:F

    .line 7
    .line 8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:F

    .line 9
    .line 10
    div-float/2addr p2, v0

    .line 11
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:F

    .line 12
    .line 13
    div-float/2addr v1, v0

    .line 14
    iget-object p1, p1, Lt/c0;->c:Lt/b0;

    .line 15
    .line 16
    if-eqz p1, :cond_6

    .line 17
    .line 18
    iget-object p1, p1, Lt/b0;->l:Lt/o0;

    .line 19
    .line 20
    if-eqz p1, :cond_6

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p1, Lt/o0;->k:Z

    .line 24
    .line 25
    iget-object v2, p1, Lt/o0;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    iget v4, p1, Lt/o0;->d:I

    .line 32
    .line 33
    iget v6, p1, Lt/o0;->h:F

    .line 34
    .line 35
    iget v7, p1, Lt/o0;->g:F

    .line 36
    .line 37
    iget-object v8, p1, Lt/o0;->l:[F

    .line 38
    .line 39
    iget-object v3, p1, Lt/o0;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 40
    .line 41
    move v5, v9

    .line 42
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s(IFFF[F)V

    .line 43
    .line 44
    .line 45
    iget v3, p1, Lt/o0;->i:F

    .line 46
    .line 47
    iget-object v4, p1, Lt/o0;->l:[F

    .line 48
    .line 49
    aget v5, v4, v0

    .line 50
    .line 51
    iget v6, p1, Lt/o0;->j:F

    .line 52
    .line 53
    const/4 v7, 0x1

    .line 54
    aget v4, v4, v7

    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    cmpl-float v10, v3, v8

    .line 58
    .line 59
    if-eqz v10, :cond_1

    .line 60
    .line 61
    mul-float p2, p2, v3

    .line 62
    .line 63
    div-float/2addr p2, v5

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    mul-float v1, v1, v6

    .line 66
    .line 67
    div-float p2, v1, v4

    .line 68
    .line 69
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    const/high16 v1, 0x40400000    # 3.0f

    .line 76
    .line 77
    div-float v1, p2, v1

    .line 78
    .line 79
    add-float/2addr v9, v1

    .line 80
    :cond_2
    cmpl-float v1, v9, v8

    .line 81
    .line 82
    if-eqz v1, :cond_6

    .line 83
    .line 84
    const/high16 v1, 0x3f800000    # 1.0f

    .line 85
    .line 86
    cmpl-float v3, v9, v1

    .line 87
    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const/4 v3, 0x0

    .line 93
    :goto_1
    iget p1, p1, Lt/o0;->c:I

    .line 94
    .line 95
    const/4 v4, 0x3

    .line 96
    if-eq p1, v4, :cond_4

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    :cond_4
    and-int/2addr v0, v3

    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    float-to-double v3, v9

    .line 103
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 104
    .line 105
    cmpg-double v0, v3, v5

    .line 106
    .line 107
    if-gez v0, :cond_5

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    const/high16 v8, 0x3f800000    # 1.0f

    .line 111
    .line 112
    :goto_2
    invoke-virtual {v2, v8, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A(FFI)V

    .line 113
    .line 114
    .line 115
    :cond_6
    return-void
.end method

.method public final g(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Z

    .line 2
    .line 3
    const/4 p6, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    :cond_0
    aget p1, p7, p6

    .line 11
    .line 12
    add-int/2addr p1, p4

    .line 13
    aput p1, p7, p6

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    aget p2, p7, p1

    .line 17
    .line 18
    add-int/2addr p2, p5

    .line 19
    aput p2, p7, p1

    .line 20
    .line 21
    :cond_1
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:Z

    .line 22
    .line 23
    return-void
.end method

.method public getConstraintSetIds()[I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, v0, Lt/c0;->g:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-array v2, v1, [I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    aput v4, v2, v3

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-object v2
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lt/b0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, v0, Lt/c0;->d:Ljava/util/ArrayList;

    .line 8
    .line 9
    return-object v0
.end method

.method public getDesignTool()Lt/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Lt/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lt/a;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Lt/a;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Lt/a;

    .line 13
    .line 14
    return-object v0
.end method

.method public getEndState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 2
    .line 3
    return v0
.end method

.method public getStartState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public getTargetPosition()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 2
    .line 3
    return v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lt/v;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lt/v;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 13
    .line 14
    iget-object v1, v0, Lt/v;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 15
    .line 16
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 17
    .line 18
    iput v2, v0, Lt/v;->d:I

    .line 19
    .line 20
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 21
    .line 22
    iput v2, v0, Lt/v;->c:I

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iput v2, v0, Lt/v;->b:F

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v0, Lt/v;->a:F

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "motion.progress"

    .line 47
    .line 48
    iget v3, v0, Lt/v;->a:F

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 51
    .line 52
    .line 53
    const-string v2, "motion.velocity"

    .line 54
    .line 55
    iget v3, v0, Lt/v;->b:F

    .line 56
    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 58
    .line 59
    .line 60
    const-string v2, "motion.StartState"

    .line 61
    .line 62
    iget v3, v0, Lt/v;->c:I

    .line 63
    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    const-string v2, "motion.EndState"

    .line 68
    .line 69
    iget v0, v0, Lt/v;->d:I

    .line 70
    .line 71
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    return-object v1
.end method

.method public getTransitionTimeMs()J
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v2, v0, Lt/c0;->c:Lt/b0;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget v0, v2, Lt/b0;->h:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, v0, Lt/c0;->j:I

    .line 15
    .line 16
    :goto_0
    int-to-float v0, v0

    .line 17
    div-float/2addr v0, v1

    .line 18
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 19
    .line 20
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 21
    .line 22
    mul-float v0, v0, v1

    .line 23
    .line 24
    float-to-long v0, v0

    .line 25
    return-wide v0
.end method

.method public getVelocity()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    .line 2
    .line 3
    return v0
.end method

.method public final i(Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final j(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p1, Lt/c0;->c:Lt/b0;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p1, Lt/b0;->l:Lt/o0;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget p1, p1, Lt/o0;->t:I

    .line 14
    .line 15
    and-int/lit8 p1, p1, 0x2

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public final l(I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln0/e;

    .line 3
    .line 4
    return-void
.end method

.method public final o(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 7
    .line 8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 9
    .line 10
    cmpl-float v1, v1, v2

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 19
    .line 20
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 21
    .line 22
    cmpl-float v2, v1, p1

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    const/4 v2, 0x0

    .line 28
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 29
    .line 30
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 31
    .line 32
    iget-object v3, v0, Lt/c0;->c:Lt/b0;

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    iget v0, v3, Lt/b0;->h:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    iget v0, v0, Lt/c0;->j:I

    .line 40
    .line 41
    :goto_0
    int-to-float v0, v0

    .line 42
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 43
    .line 44
    div-float/2addr v0, v3

    .line 45
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 51
    .line 52
    invoke-virtual {p1}, Lt/c0;->d()Landroid/view/animation/Interpolator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 57
    .line 58
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Z

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:J

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 68
    .line 69
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 70
    .line 71
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 7
    .line 8
    if-eqz v1, :cond_10

    .line 9
    .line 10
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    if-eq v2, v3, :cond_10

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    iget-object v6, v2, Lt/c0;->g:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-ge v5, v7, :cond_3

    .line 30
    .line 31
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    iget-object v7, v2, Lt/c0;->i:Landroid/util/SparseIntArray;

    .line 36
    .line 37
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    :goto_1
    if-lez v8, :cond_2

    .line 46
    .line 47
    if-ne v8, v6, :cond_0

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    add-int/lit8 v10, v9, -0x1

    .line 51
    .line 52
    if-gez v9, :cond_1

    .line 53
    .line 54
    :goto_2
    const-string v2, "MotionScene"

    .line 55
    .line 56
    const-string v3, "Cannot be derived from yourself"

    .line 57
    .line 58
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :cond_1
    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    move v9, v10

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v2, v6}, Lt/c0;->j(I)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 v2, 0x0

    .line 76
    :goto_3
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-ge v2, v5, :cond_e

    .line 81
    .line 82
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Landroidx/constraintlayout/widget/d;

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    const/4 v8, 0x0

    .line 96
    :goto_4
    if-ge v8, v7, :cond_d

    .line 97
    .line 98
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 107
    .line 108
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    iget-boolean v12, v5, Landroidx/constraintlayout/widget/d;->b:Z

    .line 113
    .line 114
    if-eqz v12, :cond_5

    .line 115
    .line 116
    if-eq v11, v3, :cond_4

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    .line 120
    .line 121
    const-string v2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 122
    .line 123
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v1

    .line 127
    :cond_5
    :goto_5
    iget-object v12, v5, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-nez v13, :cond_6

    .line 138
    .line 139
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    new-instance v14, Landroidx/constraintlayout/widget/c;

    .line 144
    .line 145
    invoke-direct {v14}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    check-cast v12, Landroidx/constraintlayout/widget/c;

    .line 160
    .line 161
    iget-object v13, v12, Landroidx/constraintlayout/widget/c;->d:Ly/d;

    .line 162
    .line 163
    iget-boolean v13, v13, Ly/d;->b:Z

    .line 164
    .line 165
    const/4 v14, 0x1

    .line 166
    if-nez v13, :cond_8

    .line 167
    .line 168
    invoke-virtual {v12, v11, v10}, Landroidx/constraintlayout/widget/c;->b(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    instance-of v10, v9, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 172
    .line 173
    iget-object v11, v12, Landroidx/constraintlayout/widget/c;->d:Ly/d;

    .line 174
    .line 175
    if-eqz v10, :cond_7

    .line 176
    .line 177
    move-object v10, v9

    .line 178
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 179
    .line 180
    invoke-virtual {v10}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    iput-object v10, v11, Ly/d;->e0:[I

    .line 185
    .line 186
    instance-of v10, v9, Landroidx/constraintlayout/widget/Barrier;

    .line 187
    .line 188
    if-eqz v10, :cond_7

    .line 189
    .line 190
    move-object v10, v9

    .line 191
    check-cast v10, Landroidx/constraintlayout/widget/Barrier;

    .line 192
    .line 193
    iget-object v13, v10, Landroidx/constraintlayout/widget/Barrier;->j:Lv/a;

    .line 194
    .line 195
    iget-boolean v13, v13, Lv/a;->j0:Z

    .line 196
    .line 197
    iput-boolean v13, v11, Ly/d;->j0:Z

    .line 198
    .line 199
    invoke-virtual {v10}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    .line 200
    .line 201
    .line 202
    move-result v13

    .line 203
    iput v13, v11, Ly/d;->b0:I

    .line 204
    .line 205
    invoke-virtual {v10}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    iput v10, v11, Ly/d;->c0:I

    .line 210
    .line 211
    :cond_7
    iput-boolean v14, v11, Ly/d;->b:Z

    .line 212
    .line 213
    :cond_8
    iget-object v10, v12, Landroidx/constraintlayout/widget/c;->b:Ly/f;

    .line 214
    .line 215
    iget-boolean v11, v10, Ly/f;->a:Z

    .line 216
    .line 217
    if-nez v11, :cond_9

    .line 218
    .line 219
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    iput v11, v10, Ly/f;->b:I

    .line 224
    .line 225
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    iput v11, v10, Ly/f;->d:F

    .line 230
    .line 231
    iput-boolean v14, v10, Ly/f;->a:Z

    .line 232
    .line 233
    :cond_9
    iget-object v10, v12, Landroidx/constraintlayout/widget/c;->e:Ly/g;

    .line 234
    .line 235
    iget-boolean v11, v10, Ly/g;->a:Z

    .line 236
    .line 237
    if-nez v11, :cond_c

    .line 238
    .line 239
    iput-boolean v14, v10, Ly/g;->a:Z

    .line 240
    .line 241
    invoke-virtual {v9}, Landroid/view/View;->getRotation()F

    .line 242
    .line 243
    .line 244
    move-result v11

    .line 245
    iput v11, v10, Ly/g;->b:F

    .line 246
    .line 247
    invoke-virtual {v9}, Landroid/view/View;->getRotationX()F

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    iput v11, v10, Ly/g;->c:F

    .line 252
    .line 253
    invoke-virtual {v9}, Landroid/view/View;->getRotationY()F

    .line 254
    .line 255
    .line 256
    move-result v11

    .line 257
    iput v11, v10, Ly/g;->d:F

    .line 258
    .line 259
    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    .line 260
    .line 261
    .line 262
    move-result v11

    .line 263
    iput v11, v10, Ly/g;->e:F

    .line 264
    .line 265
    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    .line 266
    .line 267
    .line 268
    move-result v11

    .line 269
    iput v11, v10, Ly/g;->f:F

    .line 270
    .line 271
    invoke-virtual {v9}, Landroid/view/View;->getPivotX()F

    .line 272
    .line 273
    .line 274
    move-result v11

    .line 275
    invoke-virtual {v9}, Landroid/view/View;->getPivotY()F

    .line 276
    .line 277
    .line 278
    move-result v12

    .line 279
    float-to-double v13, v11

    .line 280
    const-wide/16 v15, 0x0

    .line 281
    .line 282
    cmpl-double v17, v13, v15

    .line 283
    .line 284
    if-nez v17, :cond_a

    .line 285
    .line 286
    float-to-double v13, v12

    .line 287
    cmpl-double v17, v13, v15

    .line 288
    .line 289
    if-eqz v17, :cond_b

    .line 290
    .line 291
    :cond_a
    iput v11, v10, Ly/g;->g:F

    .line 292
    .line 293
    iput v12, v10, Ly/g;->h:F

    .line 294
    .line 295
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getTranslationX()F

    .line 296
    .line 297
    .line 298
    move-result v11

    .line 299
    iput v11, v10, Ly/g;->i:F

    .line 300
    .line 301
    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    .line 302
    .line 303
    .line 304
    move-result v11

    .line 305
    iput v11, v10, Ly/g;->j:F

    .line 306
    .line 307
    invoke-virtual {v9}, Landroid/view/View;->getTranslationZ()F

    .line 308
    .line 309
    .line 310
    move-result v11

    .line 311
    iput v11, v10, Ly/g;->k:F

    .line 312
    .line 313
    iget-boolean v11, v10, Ly/g;->l:Z

    .line 314
    .line 315
    if-eqz v11, :cond_c

    .line 316
    .line 317
    invoke-virtual {v9}, Landroid/view/View;->getElevation()F

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    iput v9, v10, Ly/g;->m:F

    .line 322
    .line 323
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 324
    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 328
    .line 329
    goto/16 :goto_3

    .line 330
    .line 331
    :cond_e
    :goto_6
    if-eqz v1, :cond_f

    .line 332
    .line 333
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/d;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 334
    .line 335
    .line 336
    :cond_f
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 337
    .line 338
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 339
    .line 340
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->v()V

    .line 341
    .line 342
    .line 343
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 344
    .line 345
    if-eqz v1, :cond_11

    .line 346
    .line 347
    invoke-virtual {v1}, Lt/v;->a()V

    .line 348
    .line 349
    .line 350
    :cond_11
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, v0, Lt/c0;->c:Lt/b0;

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-boolean v2, v0, Lt/b0;->o:Z

    .line 17
    .line 18
    if-nez v2, :cond_4

    .line 19
    .line 20
    iget-object v0, v0, Lt/b0;->l:Lt/o0;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    new-instance v2, Landroid/graphics/RectF;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0, v2}, Lt/o0;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    return v1

    .line 56
    :cond_1
    iget v0, v0, Lt/o0;->e:I

    .line 57
    .line 58
    const/4 v2, -0x1

    .line 59
    if-eq v0, v2, :cond_4

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Landroid/view/View;

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eq v2, v0, :cond_3

    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Landroid/view/View;

    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Landroid/view/View;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Landroid/graphics/RectF;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    int-to-float v0, v0

    .line 88
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    int-to-float v3, v3

    .line 95
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    int-to-float v4, v4

    .line 102
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    int-to-float v5, v5

    .line 109
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-virtual {v2, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:Landroid/view/View;

    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    invoke-virtual {p0, v2, v2, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_4

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    return p1

    .line 140
    :cond_4
    :goto_0
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sub-int/2addr p4, p2

    .line 18
    sub-int/2addr p5, p3

    .line 19
    :try_start_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:I

    .line 20
    .line 21
    if-ne p1, p4, :cond_1

    .line 22
    .line 23
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:I

    .line 24
    .line 25
    if-eq p1, p5, :cond_2

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->p(Z)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:I

    .line 34
    .line 35
    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    .line 38
    .line 39
    return-void

    .line 40
    :goto_0
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    .line 41
    .line 42
    throw p1
.end method

.method public final onMeasure(II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-ne v3, v1, :cond_2

    .line 20
    .line 21
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 22
    .line 23
    if-eq v3, v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v3, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 29
    :goto_1
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Z

    .line 30
    .line 31
    if-eqz v6, :cond_3

    .line 32
    .line 33
    iput-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Z

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->v()V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w()V

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    :cond_3
    iget-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 43
    .line 44
    if-eqz v6, :cond_4

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    :cond_4
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 48
    .line 49
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 50
    .line 51
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 52
    .line 53
    invoke-virtual {v6}, Lt/c0;->g()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 58
    .line 59
    iget-object v7, v7, Lt/c0;->c:Lt/b0;

    .line 60
    .line 61
    const/4 v8, -0x1

    .line 62
    if-nez v7, :cond_5

    .line 63
    .line 64
    const/4 v7, -0x1

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    iget v7, v7, Lt/b0;->c:I

    .line 67
    .line 68
    :goto_2
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    .line 69
    .line 70
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Lt/t;

    .line 71
    .line 72
    if-nez v3, :cond_6

    .line 73
    .line 74
    iget v3, v10, Lt/t;->e:I

    .line 75
    .line 76
    if-ne v6, v3, :cond_6

    .line 77
    .line 78
    iget v3, v10, Lt/t;->f:I

    .line 79
    .line 80
    if-eq v7, v3, :cond_7

    .line 81
    .line 82
    :cond_6
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 83
    .line 84
    if-eq v3, v8, :cond_7

    .line 85
    .line 86
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 90
    .line 91
    invoke-virtual {v1, v6}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 96
    .line 97
    invoke-virtual {v2, v7}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v10, v1, v2}, Lt/t;->d(Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10}, Lt/t;->e()V

    .line 105
    .line 106
    .line 107
    iput v6, v10, Lt/t;->e:I

    .line 108
    .line 109
    iput v7, v10, Lt/t;->f:I

    .line 110
    .line 111
    const/4 v1, 0x0

    .line 112
    goto :goto_3

    .line 113
    :cond_7
    const/4 v1, 0x1

    .line 114
    :goto_3
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Z

    .line 115
    .line 116
    if-nez v2, :cond_8

    .line 117
    .line 118
    if-eqz v1, :cond_d

    .line 119
    .line 120
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    add-int/2addr v2, v1

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    add-int/2addr v3, v1

    .line 138
    invoke-virtual {v9}, Lv/e;->m()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    add-int/2addr v1, v3

    .line 143
    invoke-virtual {v9}, Lv/e;->j()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    add-int/2addr v3, v2

    .line 148
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:I

    .line 149
    .line 150
    const/high16 v6, -0x80000000

    .line 151
    .line 152
    if-eq v2, v6, :cond_9

    .line 153
    .line 154
    if-nez v2, :cond_a

    .line 155
    .line 156
    :cond_9
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:I

    .line 157
    .line 158
    int-to-float v2, v1

    .line 159
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:F

    .line 160
    .line 161
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:I

    .line 162
    .line 163
    sub-int/2addr v8, v1

    .line 164
    int-to-float v1, v8

    .line 165
    mul-float v7, v7, v1

    .line 166
    .line 167
    add-float/2addr v7, v2

    .line 168
    float-to-int v1, v7

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 170
    .line 171
    .line 172
    :cond_a
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:I

    .line 173
    .line 174
    if-eq v2, v6, :cond_b

    .line 175
    .line 176
    if-nez v2, :cond_c

    .line 177
    .line 178
    :cond_b
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:I

    .line 179
    .line 180
    int-to-float v3, v2

    .line 181
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:F

    .line 182
    .line 183
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    .line 184
    .line 185
    sub-int/2addr v7, v2

    .line 186
    int-to-float v2, v7

    .line 187
    mul-float v6, v6, v2

    .line 188
    .line 189
    add-float/2addr v6, v3

    .line 190
    float-to-int v3, v6

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 192
    .line 193
    .line 194
    :cond_c
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 195
    .line 196
    .line 197
    :cond_d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 198
    .line 199
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 200
    .line 201
    sub-float/2addr v1, v2

    .line 202
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 207
    .line 208
    .line 209
    move-result-wide v2

    .line 210
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 211
    .line 212
    instance-of v7, v6, Ls/h;

    .line 213
    .line 214
    const v8, 0x3089705f    # 1.0E-9f

    .line 215
    .line 216
    .line 217
    const/4 v9, 0x0

    .line 218
    if-nez v7, :cond_e

    .line 219
    .line 220
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:J

    .line 221
    .line 222
    sub-long v10, v2, v10

    .line 223
    .line 224
    long-to-float v7, v10

    .line 225
    mul-float v7, v7, v1

    .line 226
    .line 227
    mul-float v7, v7, v8

    .line 228
    .line 229
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 230
    .line 231
    div-float/2addr v7, v10

    .line 232
    goto :goto_4

    .line 233
    :cond_e
    const/4 v7, 0x0

    .line 234
    :goto_4
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 235
    .line 236
    add-float/2addr v10, v7

    .line 237
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Z

    .line 238
    .line 239
    if-eqz v7, :cond_f

    .line 240
    .line 241
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 242
    .line 243
    :cond_f
    cmpl-float v7, v1, v9

    .line 244
    .line 245
    if-lez v7, :cond_10

    .line 246
    .line 247
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 248
    .line 249
    cmpl-float v11, v10, v11

    .line 250
    .line 251
    if-gez v11, :cond_11

    .line 252
    .line 253
    :cond_10
    cmpg-float v11, v1, v9

    .line 254
    .line 255
    if-gtz v11, :cond_12

    .line 256
    .line 257
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 258
    .line 259
    cmpg-float v11, v10, v11

    .line 260
    .line 261
    if-gtz v11, :cond_12

    .line 262
    .line 263
    :cond_11
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_12
    const/4 v4, 0x0

    .line 267
    :goto_5
    if-eqz v6, :cond_14

    .line 268
    .line 269
    if-nez v4, :cond_14

    .line 270
    .line 271
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 272
    .line 273
    if-eqz v4, :cond_13

    .line 274
    .line 275
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:J

    .line 276
    .line 277
    sub-long/2addr v2, v10

    .line 278
    long-to-float v2, v2

    .line 279
    mul-float v2, v2, v8

    .line 280
    .line 281
    invoke-interface {v6, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 282
    .line 283
    .line 284
    move-result v10

    .line 285
    goto :goto_6

    .line 286
    :cond_13
    invoke-interface {v6, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    :cond_14
    :goto_6
    if-lez v7, :cond_15

    .line 291
    .line 292
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 293
    .line 294
    cmpl-float v2, v10, v2

    .line 295
    .line 296
    if-gez v2, :cond_16

    .line 297
    .line 298
    :cond_15
    cmpg-float v1, v1, v9

    .line 299
    .line 300
    if-gtz v1, :cond_17

    .line 301
    .line 302
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 303
    .line 304
    cmpg-float v1, v10, v1

    .line 305
    .line 306
    if-gtz v1, :cond_17

    .line 307
    .line 308
    :cond_16
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 309
    .line 310
    :cond_17
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:F

    .line 311
    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 317
    .line 318
    .line 319
    move-result-wide v2

    .line 320
    :goto_7
    if-ge v5, v1, :cond_19

    .line 321
    .line 322
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Ljava/util/HashMap;

    .line 327
    .line 328
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    move-object v11, v4

    .line 333
    check-cast v11, Lt/o;

    .line 334
    .line 335
    if-eqz v11, :cond_18

    .line 336
    .line 337
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Lt/u;

    .line 338
    .line 339
    move v12, v10

    .line 340
    move-wide v13, v2

    .line 341
    move-object/from16 v16, v4

    .line 342
    .line 343
    invoke-virtual/range {v11 .. v16}, Lt/o;->c(FJLandroid/view/View;Lt/u;)Z

    .line 344
    .line 345
    .line 346
    :cond_18
    add-int/lit8 v5, v5, 0x1

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_19
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Z

    .line 350
    .line 351
    if-eqz v1, :cond_1a

    .line 352
    .line 353
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 354
    .line 355
    .line 356
    :cond_1a
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-boolean v0, p1, Lt/c0;->o:Z

    .line 10
    .line 11
    iget-object p1, p1, Lt/c0;->c:Lt/b0;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lt/b0;->l:Lt/o0;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lt/o0;->b(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 6
    .line 7
    if-eqz v2, :cond_2e

    .line 8
    .line 9
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    .line 10
    .line 11
    if-eqz v3, :cond_2e

    .line 12
    .line 13
    invoke-virtual {v2}, Lt/c0;->l()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2e

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 20
    .line 21
    iget-object v3, v2, Lt/c0;->c:Lt/b0;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-boolean v3, v3, Lt/b0;->o:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    return v1

    .line 34
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    new-instance v4, Landroid/graphics/RectF;

    .line 39
    .line 40
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v5, v2, Lt/c0;->n:Lt/u;

    .line 44
    .line 45
    iget-object v6, v2, Lt/c0;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 46
    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-object v5, Lt/u;->b:Lt/u;

    .line 53
    .line 54
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    iput-object v7, v5, Lt/u;->a:Ljava/lang/Object;

    .line 59
    .line 60
    iput-object v5, v2, Lt/c0;->n:Lt/u;

    .line 61
    .line 62
    :cond_1
    iget-object v5, v2, Lt/c0;->n:Lt/u;

    .line 63
    .line 64
    iget-object v5, v5, Lt/u;->a:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v5, Landroid/view/VelocityTracker;

    .line 67
    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    const/4 v8, 0x2

    .line 74
    const/4 v11, -0x1

    .line 75
    if-eq v3, v11, :cond_1a

    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    if-eqz v12, :cond_15

    .line 82
    .line 83
    if-eq v12, v8, :cond_3

    .line 84
    .line 85
    goto/16 :goto_b

    .line 86
    .line 87
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    iget v13, v2, Lt/c0;->q:F

    .line 92
    .line 93
    sub-float/2addr v12, v13

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    iget v14, v2, Lt/c0;->p:F

    .line 99
    .line 100
    sub-float/2addr v13, v14

    .line 101
    float-to-double v14, v13

    .line 102
    const-wide/16 v16, 0x0

    .line 103
    .line 104
    cmpl-double v18, v14, v16

    .line 105
    .line 106
    if-nez v18, :cond_4

    .line 107
    .line 108
    float-to-double v14, v12

    .line 109
    cmpl-double v18, v14, v16

    .line 110
    .line 111
    if-eqz v18, :cond_5

    .line 112
    .line 113
    :cond_4
    iget-object v14, v2, Lt/c0;->l:Landroid/view/MotionEvent;

    .line 114
    .line 115
    if-nez v14, :cond_6

    .line 116
    .line 117
    :cond_5
    :goto_0
    const/4 v1, 0x1

    .line 118
    goto/16 :goto_16

    .line 119
    .line 120
    :cond_6
    if-eq v3, v11, :cond_12

    .line 121
    .line 122
    iget-object v15, v2, Lt/c0;->b:Lc6/b;

    .line 123
    .line 124
    if-eqz v15, :cond_7

    .line 125
    .line 126
    invoke-virtual {v15, v3}, Lc6/b;->c(I)I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    if-eq v15, v11, :cond_7

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_7
    move v15, v3

    .line 134
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v8, v2, Lt/c0;->d:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    :cond_8
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v18

    .line 149
    if-eqz v18, :cond_a

    .line 150
    .line 151
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v18

    .line 155
    move-object/from16 v5, v18

    .line 156
    .line 157
    check-cast v5, Lt/b0;

    .line 158
    .line 159
    iget v10, v5, Lt/b0;->d:I

    .line 160
    .line 161
    if-eq v10, v15, :cond_9

    .line 162
    .line 163
    iget v10, v5, Lt/b0;->c:I

    .line 164
    .line 165
    if-ne v10, v15, :cond_8

    .line 166
    .line 167
    :cond_9
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_a
    new-instance v5, Landroid/graphics/RectF;

    .line 172
    .line 173
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    const/4 v8, 0x0

    .line 181
    const/4 v10, 0x0

    .line 182
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    if-eqz v15, :cond_13

    .line 187
    .line 188
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v15

    .line 192
    check-cast v15, Lt/b0;

    .line 193
    .line 194
    iget-boolean v11, v15, Lt/b0;->o:Z

    .line 195
    .line 196
    if-eqz v11, :cond_c

    .line 197
    .line 198
    :cond_b
    move-object/from16 v19, v7

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_c
    iget-object v11, v15, Lt/b0;->l:Lt/o0;

    .line 202
    .line 203
    if-eqz v11, :cond_b

    .line 204
    .line 205
    iget-boolean v9, v2, Lt/c0;->o:Z

    .line 206
    .line 207
    invoke-virtual {v11, v9}, Lt/o0;->b(Z)V

    .line 208
    .line 209
    .line 210
    iget-object v9, v15, Lt/b0;->l:Lt/o0;

    .line 211
    .line 212
    invoke-virtual {v9, v6, v5}, Lt/o0;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    if-eqz v9, :cond_d

    .line 217
    .line 218
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    move-object/from16 v19, v7

    .line 223
    .line 224
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    invoke-virtual {v9, v11, v7}, Landroid/graphics/RectF;->contains(FF)Z

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    if-nez v7, :cond_e

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_d
    move-object/from16 v19, v7

    .line 236
    .line 237
    :cond_e
    iget-object v7, v15, Lt/b0;->l:Lt/o0;

    .line 238
    .line 239
    invoke-virtual {v7, v6, v5}, Lt/o0;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    if-eqz v7, :cond_10

    .line 244
    .line 245
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    .line 250
    .line 251
    .line 252
    move-result v11

    .line 253
    invoke-virtual {v7, v9, v11}, Landroid/graphics/RectF;->contains(FF)Z

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    if-nez v7, :cond_10

    .line 258
    .line 259
    :cond_f
    :goto_4
    move-object/from16 v7, v19

    .line 260
    .line 261
    const/4 v11, -0x1

    .line 262
    goto :goto_3

    .line 263
    :cond_10
    iget-object v7, v15, Lt/b0;->l:Lt/o0;

    .line 264
    .line 265
    iget v9, v7, Lt/o0;->i:F

    .line 266
    .line 267
    mul-float v9, v9, v13

    .line 268
    .line 269
    iget v7, v7, Lt/o0;->j:F

    .line 270
    .line 271
    mul-float v7, v7, v12

    .line 272
    .line 273
    add-float/2addr v7, v9

    .line 274
    iget v9, v15, Lt/b0;->c:I

    .line 275
    .line 276
    if-ne v9, v3, :cond_11

    .line 277
    .line 278
    const/high16 v9, -0x40800000    # -1.0f

    .line 279
    .line 280
    :goto_5
    mul-float v7, v7, v9

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_11
    const v9, 0x3f8ccccd    # 1.1f

    .line 284
    .line 285
    .line 286
    goto :goto_5

    .line 287
    :goto_6
    cmpl-float v9, v7, v8

    .line 288
    .line 289
    if-lez v9, :cond_f

    .line 290
    .line 291
    move v8, v7

    .line 292
    move-object v10, v15

    .line 293
    goto :goto_4

    .line 294
    :cond_12
    iget-object v10, v2, Lt/c0;->c:Lt/b0;

    .line 295
    .line 296
    :cond_13
    if-eqz v10, :cond_1a

    .line 297
    .line 298
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lt/b0;)V

    .line 299
    .line 300
    .line 301
    iget-object v3, v2, Lt/c0;->c:Lt/b0;

    .line 302
    .line 303
    iget-object v3, v3, Lt/b0;->l:Lt/o0;

    .line 304
    .line 305
    invoke-virtual {v3, v6, v4}, Lt/o0;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    if-eqz v3, :cond_14

    .line 310
    .line 311
    iget-object v4, v2, Lt/c0;->l:Landroid/view/MotionEvent;

    .line 312
    .line 313
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    iget-object v5, v2, Lt/c0;->l:Landroid/view/MotionEvent;

    .line 318
    .line 319
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-nez v3, :cond_14

    .line 328
    .line 329
    const/4 v3, 0x1

    .line 330
    goto :goto_7

    .line 331
    :cond_14
    const/4 v3, 0x0

    .line 332
    :goto_7
    iput-boolean v3, v2, Lt/c0;->m:Z

    .line 333
    .line 334
    iget-object v3, v2, Lt/c0;->c:Lt/b0;

    .line 335
    .line 336
    iget-object v3, v3, Lt/b0;->l:Lt/o0;

    .line 337
    .line 338
    iget v4, v2, Lt/c0;->p:F

    .line 339
    .line 340
    iget v5, v2, Lt/c0;->q:F

    .line 341
    .line 342
    iput v4, v3, Lt/o0;->m:F

    .line 343
    .line 344
    iput v5, v3, Lt/o0;->n:F

    .line 345
    .line 346
    const/4 v4, 0x0

    .line 347
    iput-boolean v4, v3, Lt/o0;->k:Z

    .line 348
    .line 349
    goto/16 :goto_b

    .line 350
    .line 351
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    iput v3, v2, Lt/c0;->p:F

    .line 356
    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    iput v3, v2, Lt/c0;->q:F

    .line 362
    .line 363
    iput-object v1, v2, Lt/c0;->l:Landroid/view/MotionEvent;

    .line 364
    .line 365
    iget-object v1, v2, Lt/c0;->c:Lt/b0;

    .line 366
    .line 367
    iget-object v1, v1, Lt/b0;->l:Lt/o0;

    .line 368
    .line 369
    if-eqz v1, :cond_5

    .line 370
    .line 371
    iget v1, v1, Lt/o0;->f:I

    .line 372
    .line 373
    const/4 v3, -0x1

    .line 374
    if-ne v1, v3, :cond_16

    .line 375
    .line 376
    :goto_8
    const/4 v1, 0x0

    .line 377
    goto :goto_9

    .line 378
    :cond_16
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    if-nez v1, :cond_17

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_17
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    int-to-float v3, v3

    .line 390
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    int-to-float v5, v5

    .line 395
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 396
    .line 397
    .line 398
    move-result v7

    .line 399
    int-to-float v7, v7

    .line 400
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    int-to-float v1, v1

    .line 405
    invoke-virtual {v4, v3, v5, v7, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 406
    .line 407
    .line 408
    move-object v1, v4

    .line 409
    :goto_9
    if-eqz v1, :cond_18

    .line 410
    .line 411
    iget-object v3, v2, Lt/c0;->l:Landroid/view/MotionEvent;

    .line 412
    .line 413
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    iget-object v5, v2, Lt/c0;->l:Landroid/view/MotionEvent;

    .line 418
    .line 419
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    invoke-virtual {v1, v3, v5}, Landroid/graphics/RectF;->contains(FF)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-nez v1, :cond_18

    .line 428
    .line 429
    const/4 v1, 0x0

    .line 430
    iput-object v1, v2, Lt/c0;->l:Landroid/view/MotionEvent;

    .line 431
    .line 432
    goto/16 :goto_0

    .line 433
    .line 434
    :cond_18
    iget-object v1, v2, Lt/c0;->c:Lt/b0;

    .line 435
    .line 436
    iget-object v1, v1, Lt/b0;->l:Lt/o0;

    .line 437
    .line 438
    invoke-virtual {v1, v6, v4}, Lt/o0;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    if-eqz v1, :cond_19

    .line 443
    .line 444
    iget-object v3, v2, Lt/c0;->l:Landroid/view/MotionEvent;

    .line 445
    .line 446
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    iget-object v4, v2, Lt/c0;->l:Landroid/view/MotionEvent;

    .line 451
    .line 452
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-nez v1, :cond_19

    .line 461
    .line 462
    const/4 v1, 0x1

    .line 463
    iput-boolean v1, v2, Lt/c0;->m:Z

    .line 464
    .line 465
    goto :goto_a

    .line 466
    :cond_19
    const/4 v1, 0x0

    .line 467
    iput-boolean v1, v2, Lt/c0;->m:Z

    .line 468
    .line 469
    :goto_a
    iget-object v1, v2, Lt/c0;->c:Lt/b0;

    .line 470
    .line 471
    iget-object v1, v1, Lt/b0;->l:Lt/o0;

    .line 472
    .line 473
    iget v3, v2, Lt/c0;->p:F

    .line 474
    .line 475
    iget v2, v2, Lt/c0;->q:F

    .line 476
    .line 477
    iput v3, v1, Lt/o0;->m:F

    .line 478
    .line 479
    iput v2, v1, Lt/o0;->n:F

    .line 480
    .line 481
    goto/16 :goto_0

    .line 482
    .line 483
    :cond_1a
    :goto_b
    iget-object v3, v2, Lt/c0;->c:Lt/b0;

    .line 484
    .line 485
    if-eqz v3, :cond_2d

    .line 486
    .line 487
    iget-object v3, v3, Lt/b0;->l:Lt/o0;

    .line 488
    .line 489
    if-eqz v3, :cond_2d

    .line 490
    .line 491
    iget-boolean v4, v2, Lt/c0;->m:Z

    .line 492
    .line 493
    if-nez v4, :cond_2d

    .line 494
    .line 495
    iget-object v4, v2, Lt/c0;->n:Lt/u;

    .line 496
    .line 497
    iget-object v5, v4, Lt/u;->a:Ljava/lang/Object;

    .line 498
    .line 499
    check-cast v5, Landroid/view/VelocityTracker;

    .line 500
    .line 501
    if-eqz v5, :cond_1b

    .line 502
    .line 503
    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 504
    .line 505
    .line 506
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 507
    .line 508
    .line 509
    move-result v5

    .line 510
    if-eqz v5, :cond_2c

    .line 511
    .line 512
    iget-object v6, v3, Lt/o0;->l:[F

    .line 513
    .line 514
    const/high16 v8, 0x3f800000    # 1.0f

    .line 515
    .line 516
    iget-object v9, v3, Lt/o0;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 517
    .line 518
    const/4 v10, 0x1

    .line 519
    if-eq v5, v10, :cond_24

    .line 520
    .line 521
    const/4 v10, 0x2

    .line 522
    if-eq v5, v10, :cond_1c

    .line 523
    .line 524
    goto/16 :goto_15

    .line 525
    .line 526
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 527
    .line 528
    .line 529
    move-result v5

    .line 530
    iget v10, v3, Lt/o0;->n:F

    .line 531
    .line 532
    sub-float/2addr v5, v10

    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 534
    .line 535
    .line 536
    move-result v10

    .line 537
    iget v11, v3, Lt/o0;->m:F

    .line 538
    .line 539
    sub-float/2addr v10, v11

    .line 540
    iget v11, v3, Lt/o0;->i:F

    .line 541
    .line 542
    mul-float v11, v11, v10

    .line 543
    .line 544
    iget v12, v3, Lt/o0;->j:F

    .line 545
    .line 546
    mul-float v12, v12, v5

    .line 547
    .line 548
    add-float/2addr v12, v11

    .line 549
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 550
    .line 551
    .line 552
    move-result v11

    .line 553
    iget v12, v3, Lt/o0;->u:F

    .line 554
    .line 555
    cmpl-float v11, v11, v12

    .line 556
    .line 557
    if-gtz v11, :cond_1d

    .line 558
    .line 559
    iget-boolean v11, v3, Lt/o0;->k:Z

    .line 560
    .line 561
    if-eqz v11, :cond_2d

    .line 562
    .line 563
    :cond_1d
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 564
    .line 565
    .line 566
    move-result v11

    .line 567
    iget-boolean v12, v3, Lt/o0;->k:Z

    .line 568
    .line 569
    if-nez v12, :cond_1e

    .line 570
    .line 571
    const/4 v12, 0x1

    .line 572
    iput-boolean v12, v3, Lt/o0;->k:Z

    .line 573
    .line 574
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 575
    .line 576
    .line 577
    :cond_1e
    iget v12, v3, Lt/o0;->d:I

    .line 578
    .line 579
    const/4 v13, -0x1

    .line 580
    if-eq v12, v13, :cond_1f

    .line 581
    .line 582
    iget v13, v3, Lt/o0;->h:F

    .line 583
    .line 584
    iget v14, v3, Lt/o0;->g:F

    .line 585
    .line 586
    iget-object v15, v3, Lt/o0;->l:[F

    .line 587
    .line 588
    iget-object v7, v3, Lt/o0;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 589
    .line 590
    move-object/from16 v19, v7

    .line 591
    .line 592
    move/from16 v20, v12

    .line 593
    .line 594
    move/from16 v21, v11

    .line 595
    .line 596
    move/from16 v22, v13

    .line 597
    .line 598
    move/from16 v23, v14

    .line 599
    .line 600
    move-object/from16 v24, v15

    .line 601
    .line 602
    invoke-virtual/range {v19 .. v24}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s(IFFF[F)V

    .line 603
    .line 604
    .line 605
    const/4 v12, 0x0

    .line 606
    const/4 v13, 0x1

    .line 607
    goto :goto_c

    .line 608
    :cond_1f
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 609
    .line 610
    .line 611
    move-result v7

    .line 612
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 613
    .line 614
    .line 615
    move-result v12

    .line 616
    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    .line 617
    .line 618
    .line 619
    move-result v7

    .line 620
    int-to-float v7, v7

    .line 621
    iget v12, v3, Lt/o0;->j:F

    .line 622
    .line 623
    mul-float v12, v12, v7

    .line 624
    .line 625
    const/4 v13, 0x1

    .line 626
    aput v12, v6, v13

    .line 627
    .line 628
    iget v12, v3, Lt/o0;->i:F

    .line 629
    .line 630
    mul-float v7, v7, v12

    .line 631
    .line 632
    const/4 v12, 0x0

    .line 633
    aput v7, v6, v12

    .line 634
    .line 635
    :goto_c
    iget v7, v3, Lt/o0;->i:F

    .line 636
    .line 637
    aget v14, v6, v12

    .line 638
    .line 639
    mul-float v7, v7, v14

    .line 640
    .line 641
    iget v12, v3, Lt/o0;->j:F

    .line 642
    .line 643
    aget v14, v6, v13

    .line 644
    .line 645
    mul-float v12, v12, v14

    .line 646
    .line 647
    add-float/2addr v12, v7

    .line 648
    iget v7, v3, Lt/o0;->s:F

    .line 649
    .line 650
    mul-float v12, v12, v7

    .line 651
    .line 652
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 653
    .line 654
    .line 655
    move-result v7

    .line 656
    float-to-double v12, v7

    .line 657
    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    cmpg-double v7, v12, v14

    .line 663
    .line 664
    if-gez v7, :cond_20

    .line 665
    .line 666
    const v7, 0x3c23d70a    # 0.01f

    .line 667
    .line 668
    .line 669
    const/4 v12, 0x0

    .line 670
    aput v7, v6, v12

    .line 671
    .line 672
    const/4 v13, 0x1

    .line 673
    aput v7, v6, v13

    .line 674
    .line 675
    goto :goto_d

    .line 676
    :cond_20
    const/4 v12, 0x0

    .line 677
    const/4 v13, 0x1

    .line 678
    :goto_d
    iget v7, v3, Lt/o0;->i:F

    .line 679
    .line 680
    const/4 v14, 0x0

    .line 681
    cmpl-float v7, v7, v14

    .line 682
    .line 683
    if-eqz v7, :cond_21

    .line 684
    .line 685
    aget v5, v6, v12

    .line 686
    .line 687
    div-float/2addr v10, v5

    .line 688
    goto :goto_e

    .line 689
    :cond_21
    aget v7, v6, v13

    .line 690
    .line 691
    div-float v10, v5, v7

    .line 692
    .line 693
    :goto_e
    add-float/2addr v11, v10

    .line 694
    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    .line 695
    .line 696
    .line 697
    move-result v5

    .line 698
    invoke-static {v5, v14}, Ljava/lang/Math;->max(FF)F

    .line 699
    .line 700
    .line 701
    move-result v5

    .line 702
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 703
    .line 704
    .line 705
    move-result v7

    .line 706
    cmpl-float v7, v5, v7

    .line 707
    .line 708
    if-eqz v7, :cond_23

    .line 709
    .line 710
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 711
    .line 712
    .line 713
    iget-object v5, v4, Lt/u;->a:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast v5, Landroid/view/VelocityTracker;

    .line 716
    .line 717
    const/16 v7, 0x3e8

    .line 718
    .line 719
    invoke-virtual {v5, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 720
    .line 721
    .line 722
    iget-object v5, v4, Lt/u;->a:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v5, Landroid/view/VelocityTracker;

    .line 725
    .line 726
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 727
    .line 728
    .line 729
    move-result v5

    .line 730
    iget-object v4, v4, Lt/u;->a:Ljava/lang/Object;

    .line 731
    .line 732
    check-cast v4, Landroid/view/VelocityTracker;

    .line 733
    .line 734
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 735
    .line 736
    .line 737
    move-result v4

    .line 738
    iget v7, v3, Lt/o0;->i:F

    .line 739
    .line 740
    const/4 v8, 0x0

    .line 741
    cmpl-float v7, v7, v8

    .line 742
    .line 743
    if-eqz v7, :cond_22

    .line 744
    .line 745
    const/4 v7, 0x0

    .line 746
    aget v4, v6, v7

    .line 747
    .line 748
    div-float/2addr v5, v4

    .line 749
    goto :goto_f

    .line 750
    :cond_22
    const/4 v5, 0x1

    .line 751
    aget v6, v6, v5

    .line 752
    .line 753
    div-float v5, v4, v6

    .line 754
    .line 755
    :goto_f
    iput v5, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    .line 756
    .line 757
    goto :goto_10

    .line 758
    :cond_23
    const/4 v8, 0x0

    .line 759
    iput v8, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    .line 760
    .line 761
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 762
    .line 763
    .line 764
    move-result v4

    .line 765
    iput v4, v3, Lt/o0;->m:F

    .line 766
    .line 767
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 768
    .line 769
    .line 770
    move-result v4

    .line 771
    iput v4, v3, Lt/o0;->n:F

    .line 772
    .line 773
    goto/16 :goto_15

    .line 774
    .line 775
    :cond_24
    const/4 v5, 0x0

    .line 776
    iput-boolean v5, v3, Lt/o0;->k:Z

    .line 777
    .line 778
    iget-object v5, v4, Lt/u;->a:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast v5, Landroid/view/VelocityTracker;

    .line 781
    .line 782
    const/16 v7, 0x3e8

    .line 783
    .line 784
    invoke-virtual {v5, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 785
    .line 786
    .line 787
    iget-object v5, v4, Lt/u;->a:Ljava/lang/Object;

    .line 788
    .line 789
    check-cast v5, Landroid/view/VelocityTracker;

    .line 790
    .line 791
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 792
    .line 793
    .line 794
    move-result v5

    .line 795
    iget-object v4, v4, Lt/u;->a:Ljava/lang/Object;

    .line 796
    .line 797
    check-cast v4, Landroid/view/VelocityTracker;

    .line 798
    .line 799
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 800
    .line 801
    .line 802
    move-result v4

    .line 803
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 804
    .line 805
    .line 806
    move-result v7

    .line 807
    iget v11, v3, Lt/o0;->d:I

    .line 808
    .line 809
    const/4 v10, -0x1

    .line 810
    if-eq v11, v10, :cond_25

    .line 811
    .line 812
    iget v13, v3, Lt/o0;->h:F

    .line 813
    .line 814
    iget v14, v3, Lt/o0;->g:F

    .line 815
    .line 816
    iget-object v15, v3, Lt/o0;->l:[F

    .line 817
    .line 818
    iget-object v10, v3, Lt/o0;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 819
    .line 820
    move v12, v7

    .line 821
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionLayout;->s(IFFF[F)V

    .line 822
    .line 823
    .line 824
    const/4 v11, 0x0

    .line 825
    const/4 v12, 0x1

    .line 826
    goto :goto_11

    .line 827
    :cond_25
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 828
    .line 829
    .line 830
    move-result v10

    .line 831
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 832
    .line 833
    .line 834
    move-result v11

    .line 835
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    .line 836
    .line 837
    .line 838
    move-result v10

    .line 839
    int-to-float v10, v10

    .line 840
    iget v11, v3, Lt/o0;->j:F

    .line 841
    .line 842
    mul-float v11, v11, v10

    .line 843
    .line 844
    const/4 v12, 0x1

    .line 845
    aput v11, v6, v12

    .line 846
    .line 847
    iget v11, v3, Lt/o0;->i:F

    .line 848
    .line 849
    mul-float v10, v10, v11

    .line 850
    .line 851
    const/4 v11, 0x0

    .line 852
    aput v10, v6, v11

    .line 853
    .line 854
    :goto_11
    iget v10, v3, Lt/o0;->i:F

    .line 855
    .line 856
    aget v11, v6, v11

    .line 857
    .line 858
    aget v6, v6, v12

    .line 859
    .line 860
    const/4 v12, 0x0

    .line 861
    cmpl-float v10, v10, v12

    .line 862
    .line 863
    if-eqz v10, :cond_26

    .line 864
    .line 865
    div-float/2addr v5, v11

    .line 866
    goto :goto_12

    .line 867
    :cond_26
    div-float v5, v4, v6

    .line 868
    .line 869
    :goto_12
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 870
    .line 871
    .line 872
    move-result v4

    .line 873
    if-nez v4, :cond_27

    .line 874
    .line 875
    const/high16 v4, 0x40400000    # 3.0f

    .line 876
    .line 877
    div-float v4, v5, v4

    .line 878
    .line 879
    add-float/2addr v4, v7

    .line 880
    goto :goto_13

    .line 881
    :cond_27
    move v4, v7

    .line 882
    :goto_13
    sget-object v6, Lt/x;->d:Lt/x;

    .line 883
    .line 884
    const/4 v10, 0x0

    .line 885
    cmpl-float v11, v4, v10

    .line 886
    .line 887
    if-eqz v11, :cond_2a

    .line 888
    .line 889
    cmpl-float v10, v4, v8

    .line 890
    .line 891
    if-eqz v10, :cond_2a

    .line 892
    .line 893
    iget v3, v3, Lt/o0;->c:I

    .line 894
    .line 895
    const/4 v10, 0x3

    .line 896
    if-eq v3, v10, :cond_2a

    .line 897
    .line 898
    float-to-double v10, v4

    .line 899
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 900
    .line 901
    cmpg-double v4, v10, v12

    .line 902
    .line 903
    if-gez v4, :cond_28

    .line 904
    .line 905
    const/4 v4, 0x0

    .line 906
    goto :goto_14

    .line 907
    :cond_28
    const/high16 v4, 0x3f800000    # 1.0f

    .line 908
    .line 909
    :goto_14
    invoke-virtual {v9, v4, v5, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A(FFI)V

    .line 910
    .line 911
    .line 912
    const/4 v3, 0x0

    .line 913
    cmpl-float v3, v3, v7

    .line 914
    .line 915
    if-gez v3, :cond_29

    .line 916
    .line 917
    cmpg-float v3, v8, v7

    .line 918
    .line 919
    if-gtz v3, :cond_2d

    .line 920
    .line 921
    :cond_29
    invoke-virtual {v9, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 922
    .line 923
    .line 924
    goto :goto_15

    .line 925
    :cond_2a
    const/4 v3, 0x0

    .line 926
    cmpl-float v3, v3, v4

    .line 927
    .line 928
    if-gez v3, :cond_2b

    .line 929
    .line 930
    cmpg-float v3, v8, v4

    .line 931
    .line 932
    if-gtz v3, :cond_2d

    .line 933
    .line 934
    :cond_2b
    invoke-virtual {v9, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 935
    .line 936
    .line 937
    goto :goto_15

    .line 938
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 939
    .line 940
    .line 941
    move-result v4

    .line 942
    iput v4, v3, Lt/o0;->m:F

    .line 943
    .line 944
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 945
    .line 946
    .line 947
    move-result v4

    .line 948
    iput v4, v3, Lt/o0;->n:F

    .line 949
    .line 950
    const/4 v4, 0x0

    .line 951
    iput-boolean v4, v3, Lt/o0;->k:Z

    .line 952
    .line 953
    :cond_2d
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 954
    .line 955
    .line 956
    move-result v3

    .line 957
    iput v3, v2, Lt/c0;->p:F

    .line 958
    .line 959
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 960
    .line 961
    .line 962
    move-result v3

    .line 963
    iput v3, v2, Lt/c0;->q:F

    .line 964
    .line 965
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 966
    .line 967
    .line 968
    move-result v1

    .line 969
    const/4 v3, 0x1

    .line 970
    if-ne v1, v3, :cond_5

    .line 971
    .line 972
    iget-object v1, v2, Lt/c0;->n:Lt/u;

    .line 973
    .line 974
    if-eqz v1, :cond_5

    .line 975
    .line 976
    iget-object v3, v1, Lt/u;->a:Ljava/lang/Object;

    .line 977
    .line 978
    check-cast v3, Landroid/view/VelocityTracker;

    .line 979
    .line 980
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 981
    .line 982
    .line 983
    const/4 v3, 0x0

    .line 984
    iput-object v3, v1, Lt/u;->a:Ljava/lang/Object;

    .line 985
    .line 986
    iput-object v3, v2, Lt/c0;->n:Lt/u;

    .line 987
    .line 988
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 989
    .line 990
    const/4 v3, -0x1

    .line 991
    if-eq v1, v3, :cond_5

    .line 992
    .line 993
    invoke-virtual {v2, v0, v1}, Lt/c0;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    .line 994
    .line 995
    .line 996
    goto/16 :goto_0

    .line 997
    .line 998
    :goto_16
    return v1

    .line 999
    :cond_2e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v1

    .line 1003
    return v1
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->h:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Ljava/util/ArrayList;

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->i:Z

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final p(Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:J

    .line 4
    .line 5
    const-wide/16 v3, -0x1

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    if-nez v5, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:J

    .line 16
    .line 17
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    cmpl-float v5, v1, v4

    .line 24
    .line 25
    if-lez v5, :cond_1

    .line 26
    .line 27
    cmpg-float v5, v1, v3

    .line 28
    .line 29
    if-gez v5, :cond_1

    .line 30
    .line 31
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 32
    .line 33
    :cond_1
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Z

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    const/4 v7, 0x0

    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 40
    .line 41
    if-eqz v5, :cond_24

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 46
    .line 47
    cmpl-float v5, v5, v1

    .line 48
    .line 49
    if-eqz v5, :cond_24

    .line 50
    .line 51
    :cond_2
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 52
    .line 53
    sub-float/2addr v5, v1

    .line 54
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v8

    .line 62
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 63
    .line 64
    instance-of v10, v5, Lt/p;

    .line 65
    .line 66
    const v11, 0x3089705f    # 1.0E-9f

    .line 67
    .line 68
    .line 69
    if-nez v10, :cond_3

    .line 70
    .line 71
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:J

    .line 72
    .line 73
    sub-long v12, v8, v12

    .line 74
    .line 75
    long-to-float v10, v12

    .line 76
    mul-float v10, v10, v1

    .line 77
    .line 78
    mul-float v10, v10, v11

    .line 79
    .line 80
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 81
    .line 82
    div-float/2addr v10, v12

    .line 83
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 v10, 0x0

    .line 87
    :goto_0
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 88
    .line 89
    add-float/2addr v12, v10

    .line 90
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Z

    .line 91
    .line 92
    if-eqz v13, :cond_4

    .line 93
    .line 94
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 95
    .line 96
    :cond_4
    cmpl-float v13, v1, v4

    .line 97
    .line 98
    if-lez v13, :cond_5

    .line 99
    .line 100
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 101
    .line 102
    cmpl-float v14, v12, v14

    .line 103
    .line 104
    if-gez v14, :cond_6

    .line 105
    .line 106
    :cond_5
    cmpg-float v14, v1, v4

    .line 107
    .line 108
    if-gtz v14, :cond_7

    .line 109
    .line 110
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 111
    .line 112
    cmpg-float v14, v12, v14

    .line 113
    .line 114
    if-gtz v14, :cond_7

    .line 115
    .line 116
    :cond_6
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 117
    .line 118
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 119
    .line 120
    const/4 v14, 0x1

    .line 121
    goto :goto_1

    .line 122
    :cond_7
    const/4 v14, 0x0

    .line 123
    :goto_1
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 124
    .line 125
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 126
    .line 127
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:J

    .line 128
    .line 129
    const v15, 0x3727c5ac    # 1.0E-5f

    .line 130
    .line 131
    .line 132
    if-eqz v5, :cond_d

    .line 133
    .line 134
    if-nez v14, :cond_d

    .line 135
    .line 136
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:Z

    .line 137
    .line 138
    if-eqz v14, :cond_a

    .line 139
    .line 140
    iget-wide v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:J

    .line 141
    .line 142
    sub-long v2, v8, v2

    .line 143
    .line 144
    long-to-float v2, v2

    .line 145
    mul-float v2, v2, v11

    .line 146
    .line 147
    invoke-interface {v5, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 152
    .line 153
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:J

    .line 154
    .line 155
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 156
    .line 157
    instance-of v5, v3, Lt/p;

    .line 158
    .line 159
    if-eqz v5, :cond_c

    .line 160
    .line 161
    check-cast v3, Lt/p;

    .line 162
    .line 163
    invoke-virtual {v3}, Lt/p;->a()F

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    .line 168
    .line 169
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:F

    .line 174
    .line 175
    mul-float v5, v5, v8

    .line 176
    .line 177
    cmpg-float v5, v5, v15

    .line 178
    .line 179
    if-gtz v5, :cond_8

    .line 180
    .line 181
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 182
    .line 183
    :cond_8
    cmpl-float v5, v3, v4

    .line 184
    .line 185
    if-lez v5, :cond_9

    .line 186
    .line 187
    const/high16 v5, 0x3f800000    # 1.0f

    .line 188
    .line 189
    cmpl-float v8, v2, v5

    .line 190
    .line 191
    if-ltz v8, :cond_9

    .line 192
    .line 193
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 194
    .line 195
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 196
    .line 197
    const/high16 v2, 0x3f800000    # 1.0f

    .line 198
    .line 199
    :cond_9
    cmpg-float v3, v3, v4

    .line 200
    .line 201
    if-gez v3, :cond_c

    .line 202
    .line 203
    cmpg-float v3, v2, v4

    .line 204
    .line 205
    if-gtz v3, :cond_c

    .line 206
    .line 207
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 208
    .line 209
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 210
    .line 211
    const/4 v12, 0x0

    .line 212
    goto :goto_3

    .line 213
    :cond_a
    invoke-interface {v5, v12}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 218
    .line 219
    instance-of v5, v3, Lt/p;

    .line 220
    .line 221
    if-eqz v5, :cond_b

    .line 222
    .line 223
    check-cast v3, Lt/p;

    .line 224
    .line 225
    invoke-virtual {v3}, Lt/p;->a()F

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_b
    add-float/2addr v12, v10

    .line 233
    invoke-interface {v3, v12}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    sub-float/2addr v3, v2

    .line 238
    mul-float v3, v3, v1

    .line 239
    .line 240
    div-float/2addr v3, v10

    .line 241
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    .line 242
    .line 243
    :cond_c
    :goto_2
    move v12, v2

    .line 244
    :cond_d
    :goto_3
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    .line 245
    .line 246
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    cmpl-float v2, v2, v15

    .line 251
    .line 252
    if-lez v2, :cond_e

    .line 253
    .line 254
    sget-object v2, Lt/x;->c:Lt/x;

    .line 255
    .line 256
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 257
    .line 258
    .line 259
    :cond_e
    if-lez v13, :cond_f

    .line 260
    .line 261
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 262
    .line 263
    cmpl-float v2, v12, v2

    .line 264
    .line 265
    if-gez v2, :cond_10

    .line 266
    .line 267
    :cond_f
    cmpg-float v2, v1, v4

    .line 268
    .line 269
    if-gtz v2, :cond_11

    .line 270
    .line 271
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 272
    .line 273
    cmpg-float v2, v12, v2

    .line 274
    .line 275
    if-gtz v2, :cond_11

    .line 276
    .line 277
    :cond_10
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 278
    .line 279
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 280
    .line 281
    :cond_11
    sget-object v2, Lt/x;->d:Lt/x;

    .line 282
    .line 283
    const/high16 v3, 0x3f800000    # 1.0f

    .line 284
    .line 285
    cmpl-float v5, v12, v3

    .line 286
    .line 287
    if-gez v5, :cond_12

    .line 288
    .line 289
    cmpg-float v3, v12, v4

    .line 290
    .line 291
    if-gtz v3, :cond_13

    .line 292
    .line 293
    :cond_12
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 296
    .line 297
    .line 298
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Z

    .line 303
    .line 304
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 305
    .line 306
    .line 307
    move-result-wide v8

    .line 308
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:F

    .line 309
    .line 310
    const/4 v10, 0x0

    .line 311
    :goto_4
    if-ge v10, v3, :cond_15

    .line 312
    .line 313
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object v11

    .line 317
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Ljava/util/HashMap;

    .line 318
    .line 319
    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v15

    .line 323
    move-object/from16 v16, v15

    .line 324
    .line 325
    check-cast v16, Lt/o;

    .line 326
    .line 327
    if-eqz v16, :cond_14

    .line 328
    .line 329
    iget-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Z

    .line 330
    .line 331
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Lt/u;

    .line 332
    .line 333
    move/from16 v17, v12

    .line 334
    .line 335
    move-wide/from16 v18, v8

    .line 336
    .line 337
    move-object/from16 v20, v11

    .line 338
    .line 339
    move-object/from16 v21, v7

    .line 340
    .line 341
    invoke-virtual/range {v16 .. v21}, Lt/o;->c(FJLandroid/view/View;Lt/u;)Z

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    or-int/2addr v7, v15

    .line 346
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Z

    .line 347
    .line 348
    :cond_14
    add-int/lit8 v10, v10, 0x1

    .line 349
    .line 350
    const/4 v7, 0x0

    .line 351
    goto :goto_4

    .line 352
    :cond_15
    if-lez v13, :cond_16

    .line 353
    .line 354
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 355
    .line 356
    cmpl-float v3, v12, v3

    .line 357
    .line 358
    if-gez v3, :cond_17

    .line 359
    .line 360
    :cond_16
    cmpg-float v3, v1, v4

    .line 361
    .line 362
    if-gtz v3, :cond_18

    .line 363
    .line 364
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 365
    .line 366
    cmpg-float v3, v12, v3

    .line 367
    .line 368
    if-gtz v3, :cond_18

    .line 369
    .line 370
    :cond_17
    const/4 v3, 0x1

    .line 371
    goto :goto_5

    .line 372
    :cond_18
    const/4 v3, 0x0

    .line 373
    :goto_5
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Z

    .line 374
    .line 375
    if-nez v7, :cond_19

    .line 376
    .line 377
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 378
    .line 379
    if-nez v7, :cond_19

    .line 380
    .line 381
    if-eqz v3, :cond_19

    .line 382
    .line 383
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 384
    .line 385
    .line 386
    :cond_19
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Z

    .line 387
    .line 388
    if-eqz v7, :cond_1a

    .line 389
    .line 390
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 391
    .line 392
    .line 393
    :cond_1a
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Z

    .line 394
    .line 395
    xor-int/2addr v3, v6

    .line 396
    or-int/2addr v3, v7

    .line 397
    iput-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Z

    .line 398
    .line 399
    cmpg-float v3, v12, v4

    .line 400
    .line 401
    if-gtz v3, :cond_1b

    .line 402
    .line 403
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 404
    .line 405
    const/4 v7, -0x1

    .line 406
    if-eq v3, v7, :cond_1b

    .line 407
    .line 408
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 409
    .line 410
    if-eq v7, v3, :cond_1b

    .line 411
    .line 412
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 413
    .line 414
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 415
    .line 416
    invoke-virtual {v7, v3}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/d;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 424
    .line 425
    .line 426
    const/4 v7, 0x1

    .line 427
    goto :goto_6

    .line 428
    :cond_1b
    const/4 v7, 0x0

    .line 429
    :goto_6
    float-to-double v8, v12

    .line 430
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 431
    .line 432
    cmpl-double v3, v8, v10

    .line 433
    .line 434
    if-ltz v3, :cond_1c

    .line 435
    .line 436
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 437
    .line 438
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 439
    .line 440
    if-eq v3, v8, :cond_1c

    .line 441
    .line 442
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 443
    .line 444
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 445
    .line 446
    invoke-virtual {v3, v8}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/d;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 454
    .line 455
    .line 456
    const/4 v7, 0x1

    .line 457
    :cond_1c
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Z

    .line 458
    .line 459
    if-nez v3, :cond_20

    .line 460
    .line 461
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 462
    .line 463
    if-eqz v3, :cond_1d

    .line 464
    .line 465
    goto :goto_7

    .line 466
    :cond_1d
    if-lez v13, :cond_1e

    .line 467
    .line 468
    if-eqz v5, :cond_1f

    .line 469
    .line 470
    :cond_1e
    cmpg-float v3, v1, v4

    .line 471
    .line 472
    if-gez v3, :cond_21

    .line 473
    .line 474
    cmpl-float v3, v12, v4

    .line 475
    .line 476
    if-nez v3, :cond_21

    .line 477
    .line 478
    :cond_1f
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 479
    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_20
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 483
    .line 484
    .line 485
    :cond_21
    :goto_8
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Z

    .line 486
    .line 487
    if-nez v2, :cond_22

    .line 488
    .line 489
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 490
    .line 491
    if-eqz v2, :cond_22

    .line 492
    .line 493
    if-lez v13, :cond_22

    .line 494
    .line 495
    if-eqz v5, :cond_23

    .line 496
    .line 497
    :cond_22
    cmpg-float v1, v1, v4

    .line 498
    .line 499
    if-gez v1, :cond_24

    .line 500
    .line 501
    cmpl-float v1, v12, v4

    .line 502
    .line 503
    if-nez v1, :cond_24

    .line 504
    .line 505
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->v()V

    .line 506
    .line 507
    .line 508
    :cond_24
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 509
    .line 510
    const/high16 v2, 0x3f800000    # 1.0f

    .line 511
    .line 512
    cmpl-float v2, v1, v2

    .line 513
    .line 514
    if-ltz v2, :cond_26

    .line 515
    .line 516
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 517
    .line 518
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 519
    .line 520
    if-eq v1, v2, :cond_25

    .line 521
    .line 522
    goto :goto_9

    .line 523
    :cond_25
    move v6, v7

    .line 524
    :goto_9
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 525
    .line 526
    :goto_a
    move v7, v6

    .line 527
    goto :goto_c

    .line 528
    :cond_26
    cmpg-float v1, v1, v4

    .line 529
    .line 530
    if-gtz v1, :cond_28

    .line 531
    .line 532
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 533
    .line 534
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 535
    .line 536
    if-eq v1, v2, :cond_27

    .line 537
    .line 538
    goto :goto_b

    .line 539
    :cond_27
    move v6, v7

    .line 540
    :goto_b
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 541
    .line 542
    goto :goto_a

    .line 543
    :cond_28
    :goto_c
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Z

    .line 544
    .line 545
    or-int/2addr v1, v7

    .line 546
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:Z

    .line 547
    .line 548
    if-eqz v7, :cond_29

    .line 549
    .line 550
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    .line 551
    .line 552
    if-nez v1, :cond_29

    .line 553
    .line 554
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 555
    .line 556
    .line 557
    :cond_29
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 558
    .line 559
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 560
    .line 561
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Lt/w;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_4

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:F

    .line 16
    .line 17
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 18
    .line 19
    cmpl-float v0, v0, v1

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:I

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Lt/w;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lt/w;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:I

    .line 60
    .line 61
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 62
    .line 63
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:F

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Lt/w;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lt/w;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Lt/w;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:I

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 21
    .line 22
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:I

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-static {v2, v0}, Lea/q;->e(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, -0x1

    .line 45
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 46
    .line 47
    if-eq v2, v3, :cond_2

    .line 48
    .line 49
    if-eq v3, v1, :cond_2

    .line 50
    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final requestLayout()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lt/c0;->c:Lt/b0;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v0, v0, Lt/b0;->q:I

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final s(IFFF[F)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lt/o;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p2, p3, p4, p5}, Lt/o;->b(FFF[F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string p2, ""

    .line 25
    .line 26
    invoke-static {p1, p2}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p3, "WARNING could not find view id "

    .line 46
    .line 47
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "MotionLayout"

    .line 58
    .line 59
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lt/x;->c:Lt/x;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 11
    .line 12
    invoke-virtual {v0}, Lt/c0;->d()Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lt/v;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lt/v;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 19
    .line 20
    iput p1, v0, Lt/v;->a:F

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    sget-object v0, Lt/x;->d:Lt/x;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    cmpg-float v2, p1, v1

    .line 27
    .line 28
    if-gtz v2, :cond_2

    .line 29
    .line 30
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 31
    .line 32
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 33
    .line 34
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 35
    .line 36
    cmpl-float v1, v2, v1

    .line 37
    .line 38
    if-nez v1, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    .line 46
    cmpl-float v2, p1, v1

    .line 47
    .line 48
    if-ltz v2, :cond_3

    .line 49
    .line 50
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 51
    .line 52
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 53
    .line 54
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 55
    .line 56
    cmpl-float v1, v2, v1

    .line 57
    .line 58
    if-nez v1, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v0, -0x1

    .line 65
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 66
    .line 67
    sget-object v0, Lt/x;->c:Lt/x;

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 73
    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    return-void

    .line 77
    :cond_5
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Z

    .line 79
    .line 80
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 81
    .line 82
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 83
    .line 84
    const-wide/16 v1, -0x1

    .line 85
    .line 86
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:J

    .line 87
    .line 88
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:J

    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r:Landroid/view/animation/Interpolator;

    .line 92
    .line 93
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public setScene(Lt/c0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p1, Lt/c0;->o:Z

    .line 8
    .line 9
    iget-object p1, p1, Lt/c0;->c:Lt/b0;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lt/b0;->l:Lt/o0;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lt/o0;->b(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setState(Lt/x;)V
    .locals 4

    .line 1
    sget-object v0, Lt/x;->d:Lt/x;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Lt/x;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Lt/x;

    .line 14
    .line 15
    sget-object v2, Lt/x;->c:Lt/x;

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    if-ne p1, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->q()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v1, v3, :cond_3

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    if-ne p1, v0, :cond_5

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    if-ne p1, v2, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->q()V

    .line 46
    .line 47
    .line 48
    :cond_4
    if-ne p1, v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r()V

    .line 51
    .line 52
    .line 53
    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lt/c0;->d:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/b0;

    .line 4
    iget v2, v1, Lt/b0;->a:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget p1, v1, Lt/b0;->d:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 7
    iget p1, v1, Lt/b0;->c:I

    .line 8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 9
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    if-nez p1, :cond_2

    .line 11
    new-instance p1, Lt/v;

    invoke-direct {p1, p0}, Lt/v;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 12
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 13
    iput v0, p1, Lt/v;->c:I

    .line 14
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 15
    iput v0, p1, Lt/v;->d:I

    return-void

    .line 16
    :cond_3
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 17
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-ne p1, v0, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 18
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 19
    iput-object v1, v0, Lt/c0;->c:Lt/b0;

    .line 20
    iget-object v1, v1, Lt/b0;->l:Lt/o0;

    if-eqz v1, :cond_6

    .line 21
    iget-boolean v0, v0, Lt/c0;->o:Z

    invoke-virtual {v1, v0}, Lt/o0;->b(Z)V

    .line 22
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    invoke-virtual {v0, v1}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    invoke-virtual {v1, v3}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Lt/t;

    invoke-virtual {v3, v0, v1}, Lt/t;->d(Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V

    .line 23
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x()V

    .line 24
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    move v0, p1

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 25
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La2/a;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " transitionToStart "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o(F)V

    goto :goto_3

    .line 28
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_9
    :goto_3
    return-void
.end method

.method public setTransition(Lt/b0;)V
    .locals 3

    .line 29
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 30
    iput-object p1, v0, Lt/c0;->c:Lt/b0;

    if-eqz p1, :cond_0

    .line 31
    iget-object v1, p1, Lt/b0;->l:Lt/o0;

    if-eqz v1, :cond_0

    .line 32
    iget-boolean v0, v0, Lt/c0;->o:Z

    invoke-virtual {v1, v0}, Lt/o0;->b(Z)V

    .line 33
    :cond_0
    sget-object v0, Lt/x;->b:Lt/x;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 34
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 35
    iget-object v1, v1, Lt/c0;->c:Lt/b0;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    .line 36
    :cond_1
    iget v1, v1, Lt/b0;->c:I

    :goto_0
    if-ne v0, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 38
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 39
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 41
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:F

    .line 42
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 43
    :goto_1
    iget p1, p1, Lt/b0;->r:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    const-wide/16 v0, -0x1

    goto :goto_2

    .line 44
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:J

    .line 45
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    invoke-virtual {p1}, Lt/c0;->g()I

    move-result p1

    .line 46
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 47
    iget-object v1, v0, Lt/c0;->c:Lt/b0;

    if-nez v1, :cond_4

    goto :goto_3

    .line 48
    :cond_4
    iget v2, v1, Lt/b0;->c:I

    .line 49
    :goto_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    if-ne p1, v1, :cond_5

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-ne v2, v1, :cond_5

    return-void

    .line 50
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 51
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 52
    invoke-virtual {v0, p1, v2}, Lt/c0;->k(II)V

    .line 53
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    invoke-virtual {p1, v0}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    move-result-object p1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    invoke-virtual {v0, v1}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Lt/t;

    invoke-virtual {v1, p1, v0}, Lt/t;->d(Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V

    .line 54
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 55
    iput p1, v1, Lt/t;->e:I

    .line 56
    iput v0, v1, Lt/t;->f:I

    .line 57
    invoke-virtual {v1}, Lt/t;->e()V

    .line 58
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "MotionLayout"

    .line 6
    .line 7
    const-string v0, "MotionScene not defined"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v0, Lt/c0;->c:Lt/b0;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iput p1, v1, Lt/b0;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput p1, v0, Lt/c0;->j:I

    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public setTransitionListener(Lt/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Lt/w;

    .line 2
    .line 3
    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lt/v;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lt/v;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v1, "motion.progress"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v0, Lt/v;->a:F

    .line 24
    .line 25
    const-string v1, "motion.velocity"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, v0, Lt/v;->b:F

    .line 32
    .line 33
    const-string v1, "motion.StartState"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, v0, Lt/v;->c:I

    .line 40
    .line 41
    const-string v1, "motion.EndState"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, v0, Lt/v;->d:I

    .line 48
    .line 49
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 56
    .line 57
    invoke-virtual {p1}, Lt/v;->a()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final t(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    instance-of v0, p3, Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    move-object v0, p3

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v4, v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    int-to-float v6, v6

    .line 26
    add-float/2addr v6, p1

    .line 27
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    int-to-float v7, v7

    .line 32
    add-float/2addr v7, p2

    .line 33
    invoke-virtual {p0, v6, v7, v5, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    return v2

    .line 40
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    int-to-float v0, v0

    .line 48
    add-float/2addr v0, p1

    .line 49
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    int-to-float v3, v3

    .line 54
    add-float/2addr v3, p2

    .line 55
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    int-to-float v4, v4

    .line 60
    add-float/2addr p1, v4

    .line 61
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    int-to-float v4, v4

    .line 66
    add-float/2addr p2, v4

    .line 67
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Landroid/graphics/RectF;

    .line 68
    .line 69
    invoke-virtual {v4, v0, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    return v2

    .line 99
    :cond_2
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    return v2

    .line 106
    :cond_3
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 11
    .line 12
    invoke-static {v0, v2}, La2/a;->x(Landroid/content/Context;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "->"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 25
    .line 26
    invoke-static {v0, v2}, La2/a;->x(Landroid/content/Context;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, " (pos:"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, " Dpos/Dt:"

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public final u(Landroid/util/AttributeSet;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const-string v1, "MotionLayout"

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz p1, :cond_9

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    sget-object v5, Ly/j;->k:[I

    .line 16
    .line 17
    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x1

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x1

    .line 28
    :goto_0
    if-ge v6, v4, :cond_7

    .line 29
    .line 30
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    const/4 v9, 0x2

    .line 35
    if-ne v8, v9, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    new-instance v9, Lt/c0;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-direct {v9, v10, p0, v8}, Lt/c0;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 48
    .line 49
    .line 50
    iput-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_0
    if-ne v8, v5, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    iput v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    const/4 v10, 0x4

    .line 63
    if-ne v8, v10, :cond_2

    .line 64
    .line 65
    const/4 v9, 0x0

    .line 66
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    iput v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:F

    .line 71
    .line 72
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    if-nez v8, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    const/4 v10, 0x5

    .line 83
    if-ne v8, v10, :cond_5

    .line 84
    .line 85
    iget v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 86
    .line 87
    if-nez v10, :cond_6

    .line 88
    .line 89
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-eqz v8, :cond_4

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const/4 v9, 0x0

    .line 97
    :goto_1
    iput v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    const/4 v9, 0x3

    .line 101
    if-ne v8, v9, :cond_6

    .line 102
    .line 103
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    iput v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 108
    .line 109
    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 116
    .line 117
    if-nez p1, :cond_8

    .line 118
    .line 119
    const-string p1, "WARNING NO app:layoutDescription tag"

    .line 120
    .line 121
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_8
    if-nez v7, :cond_9

    .line 125
    .line 126
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 127
    .line 128
    :cond_9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 129
    .line 130
    if-eqz p1, :cond_1c

    .line 131
    .line 132
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 133
    .line 134
    if-nez p1, :cond_a

    .line 135
    .line 136
    const-string p1, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    .line 137
    .line 138
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto/16 :goto_a

    .line 142
    .line 143
    :cond_a
    invoke-virtual {p1}, Lt/c0;->g()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 148
    .line 149
    invoke-virtual {v4}, Lt/c0;->g()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-virtual {v4, v5}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-static {v5, p1}, La2/a;->x(Landroid/content/Context;I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    const/4 v6, 0x0

    .line 170
    :goto_3
    const-string v7, "CHECK: "

    .line 171
    .line 172
    if-ge v6, v5, :cond_e

    .line 173
    .line 174
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-ne v9, v2, :cond_b

    .line 183
    .line 184
    const-string v10, " ALL VIEWS SHOULD HAVE ID\'s "

    .line 185
    .line 186
    invoke-static {v7, p1, v10}, La/e;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v11, " does not!"

    .line 202
    .line 203
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :cond_b
    iget-object v10, v4, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    .line 214
    .line 215
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    if-eqz v11, :cond_c

    .line 224
    .line 225
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    check-cast v9, Landroidx/constraintlayout/widget/c;

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_c
    move-object v9, v0

    .line 237
    :goto_4
    if-nez v9, :cond_d

    .line 238
    .line 239
    const-string v9, " NO CONSTRAINTS for "

    .line 240
    .line 241
    invoke-static {v7, p1, v9}, La/e;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    invoke-static {v8}, La2/a;->y(Landroid/view/View;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_e
    iget-object v0, v4, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    new-array v5, v3, [Ljava/lang/Integer;

    .line 269
    .line 270
    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, [Ljava/lang/Integer;

    .line 275
    .line 276
    array-length v5, v0

    .line 277
    new-array v6, v5, [I

    .line 278
    .line 279
    const/4 v8, 0x0

    .line 280
    :goto_5
    if-ge v8, v5, :cond_f

    .line 281
    .line 282
    aget-object v9, v0, v8

    .line 283
    .line 284
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    aput v9, v6, v8

    .line 289
    .line 290
    add-int/lit8 v8, v8, 0x1

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_f
    :goto_6
    if-ge v3, v5, :cond_13

    .line 294
    .line 295
    aget v0, v6, v3

    .line 296
    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    invoke-static {v8, v0}, La2/a;->x(Landroid/content/Context;I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    aget v9, v6, v3

    .line 306
    .line 307
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    if-nez v9, :cond_10

    .line 312
    .line 313
    new-instance v9, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string v10, " NO View matches id "

    .line 322
    .line 323
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    :cond_10
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/c;

    .line 337
    .line 338
    .line 339
    move-result-object v9

    .line 340
    iget-object v9, v9, Landroidx/constraintlayout/widget/c;->d:Ly/d;

    .line 341
    .line 342
    iget v9, v9, Ly/d;->d:I

    .line 343
    .line 344
    const-string v10, ") no LAYOUT_HEIGHT"

    .line 345
    .line 346
    const-string v11, "("

    .line 347
    .line 348
    if-ne v9, v2, :cond_11

    .line 349
    .line 350
    new-instance v9, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    :cond_11
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/c;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    iget-object v0, v0, Landroidx/constraintlayout/widget/c;->d:Ly/d;

    .line 379
    .line 380
    iget v0, v0, Ly/d;->c:I

    .line 381
    .line 382
    if-ne v0, v2, :cond_12

    .line 383
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    :cond_12
    add-int/lit8 v3, v3, 0x1

    .line 409
    .line 410
    goto :goto_6

    .line 411
    :cond_13
    new-instance p1, Landroid/util/SparseIntArray;

    .line 412
    .line 413
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 414
    .line 415
    .line 416
    new-instance v0, Landroid/util/SparseIntArray;

    .line 417
    .line 418
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 419
    .line 420
    .line 421
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 422
    .line 423
    iget-object v3, v3, Lt/c0;->d:Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    :cond_14
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    if-eqz v4, :cond_1c

    .line 434
    .line 435
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    check-cast v4, Lt/b0;

    .line 440
    .line 441
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 442
    .line 443
    iget-object v5, v5, Lt/c0;->c:Lt/b0;

    .line 444
    .line 445
    if-ne v4, v5, :cond_15

    .line 446
    .line 447
    const-string v5, "CHECK: CURRENT"

    .line 448
    .line 449
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .line 451
    .line 452
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string v6, "CHECK: transition = "

    .line 455
    .line 456
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 460
    .line 461
    .line 462
    move-result-object v6

    .line 463
    iget v7, v4, Lt/b0;->d:I

    .line 464
    .line 465
    if-ne v7, v2, :cond_16

    .line 466
    .line 467
    const-string v7, "null"

    .line 468
    .line 469
    goto :goto_8

    .line 470
    :cond_16
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 471
    .line 472
    .line 473
    move-result-object v7

    .line 474
    iget v8, v4, Lt/b0;->d:I

    .line 475
    .line 476
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    :goto_8
    iget v8, v4, Lt/b0;->c:I

    .line 481
    .line 482
    if-ne v8, v2, :cond_17

    .line 483
    .line 484
    const-string v6, " -> null"

    .line 485
    .line 486
    invoke-static {v7, v6}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v6

    .line 490
    goto :goto_9

    .line 491
    :cond_17
    const-string v8, " -> "

    .line 492
    .line 493
    invoke-static {v7, v8}, La/e;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    move-result-object v7

    .line 497
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    iget v8, v4, Lt/b0;->c:I

    .line 502
    .line 503
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    :goto_9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    const-string v6, "CHECK: transition.setDuration = "

    .line 527
    .line 528
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    iget v6, v4, Lt/b0;->h:I

    .line 532
    .line 533
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    iget v5, v4, Lt/b0;->d:I

    .line 544
    .line 545
    iget v6, v4, Lt/b0;->c:I

    .line 546
    .line 547
    if-ne v5, v6, :cond_18

    .line 548
    .line 549
    const-string v5, "CHECK: start and end constraint set should not be the same!"

    .line 550
    .line 551
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .line 553
    .line 554
    :cond_18
    iget v5, v4, Lt/b0;->d:I

    .line 555
    .line 556
    iget v4, v4, Lt/b0;->c:I

    .line 557
    .line 558
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    invoke-static {v6, v5}, La2/a;->x(Landroid/content/Context;I)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v6

    .line 566
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 567
    .line 568
    .line 569
    move-result-object v7

    .line 570
    invoke-static {v7, v4}, La2/a;->x(Landroid/content/Context;I)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v7

    .line 574
    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 575
    .line 576
    .line 577
    move-result v8

    .line 578
    const-string v9, "->"

    .line 579
    .line 580
    if-ne v8, v4, :cond_19

    .line 581
    .line 582
    new-instance v8, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    const-string v10, "CHECK: two transitions with the same start and end "

    .line 585
    .line 586
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v8

    .line 602
    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    :cond_19
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 606
    .line 607
    .line 608
    move-result v8

    .line 609
    if-ne v8, v5, :cond_1a

    .line 610
    .line 611
    new-instance v8, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    const-string v10, "CHECK: you can\'t have reverse transitions"

    .line 614
    .line 615
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v7

    .line 631
    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .line 633
    .line 634
    :cond_1a
    invoke-virtual {p1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 638
    .line 639
    .line 640
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 641
    .line 642
    invoke-virtual {v7, v5}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    if-nez v5, :cond_1b

    .line 647
    .line 648
    new-instance v5, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    const-string v7, " no such constraintSetStart "

    .line 651
    .line 652
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v5

    .line 662
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .line 664
    .line 665
    :cond_1b
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 666
    .line 667
    invoke-virtual {v5, v4}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    if-nez v4, :cond_14

    .line 672
    .line 673
    new-instance v4, Ljava/lang/StringBuilder;

    .line 674
    .line 675
    const-string v5, " no such constraintSetEnd "

    .line 676
    .line 677
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v4

    .line 687
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .line 689
    .line 690
    goto/16 :goto_7

    .line 691
    .line 692
    :cond_1c
    :goto_a
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 693
    .line 694
    if-ne p1, v2, :cond_1e

    .line 695
    .line 696
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 697
    .line 698
    if-eqz p1, :cond_1e

    .line 699
    .line 700
    invoke-virtual {p1}, Lt/c0;->g()I

    .line 701
    .line 702
    .line 703
    move-result p1

    .line 704
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 705
    .line 706
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 707
    .line 708
    invoke-virtual {p1}, Lt/c0;->g()I

    .line 709
    .line 710
    .line 711
    move-result p1

    .line 712
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 713
    .line 714
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 715
    .line 716
    iget-object p1, p1, Lt/c0;->c:Lt/b0;

    .line 717
    .line 718
    if-nez p1, :cond_1d

    .line 719
    .line 720
    goto :goto_b

    .line 721
    :cond_1d
    iget v2, p1, Lt/b0;->c:I

    .line 722
    .line 723
    :goto_b
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 724
    .line 725
    :cond_1e
    return-void
.end method

.method public final v()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lt/c0;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    if-eq v0, v1, :cond_9

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 24
    .line 25
    iget-object v3, v2, Lt/c0;->d:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_3

    .line 36
    .line 37
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lt/b0;

    .line 42
    .line 43
    iget-object v6, v5, Lt/b0;->m:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-lez v6, :cond_2

    .line 50
    .line 51
    iget-object v5, v5, Lt/b0;->m:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_2

    .line 62
    .line 63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Lt/a0;

    .line 68
    .line 69
    invoke-virtual {v6, p0}, Lt/a0;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-object v2, v2, Lt/c0;->f:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_5

    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Lt/b0;

    .line 90
    .line 91
    iget-object v6, v5, Lt/b0;->m:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-lez v6, :cond_4

    .line 98
    .line 99
    iget-object v5, v5, Lt/b0;->m:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_4

    .line 110
    .line 111
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Lt/a0;

    .line 116
    .line 117
    invoke-virtual {v6, p0}, Lt/a0;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_7

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Lt/b0;

    .line 136
    .line 137
    iget-object v5, v4, Lt/b0;->m:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-lez v5, :cond_6

    .line 144
    .line 145
    iget-object v5, v4, Lt/b0;->m:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_6

    .line 156
    .line 157
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    check-cast v6, Lt/a0;

    .line 162
    .line 163
    invoke-virtual {v6, p0, v0, v4}, Lt/a0;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILt/b0;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_9

    .line 176
    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Lt/b0;

    .line 182
    .line 183
    iget-object v4, v3, Lt/b0;->m:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-lez v4, :cond_8

    .line 190
    .line 191
    iget-object v4, v3, Lt/b0;->m:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_8

    .line 202
    .line 203
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    check-cast v5, Lt/a0;

    .line 208
    .line 209
    invoke-virtual {v5, p0, v0, v3}, Lt/a0;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILt/b0;)V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 214
    .line 215
    invoke-virtual {v0}, Lt/c0;->l()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_c

    .line 220
    .line 221
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 222
    .line 223
    iget-object v0, v0, Lt/c0;->c:Lt/b0;

    .line 224
    .line 225
    if-eqz v0, :cond_c

    .line 226
    .line 227
    iget-object v0, v0, Lt/b0;->l:Lt/o0;

    .line 228
    .line 229
    if-eqz v0, :cond_c

    .line 230
    .line 231
    iget v2, v0, Lt/o0;->d:I

    .line 232
    .line 233
    if-eq v2, v1, :cond_a

    .line 234
    .line 235
    iget-object v1, v0, Lt/o0;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    if-nez v2, :cond_b

    .line 242
    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string v4, "cannot find TouchAnchorId @id/"

    .line 246
    .line 247
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    iget v0, v0, Lt/o0;->d:I

    .line 255
    .line 256
    invoke-static {v1, v0}, La2/a;->x(Landroid/content/Context;I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const-string v1, "TouchResponse"

    .line 268
    .line 269
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_a
    const/4 v2, 0x0

    .line 274
    :cond_b
    :goto_4
    instance-of v0, v2, Landroidx/core/widget/NestedScrollView;

    .line 275
    .line 276
    if-eqz v0, :cond_c

    .line 277
    .line 278
    check-cast v2, Landroidx/core/widget/NestedScrollView;

    .line 279
    .line 280
    new-instance v0, Lt/n0;

    .line 281
    .line 282
    const/4 v1, 0x0

    .line 283
    invoke-direct {v0, v1}, Lt/n0;-><init>(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    .line 288
    .line 289
    new-instance v0, Lq1/f0;

    .line 290
    .line 291
    const/4 v1, 0x2

    .line 292
    invoke-direct {v0, v1}, Lq1/f0;-><init>(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/k;)V

    .line 296
    .line 297
    .line 298
    :cond_c
    return-void
.end method

.method public final w()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Lt/w;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Integer;

    .line 33
    .line 34
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:Lt/w;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Ljava/util/ArrayList;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lt/w;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Lt/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Lt/t;->e()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final y(FF)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lt/v;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lt/v;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 19
    .line 20
    iput p1, v0, Lt/v;->a:F

    .line 21
    .line 22
    iput p2, v0, Lt/v;->b:F

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lt/x;->c:Lt/x;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Lt/x;)V

    .line 31
    .line 32
    .line 33
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s:F

    .line 34
    .line 35
    const/high16 p1, 0x3f800000    # 1.0f

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o(F)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final z(II)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lt/v;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lt/v;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:Lt/v;

    .line 19
    .line 20
    iput p1, v0, Lt/v;->c:I

    .line 21
    .line 22
    iput p2, v0, Lt/v;->d:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:I

    .line 30
    .line 31
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Lt/c0;->k(II)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Lt/c0;->b(I)Landroidx/constraintlayout/widget/d;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Lt/t;

    .line 49
    .line 50
    invoke-virtual {v0, p1, p2}, Lt/t;->d(Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x()V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o(F)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method
