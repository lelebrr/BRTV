.class public final Lja/b;
.super Lja/a;
.source "MyApplication"


# static fields
.field public static final o:Landroid/util/SparseIntArray;


# instance fields
.field public n:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lja/b;->o:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0b0205

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lja/b;->o:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {p1, v1, v0}, Lw0/e;->R(Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x2

    .line 9
    aget-object v1, v0, v1

    .line 10
    .line 11
    check-cast v1, Landroid/widget/ImageView;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aget-object v1, v0, v1

    .line 15
    .line 16
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    aget-object v0, v0, v2

    .line 20
    .line 21
    check-cast v0, Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-direct {p0, p1, v1, v0}, Lja/a;-><init>(Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;)V

    .line 24
    .line 25
    .line 26
    const-wide/16 v0, -0x1

    .line 27
    .line 28
    iput-wide v0, p0, Lja/b;->n:J

    .line 29
    .line 30
    iget-object v0, p0, Lja/a;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lja/a;->m:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lw0/e;->T(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    monitor-enter p0

    .line 45
    const-wide/16 v0, 0x2

    .line 46
    .line 47
    :try_start_0
    iput-wide v0, p0, Lja/b;->n:J

    .line 48
    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {p0}, Lw0/e;->S()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p1
.end method


# virtual methods
.method public final O()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lja/b;->n:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    iput-wide v3, p0, Lja/b;->n:J

    .line 8
    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const-wide/16 v5, 0x3

    .line 11
    .line 12
    and-long/2addr v1, v5

    .line 13
    cmp-long v5, v1, v3

    .line 14
    .line 15
    if-eqz v5, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lja/a;->m:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget v3, Lorg/bitspark/android/R$drawable;->home_nor_2x:I

    .line 24
    .line 25
    invoke-static {v2, v3}, Lcom/bumptech/glide/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lja/a;->m:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sget v4, Lorg/bitspark/android/R$drawable;->home_movie_not_uploaded_2x:I

    .line 36
    .line 37
    invoke-static {v3, v4}, Lcom/bumptech/glide/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v4, p0, Lja/a;->m:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const v5, 0x7f0700b5

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const-string v5, "X2f3aNsXH0FB\n"

    .line 55
    .line 56
    const-string v6, "NgqWD75BdiQ=\n"

    .line 57
    .line 58
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    const-string v5, "Spdt7yg=\n"

    .line 62
    .line 63
    const-string v6, "L+UfgFpNgJ4=\n"

    .line 64
    .line 65
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v3, v5}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v5, ""

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-static {v6}, Lc2/a;->a(Landroid/content/Context;)Lc2/l;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    new-instance v7, Lm2/h;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-direct {v7, v8}, Lm2/h;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    iput-object v5, v7, Lm2/h;->c:Ljava/lang/Object;

    .line 92
    .line 93
    new-instance v5, Lo2/a;

    .line 94
    .line 95
    invoke-direct {v5, v1}, Lo2/a;-><init>(Landroid/widget/ImageView;)V

    .line 96
    .line 97
    .line 98
    iput-object v5, v7, Lm2/h;->d:Lo2/a;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    iput-object v1, v7, Lm2/h;->s:Landroidx/lifecycle/p;

    .line 102
    .line 103
    iput-object v1, v7, Lm2/h;->t:Ln2/i;

    .line 104
    .line 105
    iput-object v1, v7, Lm2/h;->u:Ln2/g;

    .line 106
    .line 107
    new-instance v1, Lq2/a;

    .line 108
    .line 109
    const/16 v5, 0x64

    .line 110
    .line 111
    invoke-direct {v1, v5}, Lq2/a;-><init>(I)V

    .line 112
    .line 113
    .line 114
    iput-object v1, v7, Lm2/h;->f:Lq2/d;

    .line 115
    .line 116
    if-nez v2, :cond_0

    .line 117
    .line 118
    move-object v2, v3

    .line 119
    :cond_0
    iput-object v2, v7, Lm2/h;->o:Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-object v1, v7, Lm2/h;->n:Ljava/lang/Integer;

    .line 126
    .line 127
    iput-object v3, v7, Lm2/h;->q:Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iput-object v1, v7, Lm2/h;->p:Ljava/lang/Integer;

    .line 134
    .line 135
    sget-object v1, Ln2/g;->a:Ln2/g;

    .line 136
    .line 137
    iput-object v1, v7, Lm2/h;->r:Ln2/g;

    .line 138
    .line 139
    new-instance v1, Lp2/a;

    .line 140
    .line 141
    invoke-direct {v1, v4}, Lp2/a;-><init>(F)V

    .line 142
    .line 143
    .line 144
    const/4 v2, 0x1

    .line 145
    new-array v2, v2, [Lp2/a;

    .line 146
    .line 147
    aput-object v1, v2, v0

    .line 148
    .line 149
    invoke-static {v2}, Lx8/i;->L([Ljava/lang/Object;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v0}, Lo9/d;->J(Ljava/util/List;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-object v0, v7, Lm2/h;->e:Ljava/util/List;

    .line 158
    .line 159
    sget-object v0, Lm2/b;->c:Lm2/b;

    .line 160
    .line 161
    iput-object v0, v7, Lm2/h;->k:Lm2/b;

    .line 162
    .line 163
    iput-object v0, v7, Lm2/h;->l:Lm2/b;

    .line 164
    .line 165
    invoke-virtual {v7}, Lm2/h;->a()Lm2/i;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v6, v0}, Lc2/l;->b(Lm2/i;)Lm2/k;

    .line 170
    .line 171
    .line 172
    :cond_1
    return-void

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    throw v0
.end method

.method public final P()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lja/b;->n:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    monitor-exit p0

    .line 16
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method
