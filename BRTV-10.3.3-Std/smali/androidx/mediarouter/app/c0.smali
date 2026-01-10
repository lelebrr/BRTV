.class public final Landroidx/mediarouter/app/c0;
.super Landroidx/appcompat/app/i0;
.source "MyApplication"


# instance fields
.field public final e:Lq1/u0;

.field public final f:Landroidx/mediarouter/app/i0;

.field public final g:Landroid/content/Context;

.field public h:Lq1/l0;

.field public i:Ljava/util/ArrayList;

.field public j:Landroidx/mediarouter/app/b0;

.field public k:Landroidx/recyclerview/widget/RecyclerView;

.field public l:Z

.field public m:Lq1/s0;

.field public final n:J

.field public o:J

.field public final p:Landroidx/mediarouter/app/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lo9/d;->g(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lo9/d;->h(Landroid/view/ContextThemeWrapper;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/i0;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lq1/l0;->c:Lq1/l0;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/mediarouter/app/c0;->h:Lq1/l0;

    .line 16
    .line 17
    new-instance p1, Landroidx/mediarouter/app/c;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p1, v0, p0}, Landroidx/mediarouter/app/c;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/mediarouter/app/c0;->p:Landroidx/mediarouter/app/c;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lq1/u0;->d(Landroid/content/Context;)Lq1/u0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Landroidx/mediarouter/app/c0;->e:Lq1/u0;

    .line 34
    .line 35
    new-instance v0, Landroidx/mediarouter/app/i0;

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    invoke-direct {v0, p0, v1}, Landroidx/mediarouter/app/i0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Landroidx/mediarouter/app/c0;->f:Landroidx/mediarouter/app/i0;

    .line 42
    .line 43
    iput-object p1, p0, Landroidx/mediarouter/app/c0;->g:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const v0, 0x7f0c004f

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    int-to-long v0, p1

    .line 57
    iput-wide v0, p0, Landroidx/mediarouter/app/c0;->n:J

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final i()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/c0;->m:Lq1/s0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/c0;->l:Z

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/mediarouter/app/c0;->e:Lq1/u0;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lq1/u0;->b()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v1, v1, Lq1/h;->i:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .line 34
    .line 35
    if-lez v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lq1/s0;

    .line 42
    .line 43
    invoke-virtual {v1}, Lq1/s0;->d()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    iget-boolean v3, v1, Lq1/s0;->g:Z

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    iget-object v3, p0, Landroidx/mediarouter/app/c0;->h:Lq1/l0;

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Lq1/s0;->h(Lq1/l0;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :goto_1
    move v1, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    sget-object v1, Landroidx/mediarouter/app/e;->c:Landroidx/mediarouter/app/e;

    .line 68
    .line 69
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    iget-wide v3, p0, Landroidx/mediarouter/app/c0;->o:J

    .line 77
    .line 78
    sub-long/2addr v1, v3

    .line 79
    iget-wide v3, p0, Landroidx/mediarouter/app/c0;->n:J

    .line 80
    .line 81
    cmp-long v5, v1, v3

    .line 82
    .line 83
    if-ltz v5, :cond_3

    .line 84
    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    iput-wide v1, p0, Landroidx/mediarouter/app/c0;->o:J

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/mediarouter/app/c0;->i:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Landroidx/mediarouter/app/c0;->i:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Landroidx/mediarouter/app/c0;->j:Landroidx/mediarouter/app/b0;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/mediarouter/app/b0;->a()V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    iget-object v1, p0, Landroidx/mediarouter/app/c0;->p:Landroidx/mediarouter/app/c;

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-wide v5, p0, Landroidx/mediarouter/app/c0;->o:J

    .line 118
    .line 119
    add-long/2addr v5, v3

    .line 120
    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_2
    return-void
.end method

.method public final j(Lq1/l0;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/c0;->h:Lq1/l0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lq1/l0;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/mediarouter/app/c0;->h:Lq1/l0;

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/mediarouter/app/c0;->l:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/c0;->e:Lq1/u0;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/mediarouter/app/c0;->f:Landroidx/mediarouter/app/i0;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lq1/u0;->h(Lq1/m0;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, p1, v1, v2}, Lq1/u0;->a(Lq1/l0;Lq1/m0;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/c0;->i()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "selector must not be null"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/c0;->l:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/mediarouter/app/c0;->h:Lq1/l0;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/mediarouter/app/c0;->f:Landroidx/mediarouter/app/i0;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/mediarouter/app/c0;->e:Lq1/u0;

    .line 12
    .line 13
    invoke-virtual {v3, v1, v2, v0}, Lq1/u0;->a(Lq1/l0;Lq1/m0;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/mediarouter/app/c0;->i()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/i0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e00d1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/i0;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/mediarouter/app/c0;->g:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1}, Lo9/d;->t(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const v1, 0x7f0602b5

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const v1, 0x7f0602b4

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-static {p1, v1}, Lu7/d;->i(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/mediarouter/app/c0;->i:Ljava/util/ArrayList;

    .line 46
    .line 47
    const p1, 0x7f0b02ed

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/ImageButton;

    .line 55
    .line 56
    new-instance v0, Landroidx/mediarouter/app/g0;

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    invoke-direct {v0, v1, p0}, Landroidx/mediarouter/app/g0;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Landroidx/mediarouter/app/b0;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/b0;-><init>(Landroidx/mediarouter/app/c0;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Landroidx/mediarouter/app/c0;->j:Landroidx/mediarouter/app/b0;

    .line 71
    .line 72
    const p1, 0x7f0b02ef

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    .line 81
    iput-object p1, p0, Landroidx/mediarouter/app/c0;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    iget-object v0, p0, Landroidx/mediarouter/app/c0;->j:Landroidx/mediarouter/app/b0;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Landroidx/mediarouter/app/c0;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Landroidx/mediarouter/app/c0;->g:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const v1, 0x7f050002

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/4 v2, -0x1

    .line 113
    if-nez v0, :cond_1

    .line 114
    .line 115
    const/4 v0, -0x1

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    invoke-static {p1}, Ln5/d;->v(Landroid/content/Context;)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_2

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    const/4 v2, -0x2

    .line 133
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/c0;->l:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/mediarouter/app/c0;->e:Lq1/u0;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/mediarouter/app/c0;->f:Landroidx/mediarouter/app/i0;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lq1/u0;->h(Lq1/m0;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/mediarouter/app/c0;->p:Landroidx/mediarouter/app/c;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
