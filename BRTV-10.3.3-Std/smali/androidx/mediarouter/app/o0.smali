.class public final Landroidx/mediarouter/app/o0;
.super Landroidx/recyclerview/widget/k0;
.source "MyApplication"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Landroid/view/LayoutInflater;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public g:Landroidx/mediarouter/app/m0;

.field public final h:I

.field public final i:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public final synthetic j:Landroidx/mediarouter/app/q0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/q0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/mediarouter/app/o0;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroidx/mediarouter/app/o0;->b:Landroid/view/LayoutInflater;

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 22
    .line 23
    const v0, 0x7f040373

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lo9/d;->o(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Landroidx/mediarouter/app/o0;->c:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    const v0, 0x7f04037c

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Lo9/d;->o(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Landroidx/mediarouter/app/o0;->d:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    const v0, 0x7f040379

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Lo9/d;->o(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Landroidx/mediarouter/app/o0;->e:Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    const v0, 0x7f040378

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Lo9/d;->o(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Landroidx/mediarouter/app/o0;->f:Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const v0, 0x7f0c004b

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Landroidx/mediarouter/app/o0;->h:I

    .line 71
    .line 72
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 73
    .line 74
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Landroidx/mediarouter/app/o0;->i:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/mediarouter/app/o0;->d()V

    .line 80
    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    new-instance v1, Landroidx/mediarouter/app/m;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p1, v0, v2, p2}, Landroidx/mediarouter/app/m;-><init>(IIILandroid/view/View;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Landroidx/mediarouter/app/o;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-direct {p1, v0, p0}, Landroidx/mediarouter/app/o;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Landroidx/mediarouter/app/o0;->h:I

    .line 23
    .line 24
    int-to-long v2, p1

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroidx/mediarouter/app/o0;->i:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final b(Lq1/s0;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p1, Lq1/s0;->f:Landroid/net/Uri;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "Failed to load "

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "MediaRouteCtrlDialog"

    .line 41
    .line 42
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    iget v0, p1, Lq1/s0;->n:I

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    if-eq v0, v1, :cond_3

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    if-eq v0, v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lq1/s0;->e()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Landroidx/mediarouter/app/o0;->f:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Landroidx/mediarouter/app/o0;->c:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Landroidx/mediarouter/app/o0;->e:Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-object p1, p0, Landroidx/mediarouter/app/o0;->d:Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    :goto_0
    return-object p1
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/q0;->l:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Landroidx/mediarouter/app/q0;->l:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v2, v0, Landroidx/mediarouter/app/q0;->j:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v4, v0, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 18
    .line 19
    invoke-virtual {v4}, Lq1/s0;->a()Lq1/p0;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 26
    .line 27
    iget-object v0, v0, Lq1/s0;->a:Lq1/r0;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lq1/u0;->b()V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Lq1/r0;->b:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Lq1/s0;

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Lq1/p0;->o(Lq1/s0;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_0

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final d()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/o0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/mediarouter/app/m0;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 9
    .line 10
    iget-object v3, v2, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-direct {v1, v4, v3}, Landroidx/mediarouter/app/m0;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroidx/mediarouter/app/o0;->g:Landroidx/mediarouter/app/m0;

    .line 17
    .line 18
    iget-object v1, v2, Landroidx/mediarouter/app/q0;->i:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v5, 0x3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Lq1/s0;

    .line 42
    .line 43
    new-instance v7, Landroidx/mediarouter/app/m0;

    .line 44
    .line 45
    invoke-direct {v7, v5, v6}, Landroidx/mediarouter/app/m0;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v3, Landroidx/mediarouter/app/m0;

    .line 53
    .line 54
    iget-object v6, v2, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 55
    .line 56
    invoke-direct {v3, v5, v6}, Landroidx/mediarouter/app/m0;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v3, v2, Landroidx/mediarouter/app/q0;->j:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    const/4 v7, 0x2

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    if-nez v6, :cond_6

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/4 v6, 0x0

    .line 78
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-eqz v10, :cond_6

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    check-cast v10, Lq1/s0;

    .line 89
    .line 90
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    if-nez v11, :cond_2

    .line 95
    .line 96
    if-nez v6, :cond_5

    .line 97
    .line 98
    iget-object v6, v2, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lq1/s0;->b()Lq1/b0;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    if-eqz v6, :cond_3

    .line 108
    .line 109
    invoke-virtual {v6}, Lq1/b0;->k()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    goto :goto_2

    .line 114
    :cond_3
    move-object v6, v8

    .line 115
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-eqz v11, :cond_4

    .line 120
    .line 121
    iget-object v6, v2, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 122
    .line 123
    const v11, 0x7f12016f

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    :cond_4
    new-instance v11, Landroidx/mediarouter/app/m0;

    .line 131
    .line 132
    invoke-direct {v11, v7, v6}, Landroidx/mediarouter/app/m0;-><init>(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    const/4 v6, 0x1

    .line 139
    :cond_5
    new-instance v11, Landroidx/mediarouter/app/m0;

    .line 140
    .line 141
    invoke-direct {v11, v5, v10}, Landroidx/mediarouter/app/m0;-><init>(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    iget-object v1, v2, Landroidx/mediarouter/app/q0;->k:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_b

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_b

    .line 165
    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Lq1/s0;

    .line 171
    .line 172
    iget-object v5, v2, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 173
    .line 174
    if-eq v5, v3, :cond_7

    .line 175
    .line 176
    if-nez v9, :cond_a

    .line 177
    .line 178
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-static {}, Lq1/s0;->b()Lq1/b0;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    if-eqz v5, :cond_8

    .line 186
    .line 187
    invoke-virtual {v5}, Lq1/b0;->l()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    goto :goto_4

    .line 192
    :cond_8
    move-object v5, v8

    .line 193
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_9

    .line 198
    .line 199
    iget-object v5, v2, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 200
    .line 201
    const v6, 0x7f120170

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    :cond_9
    new-instance v6, Landroidx/mediarouter/app/m0;

    .line 209
    .line 210
    invoke-direct {v6, v7, v5}, Landroidx/mediarouter/app/m0;-><init>(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    const/4 v9, 0x1

    .line 217
    :cond_a
    new-instance v5, Landroidx/mediarouter/app/m0;

    .line 218
    .line 219
    const/4 v6, 0x4

    .line 220
    invoke-direct {v5, v6, v3}, Landroidx/mediarouter/app/m0;-><init>(ILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_b
    invoke-virtual {p0}, Landroidx/mediarouter/app/o0;->c()V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/o0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/mediarouter/app/o0;->g:Landroidx/mediarouter/app/m0;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/o0;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    add-int/lit8 p1, p1, -0x1

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/mediarouter/app/m0;

    .line 15
    .line 16
    :goto_0
    iget p1, p1, Landroidx/mediarouter/app/m0;->b:I

    .line 17
    .line 18
    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/o0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/mediarouter/app/o0;->g:Landroidx/mediarouter/app/m0;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    add-int/lit8 v1, p2, -0x1

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/mediarouter/app/m0;

    .line 15
    .line 16
    :goto_0
    iget v1, v1, Landroidx/mediarouter/app/m0;->b:I

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Landroidx/mediarouter/app/o0;->g:Landroidx/mediarouter/app/m0;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    sub-int/2addr p2, v2

    .line 25
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroidx/mediarouter/app/m0;

    .line 30
    .line 31
    :goto_1
    iget-object v0, p0, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eq v1, v2, :cond_15

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    if-eq v1, v4, :cond_14

    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    const/high16 v6, 0x3f800000    # 1.0f

    .line 41
    .line 42
    const/4 v7, 0x4

    .line 43
    if-eq v1, v5, :cond_4

    .line 44
    .line 45
    if-ne v1, v7, :cond_3

    .line 46
    .line 47
    check-cast p1, Landroidx/mediarouter/app/j0;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object p2, p2, Landroidx/mediarouter/app/m0;->a:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p2, Lq1/s0;

    .line 55
    .line 56
    iput-object p2, p1, Landroidx/mediarouter/app/j0;->f:Lq1/s0;

    .line 57
    .line 58
    iget-object v0, p1, Landroidx/mediarouter/app/j0;->b:Landroid/widget/ImageView;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p1, Landroidx/mediarouter/app/j0;->c:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p1, Landroidx/mediarouter/app/j0;->g:Landroidx/mediarouter/app/o0;

    .line 69
    .line 70
    iget-object v4, v1, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 71
    .line 72
    iget-object v4, v4, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 73
    .line 74
    iget-object v4, v4, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-ne v5, v2, :cond_2

    .line 85
    .line 86
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-ne v2, p2, :cond_2

    .line 91
    .line 92
    iget v6, p1, Landroidx/mediarouter/app/j0;->e:F

    .line 93
    .line 94
    :cond_2
    iget-object v2, p1, Landroidx/mediarouter/app/j0;->a:Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Landroidx/mediarouter/app/g0;

    .line 100
    .line 101
    const/4 v4, 0x3

    .line 102
    invoke-direct {v3, v4, p1}, Landroidx/mediarouter/app/g0;-><init>(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p2}, Landroidx/mediarouter/app/o0;->b(Lq1/s0;)Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    .line 114
    .line 115
    iget-object p2, p2, Lq1/s0;->d:Ljava/lang/String;

    .line 116
    .line 117
    iget-object p1, p1, Landroidx/mediarouter/app/j0;->d:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_a

    .line 123
    .line 124
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_4
    iget-object v1, p2, Landroidx/mediarouter/app/m0;->a:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v1, Lq1/s0;

    .line 133
    .line 134
    iget-object v0, v0, Landroidx/mediarouter/app/q0;->u:Ljava/util/HashMap;

    .line 135
    .line 136
    iget-object v1, v1, Lq1/s0;->c:Ljava/lang/String;

    .line 137
    .line 138
    move-object v5, p1

    .line 139
    check-cast v5, Landroidx/mediarouter/app/h0;

    .line 140
    .line 141
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    check-cast p1, Landroidx/mediarouter/app/n0;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget-object p2, p2, Landroidx/mediarouter/app/m0;->a:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p2, Lq1/s0;

    .line 152
    .line 153
    iget-object v0, p1, Landroidx/mediarouter/app/n0;->n:Landroidx/mediarouter/app/o0;

    .line 154
    .line 155
    iget-object v1, v0, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 156
    .line 157
    iget-object v5, v1, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 158
    .line 159
    if-ne p2, v5, :cond_6

    .line 160
    .line 161
    iget-object v5, p2, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-lez v5, :cond_6

    .line 172
    .line 173
    iget-object v5, p2, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-eqz v8, :cond_6

    .line 188
    .line 189
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    check-cast v8, Lq1/s0;

    .line 194
    .line 195
    iget-object v9, v1, Landroidx/mediarouter/app/q0;->j:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-nez v9, :cond_5

    .line 202
    .line 203
    move-object p2, v8

    .line 204
    :cond_6
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/h0;->b(Lq1/s0;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p2}, Landroidx/mediarouter/app/o0;->b(Lq1/s0;)Landroid/graphics/drawable/Drawable;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iget-object v5, p1, Landroidx/mediarouter/app/n0;->f:Landroid/widget/ImageView;

    .line 212
    .line 213
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p2, Lq1/s0;->d:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v8, p1, Landroidx/mediarouter/app/n0;->h:Landroid/widget/TextView;

    .line 219
    .line 220
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p1, Landroidx/mediarouter/app/n0;->j:Landroid/widget/CheckBox;

    .line 224
    .line 225
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/n0;->d(Lq1/s0;)Z

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    iget-object v9, v1, Landroidx/mediarouter/app/q0;->l:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    if-eqz v9, :cond_8

    .line 239
    .line 240
    :cond_7
    :goto_2
    const/4 p2, 0x0

    .line 241
    goto :goto_3

    .line 242
    :cond_8
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/n0;->d(Lq1/s0;)Z

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    if-eqz v9, :cond_9

    .line 247
    .line 248
    iget-object v9, v1, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 249
    .line 250
    iget-object v9, v9, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    if-ge v9, v4, :cond_9

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_9
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/n0;->d(Lq1/s0;)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_a

    .line 268
    .line 269
    iget-object v1, v1, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 270
    .line 271
    invoke-virtual {v1}, Lq1/s0;->a()Lq1/p0;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-eqz v1, :cond_7

    .line 276
    .line 277
    iget-object v1, v1, Lq1/p0;->x:Lp/e;

    .line 278
    .line 279
    iget-object p2, p2, Lq1/s0;->c:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v1, p2}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    check-cast p2, Lq1/z;

    .line 286
    .line 287
    if-eqz p2, :cond_7

    .line 288
    .line 289
    iget-boolean p2, p2, Lq1/z;->c:Z

    .line 290
    .line 291
    if-eqz p2, :cond_7

    .line 292
    .line 293
    :cond_a
    const/4 p2, 0x1

    .line 294
    :goto_3
    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 295
    .line 296
    .line 297
    iget-object v1, p1, Landroidx/mediarouter/app/n0;->g:Landroid/widget/ProgressBar;

    .line 298
    .line 299
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    iget-object v1, p1, Landroidx/mediarouter/app/n0;->e:Landroid/view/View;

    .line 306
    .line 307
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 311
    .line 312
    .line 313
    if-nez p2, :cond_c

    .line 314
    .line 315
    if-eqz v8, :cond_b

    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_b
    const/4 v4, 0x0

    .line 319
    goto :goto_5

    .line 320
    :cond_c
    :goto_4
    const/4 v4, 0x1

    .line 321
    :goto_5
    iget-object v5, p1, Landroidx/mediarouter/app/h0;->b:Landroid/widget/ImageButton;

    .line 322
    .line 323
    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 324
    .line 325
    .line 326
    if-nez p2, :cond_e

    .line 327
    .line 328
    if-eqz v8, :cond_d

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_d
    const/4 v2, 0x0

    .line 332
    :cond_e
    :goto_6
    iget-object v4, p1, Landroidx/mediarouter/app/h0;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 333
    .line 334
    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 335
    .line 336
    .line 337
    iget-object v2, p1, Landroidx/mediarouter/app/n0;->m:Landroidx/mediarouter/app/g0;

    .line 338
    .line 339
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    .line 344
    .line 345
    if-eqz v8, :cond_f

    .line 346
    .line 347
    iget-object v2, p1, Landroidx/mediarouter/app/h0;->a:Lq1/s0;

    .line 348
    .line 349
    invoke-virtual {v2}, Lq1/s0;->e()Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-nez v2, :cond_f

    .line 354
    .line 355
    iget v3, p1, Landroidx/mediarouter/app/n0;->l:I

    .line 356
    .line 357
    :cond_f
    iget-object v2, p1, Landroidx/mediarouter/app/n0;->i:Landroid/widget/RelativeLayout;

    .line 358
    .line 359
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 364
    .line 365
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    .line 367
    .line 368
    iget p1, p1, Landroidx/mediarouter/app/n0;->k:F

    .line 369
    .line 370
    if-nez p2, :cond_11

    .line 371
    .line 372
    if-eqz v8, :cond_10

    .line 373
    .line 374
    goto :goto_7

    .line 375
    :cond_10
    move v2, p1

    .line 376
    goto :goto_8

    .line 377
    :cond_11
    :goto_7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 378
    .line 379
    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 380
    .line 381
    .line 382
    if-nez p2, :cond_13

    .line 383
    .line 384
    if-nez v8, :cond_12

    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_12
    move v6, p1

    .line 388
    :cond_13
    :goto_9
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 389
    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_14
    check-cast p1, Landroidx/mediarouter/app/l0;

    .line 393
    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    iget-object p2, p2, Landroidx/mediarouter/app/m0;->a:Ljava/lang/Object;

    .line 398
    .line 399
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p2

    .line 403
    iget-object p1, p1, Landroidx/mediarouter/app/l0;->a:Landroid/widget/TextView;

    .line 404
    .line 405
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    .line 407
    .line 408
    goto :goto_a

    .line 409
    :cond_15
    iget-object v1, p2, Landroidx/mediarouter/app/m0;->a:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v1, Lq1/s0;

    .line 412
    .line 413
    iget-object v0, v0, Landroidx/mediarouter/app/q0;->u:Ljava/util/HashMap;

    .line 414
    .line 415
    iget-object v1, v1, Lq1/s0;->c:Ljava/lang/String;

    .line 416
    .line 417
    move-object v4, p1

    .line 418
    check-cast v4, Landroidx/mediarouter/app/h0;

    .line 419
    .line 420
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    check-cast p1, Landroidx/mediarouter/app/k0;

    .line 424
    .line 425
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 426
    .line 427
    iget-object v1, p1, Landroidx/mediarouter/app/k0;->g:Landroidx/mediarouter/app/o0;

    .line 428
    .line 429
    iget-object v1, v1, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 430
    .line 431
    iget-boolean v4, v1, Landroidx/mediarouter/app/q0;->R:Z

    .line 432
    .line 433
    if-eqz v4, :cond_16

    .line 434
    .line 435
    iget-object v1, v1, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 436
    .line 437
    iget-object v1, v1, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 438
    .line 439
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    if-le v1, v2, :cond_16

    .line 448
    .line 449
    iget v3, p1, Landroidx/mediarouter/app/k0;->f:I

    .line 450
    .line 451
    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 456
    .line 457
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    .line 459
    .line 460
    iget-object p2, p2, Landroidx/mediarouter/app/m0;->a:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast p2, Lq1/s0;

    .line 463
    .line 464
    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/h0;->b(Lq1/s0;)V

    .line 465
    .line 466
    .line 467
    iget-object p2, p2, Lq1/s0;->d:Ljava/lang/String;

    .line 468
    .line 469
    iget-object p1, p1, Landroidx/mediarouter/app/k0;->e:Landroid/widget/TextView;

    .line 470
    .line 471
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    .line 473
    .line 474
    :goto_a
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Landroidx/mediarouter/app/o0;->b:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    if-eq p2, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p2, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p2, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-ne p2, v0, :cond_0

    .line 15
    .line 16
    const p2, 0x7f0e00c8

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Landroidx/mediarouter/app/j0;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/j0;-><init>(Landroidx/mediarouter/app/o0;Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    return-object p2

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    const p2, 0x7f0e00cc

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance p2, Landroidx/mediarouter/app/n0;

    .line 43
    .line 44
    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/n0;-><init>(Landroidx/mediarouter/app/o0;Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    return-object p2

    .line 48
    :cond_2
    const p2, 0x7f0e00ca

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Landroidx/mediarouter/app/l0;

    .line 56
    .line 57
    invoke-direct {p2, p1}, Landroidx/mediarouter/app/l0;-><init>(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    return-object p2

    .line 61
    :cond_3
    const p2, 0x7f0e00c9

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance p2, Landroidx/mediarouter/app/k0;

    .line 69
    .line 70
    invoke-direct {p2, p0, p1}, Landroidx/mediarouter/app/k0;-><init>(Landroidx/mediarouter/app/o0;Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    return-object p2
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/p1;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->onViewRecycled(Landroidx/recyclerview/widget/p1;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/mediarouter/app/q0;->u:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
