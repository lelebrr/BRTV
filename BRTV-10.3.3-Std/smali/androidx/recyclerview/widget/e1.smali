.class public final Landroidx/recyclerview/widget/e1;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/d1;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/recyclerview/widget/e1;->d:Ljava/util/List;

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Landroidx/recyclerview/widget/e1;->e:I

    .line 31
    .line 32
    iput p1, p0, Landroidx/recyclerview/widget/e1;->f:I

    .line 33
    .line 34
    return-void
.end method

.method public static d(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    check-cast v2, Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-static {v2, v1}, Landroidx/recyclerview/widget/e1;->d(Landroid/view/ViewGroup;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-nez p1, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v0, 0x4

    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/p1;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/p1;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/r1;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v2, Landroidx/recyclerview/widget/r1;->e:Landroidx/recyclerview/widget/q1;

    .line 14
    .line 15
    instance-of v4, v2, Landroidx/recyclerview/widget/q1;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/recyclerview/widget/q1;->e:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ln0/b;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v2, v3

    .line 29
    :goto_0
    invoke-static {v0, v2}, Ln0/s0;->q(Landroid/view/View;Ln0/b;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    if-eqz p2, :cond_6

    .line 33
    .line 34
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Landroidx/recyclerview/widget/f1;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    check-cast p2, Landroidx/leanback/widget/d;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/d;->a(Landroidx/recyclerview/widget/p1;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_1
    if-ge v0, p2, :cond_3

    .line 51
    .line 52
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroidx/recyclerview/widget/f1;

    .line 59
    .line 60
    check-cast v2, Landroidx/leanback/widget/d;

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Landroidx/leanback/widget/d;->a(Landroidx/recyclerview/widget/p1;)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 69
    .line 70
    if-eqz p2, :cond_4

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/k0;->onViewRecycled(Landroidx/recyclerview/widget/p1;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 76
    .line 77
    if-eqz p2, :cond_5

    .line 78
    .line 79
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/e2;

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/e2;->d(Landroidx/recyclerview/widget/p1;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 85
    .line 86
    if-eqz p2, :cond_6

    .line 87
    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v0, "dispatchViewRecycled: "

    .line 91
    .line 92
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const-string v0, "RecyclerView"

    .line 103
    .line 104
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :cond_6
    iput-object v3, p1, Landroidx/recyclerview/widget/p1;->mBindingAdapter:Landroidx/recyclerview/widget/k0;

    .line 108
    .line 109
    iput-object v3, p1, Landroidx/recyclerview/widget/p1;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/recyclerview/widget/e1;->c()Landroidx/recyclerview/widget/d1;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/d1;->a(I)Landroidx/recyclerview/widget/c1;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget-object v1, v1, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    .line 127
    .line 128
    iget-object p2, p2, Landroidx/recyclerview/widget/d1;->a:Landroid/util/SparseArray;

    .line 129
    .line 130
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    check-cast p2, Landroidx/recyclerview/widget/c1;

    .line 135
    .line 136
    iget p2, p2, Landroidx/recyclerview/widget/c1;->b:I

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-gt p2, v0, :cond_7

    .line 143
    .line 144
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 145
    .line 146
    invoke-static {p1}, Ll5/a;->e(Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 151
    .line 152
    if-eqz p2, :cond_9

    .line 153
    .line 154
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-nez p2, :cond_8

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 162
    .line 163
    const-string p2, "this scrap item already exists"

    .line 164
    .line 165
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_9
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->resetInternal()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :goto_3
    return-void
.end method

.method public final b(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/l1;->b()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 14
    .line 15
    iget-boolean v1, v1, Landroidx/recyclerview/widget/l1;->g:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    const-string v2, "invalid position "

    .line 31
    .line 32
    const-string v3, ". State item count is "

    .line 33
    .line 34
    invoke-static {p1, v2, v3}, La/e;->u(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/l1;->b()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1
.end method

.method public final c()Landroidx/recyclerview/widget/d1;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/recyclerview/widget/d1;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Landroidx/recyclerview/widget/d1;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, v0, Landroidx/recyclerview/widget/d1;->b:I

    .line 19
    .line 20
    new-instance v1, Ljava/util/IdentityHashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Landroidx/recyclerview/widget/d1;->c:Ljava/util/Set;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/e1;->e()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 37
    .line 38
    return-object v0
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/recyclerview/widget/d1;->c:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/k0;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/d1;->c:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    const/4 p2, 0x0

    .line 20
    :goto_0
    iget-object v1, v0, Landroidx/recyclerview/widget/d1;->a:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge p2, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/recyclerview/widget/c1;

    .line 37
    .line 38
    iget-object v1, v1, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v2, v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroidx/recyclerview/widget/p1;

    .line 52
    .line 53
    iget-object v3, v3, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 54
    .line 55
    invoke-static {v3}, Ll5/a;->e(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/e1;->h(I)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/r;

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/recyclerview/widget/r;->c:[I

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    iput v1, v0, Landroidx/recyclerview/widget/r;->d:I

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final h(I)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 2
    .line 3
    const-string v1, "RecyclerView"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Recycling cached view at index "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroidx/recyclerview/widget/p1;

    .line 31
    .line 32
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v4, "CachedViewHolder to be recycled: "

    .line 39
    .line 40
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 v1, 0x1

    .line 54
    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/e1;->a(Landroidx/recyclerview/widget/p1;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isTmpDetached()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isScrap()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->unScrap()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->clearReturnedFromScrapFlag()V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/e1;->j(Landroidx/recyclerview/widget/p1;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/s0;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->isRecyclable()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/s0;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/s0;->d(Landroidx/recyclerview/widget/p1;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/p1;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isScrap()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    if-nez v0, :cond_12

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_a

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isTmpDetached()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_11

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->shouldIgnore()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_10

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->doesTransientStatePreventRecycling()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/k0;->onFailedToRecycleView(Landroidx/recyclerview/widget/p1;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v4, 0x0

    .line 52
    :goto_0
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 53
    .line 54
    iget-object v6, p0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 55
    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "cached view received recycle internal? "

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v1}, La/e;->p(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_3
    :goto_1
    if-nez v4, :cond_6

    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isRecyclable()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 95
    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v4, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    .line 101
    .line 102
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const-string v4, "RecyclerView"

    .line 117
    .line 118
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_5
    :goto_2
    const/4 v2, 0x0

    .line 122
    goto/16 :goto_9

    .line 123
    .line 124
    :cond_6
    :goto_3
    iget v4, p0, Landroidx/recyclerview/widget/e1;->f:I

    .line 125
    .line 126
    if-lez v4, :cond_d

    .line 127
    .line 128
    const/16 v4, 0x20e

    .line 129
    .line 130
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/p1;->hasAnyOfTheFlags(I)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_d

    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    iget v5, p0, Landroidx/recyclerview/widget/e1;->f:I

    .line 141
    .line 142
    if-lt v4, v5, :cond_7

    .line 143
    .line 144
    if-lez v4, :cond_7

    .line 145
    .line 146
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/e1;->h(I)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v4, v4, -0x1

    .line 150
    .line 151
    :cond_7
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 152
    .line 153
    if-eqz v5, :cond_c

    .line 154
    .line 155
    if-lez v4, :cond_c

    .line 156
    .line 157
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/r;

    .line 158
    .line 159
    iget v7, p1, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 160
    .line 161
    iget-object v8, v5, Landroidx/recyclerview/widget/r;->c:[I

    .line 162
    .line 163
    if-eqz v8, :cond_9

    .line 164
    .line 165
    iget v8, v5, Landroidx/recyclerview/widget/r;->d:I

    .line 166
    .line 167
    mul-int/lit8 v8, v8, 0x2

    .line 168
    .line 169
    const/4 v9, 0x0

    .line 170
    :goto_4
    if-ge v9, v8, :cond_9

    .line 171
    .line 172
    iget-object v10, v5, Landroidx/recyclerview/widget/r;->c:[I

    .line 173
    .line 174
    aget v10, v10, v9

    .line 175
    .line 176
    if-ne v10, v7, :cond_8

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_8
    add-int/lit8 v9, v9, 0x2

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_9
    add-int/lit8 v4, v4, -0x1

    .line 183
    .line 184
    :goto_5
    if-ltz v4, :cond_b

    .line 185
    .line 186
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    check-cast v5, Landroidx/recyclerview/widget/p1;

    .line 191
    .line 192
    iget v5, v5, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 193
    .line 194
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/r;

    .line 195
    .line 196
    iget-object v8, v7, Landroidx/recyclerview/widget/r;->c:[I

    .line 197
    .line 198
    if-eqz v8, :cond_b

    .line 199
    .line 200
    iget v8, v7, Landroidx/recyclerview/widget/r;->d:I

    .line 201
    .line 202
    mul-int/lit8 v8, v8, 0x2

    .line 203
    .line 204
    const/4 v9, 0x0

    .line 205
    :goto_6
    if-ge v9, v8, :cond_b

    .line 206
    .line 207
    iget-object v10, v7, Landroidx/recyclerview/widget/r;->c:[I

    .line 208
    .line 209
    aget v10, v10, v9

    .line 210
    .line 211
    if-ne v10, v5, :cond_a

    .line 212
    .line 213
    add-int/lit8 v4, v4, -0x1

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_a
    add-int/lit8 v9, v9, 0x2

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_b
    add-int/2addr v4, v2

    .line 220
    :cond_c
    :goto_7
    invoke-virtual {v6, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    const/4 v4, 0x1

    .line 224
    goto :goto_8

    .line 225
    :cond_d
    const/4 v4, 0x0

    .line 226
    :goto_8
    if-nez v4, :cond_e

    .line 227
    .line 228
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/e1;->a(Landroidx/recyclerview/widget/p1;Z)V

    .line 229
    .line 230
    .line 231
    move v1, v4

    .line 232
    goto :goto_9

    .line 233
    :cond_e
    move v1, v4

    .line 234
    goto :goto_2

    .line 235
    :goto_9
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/e2;

    .line 236
    .line 237
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/e2;->d(Landroidx/recyclerview/widget/p1;)V

    .line 238
    .line 239
    .line 240
    if-nez v1, :cond_f

    .line 241
    .line 242
    if-nez v2, :cond_f

    .line 243
    .line 244
    if-eqz v0, :cond_f

    .line 245
    .line 246
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 247
    .line 248
    invoke-static {v0}, Ll5/a;->e(Landroid/view/View;)V

    .line 249
    .line 250
    .line 251
    const/4 v0, 0x0

    .line 252
    iput-object v0, p1, Landroidx/recyclerview/widget/p1;->mBindingAdapter:Landroidx/recyclerview/widget/k0;

    .line 253
    .line 254
    iput-object v0, p1, Landroidx/recyclerview/widget/p1;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 255
    .line 256
    :cond_f
    return-void

    .line 257
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 258
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 262
    .line 263
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v3, v0}, La/e;->p(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p1

    .line 274
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 275
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 279
    .line 280
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-static {v3, v1}, La/e;->p(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v0

    .line 294
    :cond_12
    :goto_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 295
    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v5, "Scrapped or attached views may not be recycled. isScrap:"

    .line 299
    .line 300
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isScrap()Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v5, " isAttached:"

    .line 311
    .line 312
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 316
    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    if-eqz p1, :cond_13

    .line 322
    .line 323
    const/4 v1, 0x1

    .line 324
    :cond_13
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v0
.end method

.method public final k(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/p1;->hasAnyOfTheFlags(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isUpdated()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/p1;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 38
    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/p1;->setScrapContainer(Landroidx/recyclerview/widget/e1;Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 75
    .line 76
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v0}, La/e;->p(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/p1;->setScrapContainer(Landroidx/recyclerview/widget/e1;Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :goto_2
    return-void
.end method

.method public final l(IJ)Landroidx/recyclerview/widget/p1;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-ltz v1, :cond_47

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/recyclerview/widget/l1;->b()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v1, v3, :cond_47

    .line 16
    .line 17
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 18
    .line 19
    iget-boolean v3, v3, Landroidx/recyclerview/widget/l1;->g:Z

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v6, 0x1

    .line 23
    const/16 v7, 0x20

    .line 24
    .line 25
    if-eqz v3, :cond_6

    .line 26
    .line 27
    iget-object v3, v0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz v3, :cond_4

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const/4 v8, 0x0

    .line 39
    :goto_0
    if-ge v8, v3, :cond_2

    .line 40
    .line 41
    iget-object v9, v0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    check-cast v9, Landroidx/recyclerview/widget/p1;

    .line 48
    .line 49
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    if-nez v10, :cond_1

    .line 54
    .line 55
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-ne v10, v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 69
    .line 70
    invoke-virtual {v8}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_4

    .line 75
    .line 76
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 77
    .line 78
    invoke-virtual {v8, v1, v4}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-lez v8, :cond_4

    .line 83
    .line 84
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 85
    .line 86
    invoke-virtual {v9}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-ge v8, v9, :cond_4

    .line 91
    .line 92
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 93
    .line 94
    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/k0;->getItemId(I)J

    .line 95
    .line 96
    .line 97
    move-result-wide v8

    .line 98
    const/4 v10, 0x0

    .line 99
    :goto_1
    if-ge v10, v3, :cond_4

    .line 100
    .line 101
    iget-object v11, v0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    check-cast v11, Landroidx/recyclerview/widget/p1;

    .line 108
    .line 109
    invoke-virtual {v11}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-nez v12, :cond_3

    .line 114
    .line 115
    invoke-virtual {v11}, Landroidx/recyclerview/widget/p1;->getItemId()J

    .line 116
    .line 117
    .line 118
    move-result-wide v12

    .line 119
    cmp-long v14, v12, v8

    .line 120
    .line 121
    if-nez v14, :cond_3

    .line 122
    .line 123
    invoke-virtual {v11, v7}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 124
    .line 125
    .line 126
    move-object v9, v11

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    :goto_2
    const/4 v9, 0x0

    .line 132
    :goto_3
    if-eqz v9, :cond_5

    .line 133
    .line 134
    const/4 v3, 0x1

    .line 135
    goto :goto_4

    .line 136
    :cond_5
    const/4 v3, 0x0

    .line 137
    goto :goto_4

    .line 138
    :cond_6
    const/4 v3, 0x0

    .line 139
    const/4 v9, 0x0

    .line 140
    :goto_4
    iget-object v8, v0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 141
    .line 142
    iget-object v10, v0, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 143
    .line 144
    const-string v11, "RecyclerView"

    .line 145
    .line 146
    if-nez v9, :cond_1d

    .line 147
    .line 148
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    const/4 v12, 0x0

    .line 153
    :goto_5
    if-ge v12, v9, :cond_9

    .line 154
    .line 155
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    check-cast v13, Landroidx/recyclerview/widget/p1;

    .line 160
    .line 161
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    if-nez v14, :cond_8

    .line 166
    .line 167
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 168
    .line 169
    .line 170
    move-result v14

    .line 171
    if-ne v14, v1, :cond_8

    .line 172
    .line 173
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    if-nez v14, :cond_8

    .line 178
    .line 179
    iget-object v14, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 180
    .line 181
    iget-boolean v14, v14, Landroidx/recyclerview/widget/l1;->g:Z

    .line 182
    .line 183
    if-nez v14, :cond_7

    .line 184
    .line 185
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 186
    .line 187
    .line 188
    move-result v14

    .line 189
    if-nez v14, :cond_8

    .line 190
    .line 191
    :cond_7
    invoke-virtual {v13, v7}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 192
    .line 193
    .line 194
    move-object v9, v13

    .line 195
    goto/16 :goto_9

    .line 196
    .line 197
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_9
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    .line 201
    .line 202
    iget-object v9, v9, Landroidx/recyclerview/widget/d;->c:Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    const/4 v13, 0x0

    .line 209
    :goto_6
    if-ge v13, v12, :cond_b

    .line 210
    .line 211
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v14

    .line 215
    check-cast v14, Landroid/view/View;

    .line 216
    .line 217
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 218
    .line 219
    .line 220
    move-result-object v15

    .line 221
    invoke-virtual {v15}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    if-ne v5, v1, :cond_a

    .line 226
    .line 227
    invoke-virtual {v15}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-nez v5, :cond_a

    .line 232
    .line 233
    invoke-virtual {v15}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-nez v5, :cond_a

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_b
    const/4 v14, 0x0

    .line 244
    :goto_7
    if-eqz v14, :cond_f

    .line 245
    .line 246
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    .line 251
    .line 252
    iget-object v12, v9, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/i0;

    .line 253
    .line 254
    iget-object v12, v12, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 257
    .line 258
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    if-ltz v12, :cond_e

    .line 263
    .line 264
    iget-object v13, v9, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    .line 265
    .line 266
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/c;->e(I)Z

    .line 267
    .line 268
    .line 269
    move-result v15

    .line 270
    if-eqz v15, :cond_d

    .line 271
    .line 272
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/c;->b(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/d;->l(Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    .line 279
    .line 280
    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/d;->j(Landroid/view/View;)I

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    const/4 v12, -0x1

    .line 285
    if-eq v9, v12, :cond_c

    .line 286
    .line 287
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/d;

    .line 288
    .line 289
    invoke-virtual {v12, v9}, Landroidx/recyclerview/widget/d;->c(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/e1;->k(Landroid/view/View;)V

    .line 293
    .line 294
    .line 295
    const/16 v9, 0x2020

    .line 296
    .line 297
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 298
    .line 299
    .line 300
    move-object v9, v5

    .line 301
    goto/16 :goto_9

    .line 302
    .line 303
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 304
    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v4, "layout index should not be -1 after unhiding a view:"

    .line 308
    .line 309
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-static {v2, v3}, La/e;->p(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v1

    .line 323
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 324
    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string v3, "trying to unhide a view that was not hidden"

    .line 328
    .line 329
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    throw v1

    .line 343
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 344
    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v3, "view is not a child, cannot hide "

    .line 348
    .line 349
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v1

    .line 363
    :cond_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    const/4 v9, 0x0

    .line 368
    :goto_8
    if-ge v9, v5, :cond_12

    .line 369
    .line 370
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v12

    .line 374
    check-cast v12, Landroidx/recyclerview/widget/p1;

    .line 375
    .line 376
    invoke-virtual {v12}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 377
    .line 378
    .line 379
    move-result v13

    .line 380
    if-nez v13, :cond_11

    .line 381
    .line 382
    invoke-virtual {v12}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 383
    .line 384
    .line 385
    move-result v13

    .line 386
    if-ne v13, v1, :cond_11

    .line 387
    .line 388
    invoke-virtual {v12}, Landroidx/recyclerview/widget/p1;->isAttachedToTransitionOverlay()Z

    .line 389
    .line 390
    .line 391
    move-result v13

    .line 392
    if-nez v13, :cond_11

    .line 393
    .line 394
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 398
    .line 399
    if-eqz v5, :cond_10

    .line 400
    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    const-string v9, "getScrapOrHiddenOrCachedHolderForPosition("

    .line 404
    .line 405
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v9, ") found match in cache: "

    .line 412
    .line 413
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    :cond_10
    move-object v9, v12

    .line 427
    goto :goto_9

    .line 428
    :cond_11
    add-int/lit8 v9, v9, 0x1

    .line 429
    .line 430
    goto :goto_8

    .line 431
    :cond_12
    const/4 v9, 0x0

    .line 432
    :goto_9
    if-eqz v9, :cond_1d

    .line 433
    .line 434
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    if-eqz v5, :cond_15

    .line 439
    .line 440
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 441
    .line 442
    if-eqz v5, :cond_14

    .line 443
    .line 444
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 445
    .line 446
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->g:Z

    .line 447
    .line 448
    if-eqz v5, :cond_13

    .line 449
    .line 450
    goto :goto_a

    .line 451
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 452
    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    const-string v4, "should not receive a removed view unless it is pre layout"

    .line 456
    .line 457
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-static {v2, v3}, La/e;->p(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v1

    .line 468
    :cond_14
    :goto_a
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 469
    .line 470
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->g:Z

    .line 471
    .line 472
    goto :goto_b

    .line 473
    :cond_15
    iget v5, v9, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 474
    .line 475
    if-ltz v5, :cond_1c

    .line 476
    .line 477
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 478
    .line 479
    invoke-virtual {v12}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 480
    .line 481
    .line 482
    move-result v12

    .line 483
    if-ge v5, v12, :cond_1c

    .line 484
    .line 485
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 486
    .line 487
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->g:Z

    .line 488
    .line 489
    if-nez v5, :cond_17

    .line 490
    .line 491
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 492
    .line 493
    iget v12, v9, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 494
    .line 495
    invoke-virtual {v5, v12}, Landroidx/recyclerview/widget/k0;->getItemViewType(I)I

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 500
    .line 501
    .line 502
    move-result v12

    .line 503
    if-eq v5, v12, :cond_17

    .line 504
    .line 505
    :cond_16
    const/4 v5, 0x0

    .line 506
    goto :goto_b

    .line 507
    :cond_17
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 508
    .line 509
    invoke-virtual {v5}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    if-eqz v5, :cond_18

    .line 514
    .line 515
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getItemId()J

    .line 516
    .line 517
    .line 518
    move-result-wide v12

    .line 519
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 520
    .line 521
    iget v14, v9, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 522
    .line 523
    invoke-virtual {v5, v14}, Landroidx/recyclerview/widget/k0;->getItemId(I)J

    .line 524
    .line 525
    .line 526
    move-result-wide v14

    .line 527
    cmp-long v5, v12, v14

    .line 528
    .line 529
    if-nez v5, :cond_16

    .line 530
    .line 531
    :cond_18
    const/4 v5, 0x1

    .line 532
    :goto_b
    if-nez v5, :cond_1b

    .line 533
    .line 534
    const/4 v5, 0x4

    .line 535
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isScrap()Z

    .line 539
    .line 540
    .line 541
    move-result v5

    .line 542
    if-eqz v5, :cond_19

    .line 543
    .line 544
    iget-object v5, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 545
    .line 546
    invoke-virtual {v2, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->unScrap()V

    .line 550
    .line 551
    .line 552
    goto :goto_c

    .line 553
    :cond_19
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    .line 554
    .line 555
    .line 556
    move-result v5

    .line 557
    if-eqz v5, :cond_1a

    .line 558
    .line 559
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->clearReturnedFromScrapFlag()V

    .line 560
    .line 561
    .line 562
    :cond_1a
    :goto_c
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/e1;->j(Landroidx/recyclerview/widget/p1;)V

    .line 563
    .line 564
    .line 565
    const/4 v9, 0x0

    .line 566
    goto :goto_d

    .line 567
    :cond_1b
    const/4 v3, 0x1

    .line 568
    goto :goto_d

    .line 569
    :cond_1c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 570
    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    const-string v4, "Inconsistency detected. Invalid view holder adapter position"

    .line 574
    .line 575
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-static {v2, v3}, La/e;->p(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    throw v1

    .line 589
    :cond_1d
    :goto_d
    const-wide/16 v17, 0x0

    .line 590
    .line 591
    const-wide v19, 0x7fffffffffffffffL

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    if-nez v9, :cond_32

    .line 597
    .line 598
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 599
    .line 600
    invoke-virtual {v5, v1, v4}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    if-ltz v5, :cond_31

    .line 605
    .line 606
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 607
    .line 608
    invoke-virtual {v12}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    .line 609
    .line 610
    .line 611
    move-result v12

    .line 612
    if-ge v5, v12, :cond_31

    .line 613
    .line 614
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 615
    .line 616
    invoke-virtual {v12, v5}, Landroidx/recyclerview/widget/k0;->getItemViewType(I)I

    .line 617
    .line 618
    .line 619
    move-result v12

    .line 620
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 621
    .line 622
    invoke-virtual {v13}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 623
    .line 624
    .line 625
    move-result v13

    .line 626
    if-eqz v13, :cond_26

    .line 627
    .line 628
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 629
    .line 630
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/k0;->getItemId(I)J

    .line 631
    .line 632
    .line 633
    move-result-wide v23

    .line 634
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 635
    .line 636
    .line 637
    move-result v9

    .line 638
    sub-int/2addr v9, v6

    .line 639
    :goto_e
    if-ltz v9, :cond_20

    .line 640
    .line 641
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v13

    .line 645
    check-cast v13, Landroidx/recyclerview/widget/p1;

    .line 646
    .line 647
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->getItemId()J

    .line 648
    .line 649
    .line 650
    move-result-wide v25

    .line 651
    cmp-long v27, v25, v23

    .line 652
    .line 653
    if-nez v27, :cond_1f

    .line 654
    .line 655
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->wasReturnedFromScrap()Z

    .line 656
    .line 657
    .line 658
    move-result v25

    .line 659
    if-nez v25, :cond_1f

    .line 660
    .line 661
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 662
    .line 663
    .line 664
    move-result v14

    .line 665
    if-ne v12, v14, :cond_1e

    .line 666
    .line 667
    invoke-virtual {v13, v7}, Landroidx/recyclerview/widget/p1;->addFlags(I)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 671
    .line 672
    .line 673
    move-result v7

    .line 674
    if-eqz v7, :cond_24

    .line 675
    .line 676
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 677
    .line 678
    iget-boolean v7, v7, Landroidx/recyclerview/widget/l1;->g:Z

    .line 679
    .line 680
    if-nez v7, :cond_24

    .line 681
    .line 682
    const/4 v7, 0x2

    .line 683
    const/16 v8, 0xe

    .line 684
    .line 685
    invoke-virtual {v13, v7, v8}, Landroidx/recyclerview/widget/p1;->setFlags(II)V

    .line 686
    .line 687
    .line 688
    goto :goto_10

    .line 689
    :cond_1e
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    iget-object v14, v13, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 693
    .line 694
    invoke-virtual {v2, v14, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 695
    .line 696
    .line 697
    iget-object v13, v13, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 698
    .line 699
    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 700
    .line 701
    .line 702
    move-result-object v13

    .line 703
    const/4 v14, 0x0

    .line 704
    iput-object v14, v13, Landroidx/recyclerview/widget/p1;->mScrapContainer:Landroidx/recyclerview/widget/e1;

    .line 705
    .line 706
    iput-boolean v4, v13, Landroidx/recyclerview/widget/p1;->mInChangeScrap:Z

    .line 707
    .line 708
    invoke-virtual {v13}, Landroidx/recyclerview/widget/p1;->clearReturnedFromScrapFlag()V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/e1;->j(Landroidx/recyclerview/widget/p1;)V

    .line 712
    .line 713
    .line 714
    :cond_1f
    add-int/lit8 v9, v9, -0x1

    .line 715
    .line 716
    goto :goto_e

    .line 717
    :cond_20
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 718
    .line 719
    .line 720
    move-result v7

    .line 721
    sub-int/2addr v7, v6

    .line 722
    :goto_f
    if-ltz v7, :cond_22

    .line 723
    .line 724
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v9

    .line 728
    check-cast v9, Landroidx/recyclerview/widget/p1;

    .line 729
    .line 730
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getItemId()J

    .line 731
    .line 732
    .line 733
    move-result-wide v13

    .line 734
    cmp-long v10, v13, v23

    .line 735
    .line 736
    if-nez v10, :cond_23

    .line 737
    .line 738
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isAttachedToTransitionOverlay()Z

    .line 739
    .line 740
    .line 741
    move-result v10

    .line 742
    if-nez v10, :cond_23

    .line 743
    .line 744
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 745
    .line 746
    .line 747
    move-result v10

    .line 748
    if-ne v12, v10, :cond_21

    .line 749
    .line 750
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-object v13, v9

    .line 754
    goto :goto_10

    .line 755
    :cond_21
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/e1;->h(I)V

    .line 756
    .line 757
    .line 758
    :cond_22
    const/4 v13, 0x0

    .line 759
    goto :goto_10

    .line 760
    :cond_23
    add-int/lit8 v7, v7, -0x1

    .line 761
    .line 762
    goto :goto_f

    .line 763
    :cond_24
    :goto_10
    if-eqz v13, :cond_25

    .line 764
    .line 765
    iput v5, v13, Landroidx/recyclerview/widget/p1;->mPosition:I

    .line 766
    .line 767
    move-object v9, v13

    .line 768
    const/4 v3, 0x1

    .line 769
    goto :goto_11

    .line 770
    :cond_25
    move-object v9, v13

    .line 771
    :cond_26
    :goto_11
    if-nez v9, :cond_2b

    .line 772
    .line 773
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 774
    .line 775
    if-eqz v5, :cond_27

    .line 776
    .line 777
    new-instance v5, Ljava/lang/StringBuilder;

    .line 778
    .line 779
    const-string v7, "tryGetViewHolderForPositionByDeadline("

    .line 780
    .line 781
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    const-string v7, ") fetching from shared pool"

    .line 788
    .line 789
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v5

    .line 796
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .line 798
    .line 799
    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/e1;->c()Landroidx/recyclerview/widget/d1;

    .line 800
    .line 801
    .line 802
    move-result-object v5

    .line 803
    iget-object v5, v5, Landroidx/recyclerview/widget/d1;->a:Landroid/util/SparseArray;

    .line 804
    .line 805
    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v5

    .line 809
    check-cast v5, Landroidx/recyclerview/widget/c1;

    .line 810
    .line 811
    if-eqz v5, :cond_29

    .line 812
    .line 813
    iget-object v5, v5, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    .line 814
    .line 815
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 816
    .line 817
    .line 818
    move-result v7

    .line 819
    if-nez v7, :cond_29

    .line 820
    .line 821
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 822
    .line 823
    .line 824
    move-result v7

    .line 825
    sub-int/2addr v7, v6

    .line 826
    :goto_12
    if-ltz v7, :cond_29

    .line 827
    .line 828
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v8

    .line 832
    check-cast v8, Landroidx/recyclerview/widget/p1;

    .line 833
    .line 834
    invoke-virtual {v8}, Landroidx/recyclerview/widget/p1;->isAttachedToTransitionOverlay()Z

    .line 835
    .line 836
    .line 837
    move-result v8

    .line 838
    if-nez v8, :cond_28

    .line 839
    .line 840
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v5

    .line 844
    check-cast v5, Landroidx/recyclerview/widget/p1;

    .line 845
    .line 846
    goto :goto_13

    .line 847
    :cond_28
    add-int/lit8 v7, v7, -0x1

    .line 848
    .line 849
    goto :goto_12

    .line 850
    :cond_29
    const/4 v5, 0x0

    .line 851
    :goto_13
    if-eqz v5, :cond_2a

    .line 852
    .line 853
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p1;->resetInternal()V

    .line 854
    .line 855
    .line 856
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 857
    .line 858
    if-eqz v7, :cond_2a

    .line 859
    .line 860
    iget-object v7, v5, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 861
    .line 862
    instance-of v8, v7, Landroid/view/ViewGroup;

    .line 863
    .line 864
    if-eqz v8, :cond_2a

    .line 865
    .line 866
    check-cast v7, Landroid/view/ViewGroup;

    .line 867
    .line 868
    invoke-static {v7, v4}, Landroidx/recyclerview/widget/e1;->d(Landroid/view/ViewGroup;Z)V

    .line 869
    .line 870
    .line 871
    :cond_2a
    move-object v9, v5

    .line 872
    :cond_2b
    if-nez v9, :cond_32

    .line 873
    .line 874
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 875
    .line 876
    .line 877
    move-result-wide v7

    .line 878
    cmp-long v5, p2, v19

    .line 879
    .line 880
    if-eqz v5, :cond_2e

    .line 881
    .line 882
    iget-object v5, v0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 883
    .line 884
    invoke-virtual {v5, v12}, Landroidx/recyclerview/widget/d1;->a(I)Landroidx/recyclerview/widget/c1;

    .line 885
    .line 886
    .line 887
    move-result-object v5

    .line 888
    iget-wide v9, v5, Landroidx/recyclerview/widget/c1;->c:J

    .line 889
    .line 890
    cmp-long v5, v9, v17

    .line 891
    .line 892
    if-eqz v5, :cond_2d

    .line 893
    .line 894
    add-long/2addr v9, v7

    .line 895
    cmp-long v5, v9, p2

    .line 896
    .line 897
    if-gez v5, :cond_2c

    .line 898
    .line 899
    goto :goto_14

    .line 900
    :cond_2c
    const/4 v5, 0x0

    .line 901
    goto :goto_15

    .line 902
    :cond_2d
    :goto_14
    const/4 v5, 0x1

    .line 903
    :goto_15
    if-nez v5, :cond_2e

    .line 904
    .line 905
    const/4 v5, 0x0

    .line 906
    return-object v5

    .line 907
    :cond_2e
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 908
    .line 909
    invoke-virtual {v5, v2, v12}, Landroidx/recyclerview/widget/k0;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;

    .line 910
    .line 911
    .line 912
    move-result-object v9

    .line 913
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 914
    .line 915
    if-eqz v5, :cond_2f

    .line 916
    .line 917
    iget-object v5, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 918
    .line 919
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 920
    .line 921
    .line 922
    move-result-object v5

    .line 923
    if-eqz v5, :cond_2f

    .line 924
    .line 925
    new-instance v10, Ljava/lang/ref/WeakReference;

    .line 926
    .line 927
    invoke-direct {v10, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 928
    .line 929
    .line 930
    iput-object v10, v9, Landroidx/recyclerview/widget/p1;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 931
    .line 932
    :cond_2f
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 933
    .line 934
    .line 935
    move-result-wide v13

    .line 936
    iget-object v5, v0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 937
    .line 938
    sub-long/2addr v13, v7

    .line 939
    invoke-virtual {v5, v12}, Landroidx/recyclerview/widget/d1;->a(I)Landroidx/recyclerview/widget/c1;

    .line 940
    .line 941
    .line 942
    move-result-object v5

    .line 943
    iget-wide v7, v5, Landroidx/recyclerview/widget/c1;->c:J

    .line 944
    .line 945
    cmp-long v10, v7, v17

    .line 946
    .line 947
    if-nez v10, :cond_30

    .line 948
    .line 949
    goto :goto_16

    .line 950
    :cond_30
    const-wide/16 v23, 0x4

    .line 951
    .line 952
    div-long v7, v7, v23

    .line 953
    .line 954
    const-wide/16 v21, 0x3

    .line 955
    .line 956
    mul-long v7, v7, v21

    .line 957
    .line 958
    div-long v13, v13, v23

    .line 959
    .line 960
    add-long/2addr v13, v7

    .line 961
    :goto_16
    iput-wide v13, v5, Landroidx/recyclerview/widget/c1;->c:J

    .line 962
    .line 963
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 964
    .line 965
    if-eqz v5, :cond_32

    .line 966
    .line 967
    const-string v5, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    .line 968
    .line 969
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .line 971
    .line 972
    goto :goto_17

    .line 973
    :cond_31
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 974
    .line 975
    const-string v4, "Inconsistency detected. Invalid item position "

    .line 976
    .line 977
    const-string v6, "(offset:"

    .line 978
    .line 979
    const-string v7, ").state:"

    .line 980
    .line 981
    invoke-static {v4, v1, v6, v5, v7}, La/e;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 986
    .line 987
    invoke-virtual {v4}, Landroidx/recyclerview/widget/l1;->b()I

    .line 988
    .line 989
    .line 990
    move-result v4

    .line 991
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v2

    .line 998
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    invoke-direct {v3, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    throw v3

    .line 1009
    :cond_32
    :goto_17
    if-eqz v3, :cond_33

    .line 1010
    .line 1011
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 1012
    .line 1013
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->g:Z

    .line 1014
    .line 1015
    if-nez v5, :cond_33

    .line 1016
    .line 1017
    const/16 v5, 0x2000

    .line 1018
    .line 1019
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/p1;->hasAnyOfTheFlags(I)Z

    .line 1020
    .line 1021
    .line 1022
    move-result v7

    .line 1023
    if-eqz v7, :cond_33

    .line 1024
    .line 1025
    invoke-virtual {v9, v4, v5}, Landroidx/recyclerview/widget/p1;->setFlags(II)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 1029
    .line 1030
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->j:Z

    .line 1031
    .line 1032
    if-eqz v5, :cond_33

    .line 1033
    .line 1034
    invoke-static {v9}, Landroidx/recyclerview/widget/s0;->b(Landroidx/recyclerview/widget/p1;)V

    .line 1035
    .line 1036
    .line 1037
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/s0;

    .line 1038
    .line 1039
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getUnmodifiedPayloads()Ljava/util/List;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1043
    .line 1044
    .line 1045
    new-instance v5, Landroidx/recyclerview/widget/r0;

    .line 1046
    .line 1047
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/r0;->a(Landroidx/recyclerview/widget/p1;)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v2, v9, v5}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/p1;Landroidx/recyclerview/widget/r0;)V

    .line 1054
    .line 1055
    .line 1056
    :cond_33
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 1057
    .line 1058
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->g:Z

    .line 1059
    .line 1060
    if-eqz v5, :cond_34

    .line 1061
    .line 1062
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isBound()Z

    .line 1063
    .line 1064
    .line 1065
    move-result v5

    .line 1066
    if-eqz v5, :cond_34

    .line 1067
    .line 1068
    iput v1, v9, Landroidx/recyclerview/widget/p1;->mPreLayoutPosition:I

    .line 1069
    .line 1070
    goto :goto_18

    .line 1071
    :cond_34
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isBound()Z

    .line 1072
    .line 1073
    .line 1074
    move-result v5

    .line 1075
    if-eqz v5, :cond_36

    .line 1076
    .line 1077
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->needsUpdate()Z

    .line 1078
    .line 1079
    .line 1080
    move-result v5

    .line 1081
    if-nez v5, :cond_36

    .line 1082
    .line 1083
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isInvalid()Z

    .line 1084
    .line 1085
    .line 1086
    move-result v5

    .line 1087
    if-eqz v5, :cond_35

    .line 1088
    .line 1089
    goto :goto_19

    .line 1090
    :cond_35
    :goto_18
    const/4 v1, 0x0

    .line 1091
    goto/16 :goto_1f

    .line 1092
    .line 1093
    :cond_36
    :goto_19
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 1094
    .line 1095
    if-eqz v5, :cond_38

    .line 1096
    .line 1097
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 1098
    .line 1099
    .line 1100
    move-result v5

    .line 1101
    if-nez v5, :cond_37

    .line 1102
    .line 1103
    goto :goto_1a

    .line 1104
    :cond_37
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1105
    .line 1106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    const-string v4, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    .line 1109
    .line 1110
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    .line 1116
    invoke-static {v2, v3}, La/e;->p(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v2

    .line 1120
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    throw v1

    .line 1124
    :cond_38
    :goto_1a
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    .line 1125
    .line 1126
    invoke-virtual {v5, v1, v4}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 1127
    .line 1128
    .line 1129
    move-result v5

    .line 1130
    const/4 v7, 0x0

    .line 1131
    iput-object v7, v9, Landroidx/recyclerview/widget/p1;->mBindingAdapter:Landroidx/recyclerview/widget/k0;

    .line 1132
    .line 1133
    iput-object v2, v9, Landroidx/recyclerview/widget/p1;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1134
    .line 1135
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 1136
    .line 1137
    .line 1138
    move-result v8

    .line 1139
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1140
    .line 1141
    .line 1142
    move-result-wide v10

    .line 1143
    cmp-long v12, p2, v19

    .line 1144
    .line 1145
    if-eqz v12, :cond_39

    .line 1146
    .line 1147
    iget-object v12, v0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 1148
    .line 1149
    invoke-virtual {v12, v8}, Landroidx/recyclerview/widget/d1;->a(I)Landroidx/recyclerview/widget/c1;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v8

    .line 1153
    iget-wide v12, v8, Landroidx/recyclerview/widget/c1;->d:J

    .line 1154
    .line 1155
    cmp-long v8, v12, v17

    .line 1156
    .line 1157
    if-eqz v8, :cond_39

    .line 1158
    .line 1159
    add-long/2addr v12, v10

    .line 1160
    cmp-long v8, v12, p2

    .line 1161
    .line 1162
    if-gez v8, :cond_35

    .line 1163
    .line 1164
    :cond_39
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->isTmpDetached()Z

    .line 1165
    .line 1166
    .line 1167
    move-result v8

    .line 1168
    if-eqz v8, :cond_3a

    .line 1169
    .line 1170
    iget-object v8, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 1171
    .line 1172
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1173
    .line 1174
    .line 1175
    move-result v12

    .line 1176
    iget-object v13, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 1177
    .line 1178
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v13

    .line 1182
    invoke-static {v2, v8, v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1183
    .line 1184
    .line 1185
    const/4 v8, 0x1

    .line 1186
    goto :goto_1b

    .line 1187
    :cond_3a
    const/4 v8, 0x0

    .line 1188
    :goto_1b
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 1189
    .line 1190
    invoke-virtual {v12, v9, v5}, Landroidx/recyclerview/widget/k0;->bindViewHolder(Landroidx/recyclerview/widget/p1;I)V

    .line 1191
    .line 1192
    .line 1193
    if-eqz v8, :cond_3b

    .line 1194
    .line 1195
    iget-object v5, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 1196
    .line 1197
    invoke-static {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->access$400(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 1198
    .line 1199
    .line 1200
    :cond_3b
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1201
    .line 1202
    .line 1203
    move-result-wide v12

    .line 1204
    iget-object v5, v0, Landroidx/recyclerview/widget/e1;->g:Landroidx/recyclerview/widget/d1;

    .line 1205
    .line 1206
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 1207
    .line 1208
    .line 1209
    move-result v8

    .line 1210
    sub-long/2addr v12, v10

    .line 1211
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/d1;->a(I)Landroidx/recyclerview/widget/c1;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v5

    .line 1215
    iget-wide v10, v5, Landroidx/recyclerview/widget/c1;->d:J

    .line 1216
    .line 1217
    cmp-long v8, v10, v17

    .line 1218
    .line 1219
    if-nez v8, :cond_3c

    .line 1220
    .line 1221
    goto :goto_1c

    .line 1222
    :cond_3c
    const-wide/16 v14, 0x4

    .line 1223
    .line 1224
    div-long/2addr v10, v14

    .line 1225
    const-wide/16 v16, 0x3

    .line 1226
    .line 1227
    mul-long v10, v10, v16

    .line 1228
    .line 1229
    div-long/2addr v12, v14

    .line 1230
    add-long/2addr v12, v10

    .line 1231
    :goto_1c
    iput-wide v12, v5, Landroidx/recyclerview/widget/c1;->d:J

    .line 1232
    .line 1233
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    .line 1234
    .line 1235
    .line 1236
    move-result v5

    .line 1237
    if-eqz v5, :cond_42

    .line 1238
    .line 1239
    iget-object v5, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 1240
    .line 1241
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    .line 1242
    .line 1243
    .line 1244
    move-result v8

    .line 1245
    if-nez v8, :cond_3d

    .line 1246
    .line 1247
    invoke-virtual {v5, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1248
    .line 1249
    .line 1250
    :cond_3d
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/r1;

    .line 1251
    .line 1252
    if-nez v8, :cond_3e

    .line 1253
    .line 1254
    goto :goto_1e

    .line 1255
    :cond_3e
    iget-object v8, v8, Landroidx/recyclerview/widget/r1;->e:Landroidx/recyclerview/widget/q1;

    .line 1256
    .line 1257
    instance-of v10, v8, Landroidx/recyclerview/widget/q1;

    .line 1258
    .line 1259
    if-eqz v10, :cond_41

    .line 1260
    .line 1261
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1262
    .line 1263
    .line 1264
    invoke-static {v5}, Ln0/s0;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v10

    .line 1268
    if-nez v10, :cond_3f

    .line 1269
    .line 1270
    goto :goto_1d

    .line 1271
    :cond_3f
    instance-of v7, v10, Ln0/a;

    .line 1272
    .line 1273
    if-eqz v7, :cond_40

    .line 1274
    .line 1275
    check-cast v10, Ln0/a;

    .line 1276
    .line 1277
    iget-object v7, v10, Ln0/a;->a:Ln0/b;

    .line 1278
    .line 1279
    goto :goto_1d

    .line 1280
    :cond_40
    new-instance v7, Ln0/b;

    .line 1281
    .line 1282
    invoke-direct {v7, v10}, Ln0/b;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 1283
    .line 1284
    .line 1285
    :goto_1d
    if-eqz v7, :cond_41

    .line 1286
    .line 1287
    if-eq v7, v8, :cond_41

    .line 1288
    .line 1289
    iget-object v10, v8, Landroidx/recyclerview/widget/q1;->e:Ljava/util/WeakHashMap;

    .line 1290
    .line 1291
    invoke-virtual {v10, v5, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    :cond_41
    invoke-static {v5, v8}, Ln0/s0;->q(Landroid/view/View;Ln0/b;)V

    .line 1295
    .line 1296
    .line 1297
    :cond_42
    :goto_1e
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 1298
    .line 1299
    iget-boolean v5, v5, Landroidx/recyclerview/widget/l1;->g:Z

    .line 1300
    .line 1301
    if-eqz v5, :cond_43

    .line 1302
    .line 1303
    iput v1, v9, Landroidx/recyclerview/widget/p1;->mPreLayoutPosition:I

    .line 1304
    .line 1305
    :cond_43
    const/4 v1, 0x1

    .line 1306
    :goto_1f
    iget-object v5, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 1307
    .line 1308
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v5

    .line 1312
    if-nez v5, :cond_44

    .line 1313
    .line 1314
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v2

    .line 1318
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1319
    .line 1320
    iget-object v5, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 1321
    .line 1322
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1323
    .line 1324
    .line 1325
    goto :goto_20

    .line 1326
    :cond_44
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1327
    .line 1328
    .line 1329
    move-result v7

    .line 1330
    if-nez v7, :cond_45

    .line 1331
    .line 1332
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v2

    .line 1336
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1337
    .line 1338
    iget-object v5, v9, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 1339
    .line 1340
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1341
    .line 1342
    .line 1343
    goto :goto_20

    .line 1344
    :cond_45
    move-object v2, v5

    .line 1345
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1346
    .line 1347
    :goto_20
    iput-object v9, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a:Landroidx/recyclerview/widget/p1;

    .line 1348
    .line 1349
    if-eqz v3, :cond_46

    .line 1350
    .line 1351
    if-eqz v1, :cond_46

    .line 1352
    .line 1353
    const/4 v4, 0x1

    .line 1354
    :cond_46
    iput-boolean v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Z

    .line 1355
    .line 1356
    return-object v9

    .line 1357
    :cond_47
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    .line 1358
    .line 1359
    const-string v4, "Invalid item position "

    .line 1360
    .line 1361
    const-string v5, "("

    .line 1362
    .line 1363
    const-string v6, "). Item count:"

    .line 1364
    .line 1365
    invoke-static {v4, v1, v5, v1, v6}, La/e;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v1

    .line 1369
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 1370
    .line 1371
    invoke-virtual {v4}, Landroidx/recyclerview/widget/l1;->b()I

    .line 1372
    .line 1373
    .line 1374
    move-result v4

    .line 1375
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v2

    .line 1382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v1

    .line 1389
    invoke-direct {v3, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1390
    .line 1391
    .line 1392
    throw v3
.end method

.method public final m(Landroidx/recyclerview/widget/p1;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/p1;->mInChangeScrap:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p1, Landroidx/recyclerview/widget/p1;->mScrapContainer:Landroidx/recyclerview/widget/e1;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, Landroidx/recyclerview/widget/p1;->mInChangeScrap:Z

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->clearReturnedFromScrapFlag()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/recyclerview/widget/x0;->mPrefetchMaxCountObserved:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/e1;->e:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Landroidx/recyclerview/widget/e1;->f:I

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/e1;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :goto_1
    if-ltz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p0, Landroidx/recyclerview/widget/e1;->f:I

    .line 31
    .line 32
    if-le v2, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/e1;->h(I)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return-void
.end method
