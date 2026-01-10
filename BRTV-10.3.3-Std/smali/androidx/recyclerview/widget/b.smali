.class public final Landroidx/recyclerview/widget/b;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Lm0/c;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroidx/recyclerview/widget/i0;

.field public final e:Landroidx/recyclerview/widget/i0;

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/i0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm0/c;

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lm0/c;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/recyclerview/widget/b;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroidx/recyclerview/widget/b;->f:I

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->d:Landroidx/recyclerview/widget/i0;

    .line 31
    .line 32
    new-instance p1, Landroidx/recyclerview/widget/i0;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/i0;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/recyclerview/widget/b;->e:Landroidx/recyclerview/widget/i0;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/recyclerview/widget/a;

    .line 16
    .line 17
    iget v5, v4, Landroidx/recyclerview/widget/a;->a:I

    .line 18
    .line 19
    const/16 v6, 0x8

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    .line 24
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 25
    .line 26
    add-int/lit8 v5, v3, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ne v4, p1, :cond_2

    .line 33
    .line 34
    return v7

    .line 35
    :cond_0
    if-ne v5, v7, :cond_2

    .line 36
    .line 37
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 38
    .line 39
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 40
    .line 41
    add-int/2addr v4, v5

    .line 42
    :goto_1
    if-ge v5, v4, :cond_2

    .line 43
    .line 44
    add-int/lit8 v6, v3, 0x1

    .line 45
    .line 46
    invoke-virtual {p0, v5, v6}, Landroidx/recyclerview/widget/b;->f(II)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-ne v6, p1, :cond_1

    .line 51
    .line 52
    return v7

    .line 53
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return v2
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/recyclerview/widget/a;

    .line 16
    .line 17
    iget-object v5, p0, Landroidx/recyclerview/widget/b;->d:Landroidx/recyclerview/widget/i0;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/i0;->a(Landroidx/recyclerview/widget/a;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->k(Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    iput v2, p0, Landroidx/recyclerview/widget/b;->f:I

    .line 29
    .line 30
    return-void
.end method

.method public final c()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_4

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/recyclerview/widget/a;

    .line 19
    .line 20
    iget v5, v4, Landroidx/recyclerview/widget/a;->a:I

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    iget-object v7, p0, Landroidx/recyclerview/widget/b;->d:Landroidx/recyclerview/widget/i0;

    .line 24
    .line 25
    if-eq v5, v6, :cond_3

    .line 26
    .line 27
    const/4 v8, 0x2

    .line 28
    if-eq v5, v8, :cond_2

    .line 29
    .line 30
    const/4 v8, 0x4

    .line 31
    if-eq v5, v8, :cond_1

    .line 32
    .line 33
    const/16 v8, 0x8

    .line 34
    .line 35
    if-eq v5, v8, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/i0;->a(Landroidx/recyclerview/widget/a;)V

    .line 39
    .line 40
    .line 41
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 42
    .line 43
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 44
    .line 45
    iget-object v7, v7, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 50
    .line 51
    .line 52
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/i0;->a(Landroidx/recyclerview/widget/a;)V

    .line 56
    .line 57
    .line 58
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 59
    .line 60
    iget v8, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 61
    .line 62
    iget-object v4, v4, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 63
    .line 64
    iget-object v7, v7, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    invoke-virtual {v7, v5, v8, v4}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/i0;->a(Landroidx/recyclerview/widget/a;)V

    .line 75
    .line 76
    .line 77
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 78
    .line 79
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 80
    .line 81
    iget-object v7, v7, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    .line 85
    invoke-virtual {v7, v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 86
    .line 87
    .line 88
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 89
    .line 90
    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 91
    .line 92
    iget v6, v5, Landroidx/recyclerview/widget/l1;->c:I

    .line 93
    .line 94
    add-int/2addr v6, v4

    .line 95
    iput v6, v5, Landroidx/recyclerview/widget/l1;->c:I

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/i0;->a(Landroidx/recyclerview/widget/a;)V

    .line 99
    .line 100
    .line 101
    iget v5, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 102
    .line 103
    iget v4, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 104
    .line 105
    iget-object v7, v7, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    .line 109
    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 110
    .line 111
    .line 112
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 113
    .line 114
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b;->k(Ljava/util/ArrayList;)V

    .line 118
    .line 119
    .line 120
    iput v2, p0, Landroidx/recyclerview/widget/b;->f:I

    .line 121
    .line 122
    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/a;)V
    .locals 12

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_8

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-eq v0, v2, :cond_8

    .line 9
    .line 10
    iget v2, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 11
    .line 12
    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/b;->l(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 17
    .line 18
    iget v3, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x4

    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    if-ne v3, v5, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "op should be remove or update."

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    const/4 v3, 0x0

    .line 49
    :goto_0
    const/4 v6, 0x1

    .line 50
    const/4 v7, 0x1

    .line 51
    :goto_1
    iget v8, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    if-ge v6, v8, :cond_6

    .line 55
    .line 56
    iget v8, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 57
    .line 58
    mul-int v10, v3, v6

    .line 59
    .line 60
    add-int/2addr v10, v8

    .line 61
    iget v8, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 62
    .line 63
    invoke-virtual {p0, v10, v8}, Landroidx/recyclerview/widget/b;->l(II)I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    iget v10, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 68
    .line 69
    if-eq v10, v4, :cond_3

    .line 70
    .line 71
    if-eq v10, v5, :cond_2

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_2
    add-int/lit8 v11, v0, 0x1

    .line 75
    .line 76
    if-ne v8, v11, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    if-ne v8, v0, :cond_4

    .line 80
    .line 81
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_4
    :goto_3
    iget-object v11, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {p0, v10, v0, v7, v11}, Landroidx/recyclerview/widget/b;->h(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/b;->e(Landroidx/recyclerview/widget/a;I)V

    .line 91
    .line 92
    .line 93
    iput-object v9, v0, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 94
    .line 95
    iget-object v9, p0, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 96
    .line 97
    invoke-virtual {v9, v0}, Lm0/c;->c(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iget v0, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 101
    .line 102
    if-ne v0, v5, :cond_5

    .line 103
    .line 104
    add-int/2addr v2, v7

    .line 105
    :cond_5
    move v0, v8

    .line 106
    const/4 v7, 0x1

    .line 107
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    iget-object v1, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object v9, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 113
    .line 114
    iget-object v3, p0, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 115
    .line 116
    invoke-virtual {v3, p1}, Lm0/c;->c(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    if-lez v7, :cond_7

    .line 120
    .line 121
    iget p1, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 122
    .line 123
    invoke-virtual {p0, p1, v0, v7, v1}, Landroidx/recyclerview/widget/b;->h(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/b;->e(Landroidx/recyclerview/widget/a;I)V

    .line 128
    .line 129
    .line 130
    iput-object v9, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 131
    .line 132
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Lm0/c;->c(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_7
    return-void

    .line 138
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string v0, "should not dispatch add or move for pre layout"

    .line 141
    .line 142
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1
.end method

.method public final e(Landroidx/recyclerview/widget/a;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->d:Landroidx/recyclerview/widget/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/i0;->a(Landroidx/recyclerview/widget/a;)V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    iget-object v0, v0, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    iget v1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0, p2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p2, "only remove and update ops can be dispatched in first pass"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    iget p1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 38
    .line 39
    invoke-virtual {v0, p2, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 40
    .line 41
    .line 42
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 43
    .line 44
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 45
    .line 46
    iget v0, p2, Landroidx/recyclerview/widget/l1;->c:I

    .line 47
    .line 48
    add-int/2addr v0, p1

    .line 49
    iput v0, p2, Landroidx/recyclerview/widget/l1;->c:I

    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public final f(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :goto_0
    if-ge p2, v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/recyclerview/widget/a;

    .line 14
    .line 15
    iget v3, v2, Landroidx/recyclerview/widget/a;->a:I

    .line 16
    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    if-ne v3, v4, :cond_2

    .line 20
    .line 21
    iget v3, v2, Landroidx/recyclerview/widget/a;->b:I

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    iget p1, v2, Landroidx/recyclerview/widget/a;->d:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    if-ge v3, p1, :cond_1

    .line 29
    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    :cond_1
    iget v2, v2, Landroidx/recyclerview/widget/a;->d:I

    .line 33
    .line 34
    if-gt v2, p1, :cond_5

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget v4, v2, Landroidx/recyclerview/widget/a;->b:I

    .line 40
    .line 41
    if-gt v4, p1, :cond_5

    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    if-ne v3, v5, :cond_4

    .line 45
    .line 46
    iget v2, v2, Landroidx/recyclerview/widget/a;->d:I

    .line 47
    .line 48
    add-int/2addr v4, v2

    .line 49
    if-ge p1, v4, :cond_3

    .line 50
    .line 51
    const/4 p1, -0x1

    .line 52
    return p1

    .line 53
    :cond_3
    sub-int/2addr p1, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v4, 0x1

    .line 56
    if-ne v3, v4, :cond_5

    .line 57
    .line 58
    iget v2, v2, Landroidx/recyclerview/widget/a;->d:I

    .line 59
    .line 60
    add-int/2addr p1, v2

    .line 61
    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    return p1
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final h(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm0/c;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/recyclerview/widget/a;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput p1, v0, Landroidx/recyclerview/widget/a;->a:I

    .line 17
    .line 18
    iput p2, v0, Landroidx/recyclerview/widget/a;->b:I

    .line 19
    .line 20
    iput p3, v0, Landroidx/recyclerview/widget/a;->d:I

    .line 21
    .line 22
    iput-object p4, v0, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput p1, v0, Landroidx/recyclerview/widget/a;->a:I

    .line 26
    .line 27
    iput p2, v0, Landroidx/recyclerview/widget/a;->b:I

    .line 28
    .line 29
    iput p3, v0, Landroidx/recyclerview/widget/a;->d:I

    .line 30
    .line 31
    iput-object p4, v0, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 32
    .line 33
    :goto_0
    return-object v0
.end method

.method public final i(Landroidx/recyclerview/widget/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroidx/recyclerview/widget/a;->a:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/b;->d:Landroidx/recyclerview/widget/i0;

    .line 10
    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    if-ne v0, v3, :cond_0

    .line 22
    .line 23
    iget v0, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 24
    .line 25
    iget p1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    invoke-virtual {v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 32
    .line 33
    .line 34
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Unknown update op type for "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_1
    iget v0, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 58
    .line 59
    iget v3, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 60
    .line 61
    iget-object p1, p1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 62
    .line 63
    iget-object v2, v2, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    invoke-virtual {v2, v0, v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget v0, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 74
    .line 75
    iget p1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 76
    .line 77
    iget-object v2, v2, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-virtual {v2, v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 83
    .line 84
    .line 85
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    iget v0, p1, Landroidx/recyclerview/widget/a;->b:I

    .line 89
    .line 90
    iget p1, p1, Landroidx/recyclerview/widget/a;->d:I

    .line 91
    .line 92
    iget-object v2, v2, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    .line 96
    invoke-virtual {v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 97
    .line 98
    .line 99
    iput-boolean v1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/b;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/recyclerview/widget/b;->e:Landroidx/recyclerview/widget/i0;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    sub-int/2addr v3, v4

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_1
    const/4 v7, -0x1

    .line 18
    const/16 v8, 0x8

    .line 19
    .line 20
    if-ltz v3, :cond_3

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    check-cast v9, Landroidx/recyclerview/widget/a;

    .line 27
    .line 28
    iget v9, v9, Landroidx/recyclerview/widget/a;->a:I

    .line 29
    .line 30
    if-ne v9, v8, :cond_1

    .line 31
    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    const/4 v6, 0x1

    .line 36
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const/4 v3, -0x1

    .line 40
    :goto_2
    const/4 v6, 0x0

    .line 41
    const/4 v9, 0x4

    .line 42
    const/4 v10, 0x2

    .line 43
    if-eq v3, v7, :cond_22

    .line 44
    .line 45
    add-int/lit8 v8, v3, 0x1

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    check-cast v11, Landroidx/recyclerview/widget/a;

    .line 52
    .line 53
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    check-cast v12, Landroidx/recyclerview/widget/a;

    .line 58
    .line 59
    iget v13, v12, Landroidx/recyclerview/widget/a;->a:I

    .line 60
    .line 61
    if-eq v13, v4, :cond_1d

    .line 62
    .line 63
    iget-object v7, v2, Landroidx/recyclerview/widget/i0;->a:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v7, Landroidx/recyclerview/widget/b;

    .line 66
    .line 67
    if-eq v13, v10, :cond_b

    .line 68
    .line 69
    if-eq v13, v9, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iget v5, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 73
    .line 74
    iget v10, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 75
    .line 76
    if-ge v5, v10, :cond_5

    .line 77
    .line 78
    add-int/lit8 v10, v10, -0x1

    .line 79
    .line 80
    iput v10, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    iget v13, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 84
    .line 85
    add-int/2addr v10, v13

    .line 86
    if-ge v5, v10, :cond_6

    .line 87
    .line 88
    add-int/lit8 v13, v13, -0x1

    .line 89
    .line 90
    iput v13, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 91
    .line 92
    iget v5, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 93
    .line 94
    iget-object v10, v12, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 95
    .line 96
    invoke-virtual {v7, v9, v5, v4, v10}, Landroidx/recyclerview/widget/b;->h(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    goto :goto_4

    .line 101
    :cond_6
    :goto_3
    move-object v4, v6

    .line 102
    :goto_4
    iget v5, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 103
    .line 104
    iget v10, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 105
    .line 106
    if-gt v5, v10, :cond_7

    .line 107
    .line 108
    add-int/lit8 v10, v10, 0x1

    .line 109
    .line 110
    iput v10, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_7
    iget v13, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 114
    .line 115
    add-int/2addr v10, v13

    .line 116
    if-ge v5, v10, :cond_8

    .line 117
    .line 118
    sub-int/2addr v10, v5

    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    iget-object v13, v12, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 122
    .line 123
    invoke-virtual {v7, v9, v5, v10, v13}, Landroidx/recyclerview/widget/b;->h(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    iget v9, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 128
    .line 129
    sub-int/2addr v9, v10

    .line 130
    iput v9, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_8
    :goto_5
    move-object v5, v6

    .line 134
    :goto_6
    invoke-virtual {v1, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    iget v8, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 138
    .line 139
    if-lez v8, :cond_9

    .line 140
    .line 141
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    iput-object v6, v12, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 152
    .line 153
    iget-object v6, v7, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 154
    .line 155
    invoke-virtual {v6, v12}, Lm0/c;->c(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    :goto_7
    if-eqz v4, :cond_a

    .line 159
    .line 160
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_a
    if-eqz v5, :cond_0

    .line 164
    .line 165
    invoke-virtual {v1, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_b
    iget v9, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 171
    .line 172
    iget v13, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 173
    .line 174
    if-ge v9, v13, :cond_d

    .line 175
    .line 176
    iget v14, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 177
    .line 178
    if-ne v14, v9, :cond_c

    .line 179
    .line 180
    iget v14, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 181
    .line 182
    sub-int v9, v13, v9

    .line 183
    .line 184
    if-ne v14, v9, :cond_c

    .line 185
    .line 186
    const/4 v5, 0x1

    .line 187
    :goto_8
    const/4 v9, 0x0

    .line 188
    goto :goto_a

    .line 189
    :cond_c
    const/4 v5, 0x0

    .line 190
    goto :goto_8

    .line 191
    :cond_d
    iget v14, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 192
    .line 193
    add-int/lit8 v15, v13, 0x1

    .line 194
    .line 195
    if-ne v14, v15, :cond_e

    .line 196
    .line 197
    iget v14, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 198
    .line 199
    sub-int/2addr v9, v13

    .line 200
    if-ne v14, v9, :cond_e

    .line 201
    .line 202
    const/4 v5, 0x1

    .line 203
    :goto_9
    const/4 v9, 0x1

    .line 204
    goto :goto_a

    .line 205
    :cond_e
    const/4 v5, 0x0

    .line 206
    goto :goto_9

    .line 207
    :goto_a
    iget v14, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 208
    .line 209
    if-ge v13, v14, :cond_f

    .line 210
    .line 211
    add-int/lit8 v14, v14, -0x1

    .line 212
    .line 213
    iput v14, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 214
    .line 215
    goto :goto_b

    .line 216
    :cond_f
    iget v15, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 217
    .line 218
    add-int/2addr v14, v15

    .line 219
    if-ge v13, v14, :cond_10

    .line 220
    .line 221
    add-int/lit8 v15, v15, -0x1

    .line 222
    .line 223
    iput v15, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 224
    .line 225
    iput v10, v11, Landroidx/recyclerview/widget/a;->a:I

    .line 226
    .line 227
    iput v4, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 228
    .line 229
    iget v3, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 230
    .line 231
    if-nez v3, :cond_0

    .line 232
    .line 233
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    iput-object v6, v12, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 240
    .line 241
    iget-object v3, v7, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 242
    .line 243
    invoke-virtual {v3, v12}, Lm0/c;->c(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_10
    :goto_b
    iget v4, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 249
    .line 250
    iget v13, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 251
    .line 252
    if-gt v4, v13, :cond_11

    .line 253
    .line 254
    add-int/lit8 v13, v13, 0x1

    .line 255
    .line 256
    iput v13, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 257
    .line 258
    goto :goto_c

    .line 259
    :cond_11
    iget v14, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 260
    .line 261
    add-int/2addr v13, v14

    .line 262
    if-ge v4, v13, :cond_12

    .line 263
    .line 264
    sub-int/2addr v13, v4

    .line 265
    add-int/lit8 v4, v4, 0x1

    .line 266
    .line 267
    invoke-virtual {v7, v10, v4, v13, v6}, Landroidx/recyclerview/widget/b;->h(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    iget v10, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 272
    .line 273
    iget v13, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 274
    .line 275
    sub-int/2addr v10, v13

    .line 276
    iput v10, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 277
    .line 278
    goto :goto_d

    .line 279
    :cond_12
    :goto_c
    move-object v4, v6

    .line 280
    :goto_d
    if-eqz v5, :cond_13

    .line 281
    .line 282
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    iput-object v6, v11, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 292
    .line 293
    iget-object v3, v7, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 294
    .line 295
    invoke-virtual {v3, v11}, Lm0/c;->c(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_13
    if-eqz v9, :cond_17

    .line 301
    .line 302
    if-eqz v4, :cond_15

    .line 303
    .line 304
    iget v5, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 305
    .line 306
    iget v6, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 307
    .line 308
    if-le v5, v6, :cond_14

    .line 309
    .line 310
    iget v6, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 311
    .line 312
    sub-int/2addr v5, v6

    .line 313
    iput v5, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 314
    .line 315
    :cond_14
    iget v5, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 316
    .line 317
    iget v6, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 318
    .line 319
    if-le v5, v6, :cond_15

    .line 320
    .line 321
    iget v6, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 322
    .line 323
    sub-int/2addr v5, v6

    .line 324
    iput v5, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 325
    .line 326
    :cond_15
    iget v5, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 327
    .line 328
    iget v6, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 329
    .line 330
    if-le v5, v6, :cond_16

    .line 331
    .line 332
    iget v6, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 333
    .line 334
    sub-int/2addr v5, v6

    .line 335
    iput v5, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 336
    .line 337
    :cond_16
    iget v5, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 338
    .line 339
    iget v6, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 340
    .line 341
    if-le v5, v6, :cond_1b

    .line 342
    .line 343
    iget v6, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 344
    .line 345
    sub-int/2addr v5, v6

    .line 346
    iput v5, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 347
    .line 348
    goto :goto_e

    .line 349
    :cond_17
    if-eqz v4, :cond_19

    .line 350
    .line 351
    iget v5, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 352
    .line 353
    iget v6, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 354
    .line 355
    if-lt v5, v6, :cond_18

    .line 356
    .line 357
    iget v6, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 358
    .line 359
    sub-int/2addr v5, v6

    .line 360
    iput v5, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 361
    .line 362
    :cond_18
    iget v5, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 363
    .line 364
    iget v6, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 365
    .line 366
    if-lt v5, v6, :cond_19

    .line 367
    .line 368
    iget v6, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 369
    .line 370
    sub-int/2addr v5, v6

    .line 371
    iput v5, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 372
    .line 373
    :cond_19
    iget v5, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 374
    .line 375
    iget v6, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 376
    .line 377
    if-lt v5, v6, :cond_1a

    .line 378
    .line 379
    iget v6, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 380
    .line 381
    sub-int/2addr v5, v6

    .line 382
    iput v5, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 383
    .line 384
    :cond_1a
    iget v5, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 385
    .line 386
    iget v6, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 387
    .line 388
    if-lt v5, v6, :cond_1b

    .line 389
    .line 390
    iget v6, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 391
    .line 392
    sub-int/2addr v5, v6

    .line 393
    iput v5, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 394
    .line 395
    :cond_1b
    :goto_e
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    iget v5, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 399
    .line 400
    iget v6, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 401
    .line 402
    if-eq v5, v6, :cond_1c

    .line 403
    .line 404
    invoke-virtual {v1, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    goto :goto_f

    .line 408
    :cond_1c
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    :goto_f
    if-eqz v4, :cond_0

    .line 412
    .line 413
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_0

    .line 417
    .line 418
    :cond_1d
    iget v4, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 419
    .line 420
    iget v6, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 421
    .line 422
    if-ge v4, v6, :cond_1e

    .line 423
    .line 424
    const/4 v5, -0x1

    .line 425
    goto :goto_10

    .line 426
    :cond_1e
    const/4 v5, 0x0

    .line 427
    :goto_10
    iget v7, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 428
    .line 429
    if-ge v7, v6, :cond_1f

    .line 430
    .line 431
    add-int/lit8 v5, v5, 0x1

    .line 432
    .line 433
    :cond_1f
    if-gt v6, v7, :cond_20

    .line 434
    .line 435
    iget v6, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 436
    .line 437
    add-int/2addr v7, v6

    .line 438
    iput v7, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 439
    .line 440
    :cond_20
    iget v6, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 441
    .line 442
    if-gt v6, v4, :cond_21

    .line 443
    .line 444
    iget v7, v12, Landroidx/recyclerview/widget/a;->d:I

    .line 445
    .line 446
    add-int/2addr v4, v7

    .line 447
    iput v4, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 448
    .line 449
    :cond_21
    add-int/2addr v6, v5

    .line 450
    iput v6, v12, Landroidx/recyclerview/widget/a;->b:I

    .line 451
    .line 452
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    const/4 v3, 0x0

    .line 465
    :goto_11
    if-ge v3, v2, :cond_36

    .line 466
    .line 467
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v11

    .line 471
    check-cast v11, Landroidx/recyclerview/widget/a;

    .line 472
    .line 473
    iget v12, v11, Landroidx/recyclerview/widget/a;->a:I

    .line 474
    .line 475
    if-eq v12, v4, :cond_35

    .line 476
    .line 477
    iget-object v13, v0, Landroidx/recyclerview/widget/b;->d:Landroidx/recyclerview/widget/i0;

    .line 478
    .line 479
    if-eq v12, v10, :cond_2c

    .line 480
    .line 481
    if-eq v12, v9, :cond_24

    .line 482
    .line 483
    if-eq v12, v8, :cond_23

    .line 484
    .line 485
    goto/16 :goto_1b

    .line 486
    .line 487
    :cond_23
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/b;->i(Landroidx/recyclerview/widget/a;)V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_1b

    .line 491
    .line 492
    :cond_24
    iget v12, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 493
    .line 494
    iget v14, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 495
    .line 496
    add-int/2addr v14, v12

    .line 497
    move v15, v12

    .line 498
    const/4 v5, 0x0

    .line 499
    :goto_12
    if-ge v12, v14, :cond_29

    .line 500
    .line 501
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/i0;->b(I)Landroidx/recyclerview/widget/p1;

    .line 502
    .line 503
    .line 504
    move-result-object v16

    .line 505
    if-nez v16, :cond_27

    .line 506
    .line 507
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/b;->a(I)Z

    .line 508
    .line 509
    .line 510
    move-result v16

    .line 511
    if-eqz v16, :cond_25

    .line 512
    .line 513
    goto :goto_13

    .line 514
    :cond_25
    if-ne v7, v4, :cond_26

    .line 515
    .line 516
    iget-object v7, v11, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 517
    .line 518
    invoke-virtual {v0, v9, v15, v5, v7}, Landroidx/recyclerview/widget/b;->h(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/b;->i(Landroidx/recyclerview/widget/a;)V

    .line 523
    .line 524
    .line 525
    move v15, v12

    .line 526
    const/4 v5, 0x0

    .line 527
    :cond_26
    const/4 v7, 0x0

    .line 528
    goto :goto_14

    .line 529
    :cond_27
    :goto_13
    if-nez v7, :cond_28

    .line 530
    .line 531
    iget-object v7, v11, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 532
    .line 533
    invoke-virtual {v0, v9, v15, v5, v7}, Landroidx/recyclerview/widget/b;->h(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/b;->d(Landroidx/recyclerview/widget/a;)V

    .line 538
    .line 539
    .line 540
    move v15, v12

    .line 541
    const/4 v5, 0x0

    .line 542
    :cond_28
    const/4 v7, 0x1

    .line 543
    :goto_14
    add-int/2addr v5, v4

    .line 544
    add-int/lit8 v12, v12, 0x1

    .line 545
    .line 546
    goto :goto_12

    .line 547
    :cond_29
    iget v12, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 548
    .line 549
    if-eq v5, v12, :cond_2a

    .line 550
    .line 551
    iget-object v12, v11, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 552
    .line 553
    iput-object v6, v11, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 554
    .line 555
    iget-object v13, v0, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 556
    .line 557
    invoke-virtual {v13, v11}, Lm0/c;->c(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0, v9, v15, v5, v12}, Landroidx/recyclerview/widget/b;->h(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a;

    .line 561
    .line 562
    .line 563
    move-result-object v11

    .line 564
    :cond_2a
    if-nez v7, :cond_2b

    .line 565
    .line 566
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/b;->d(Landroidx/recyclerview/widget/a;)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_1b

    .line 570
    .line 571
    :cond_2b
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/b;->i(Landroidx/recyclerview/widget/a;)V

    .line 572
    .line 573
    .line 574
    goto :goto_1b

    .line 575
    :cond_2c
    iget v5, v11, Landroidx/recyclerview/widget/a;->b:I

    .line 576
    .line 577
    iget v7, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 578
    .line 579
    add-int/2addr v7, v5

    .line 580
    move v12, v5

    .line 581
    const/4 v14, 0x0

    .line 582
    const/4 v15, -0x1

    .line 583
    :goto_15
    if-ge v12, v7, :cond_32

    .line 584
    .line 585
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/i0;->b(I)Landroidx/recyclerview/widget/p1;

    .line 586
    .line 587
    .line 588
    move-result-object v16

    .line 589
    if-nez v16, :cond_2f

    .line 590
    .line 591
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/b;->a(I)Z

    .line 592
    .line 593
    .line 594
    move-result v16

    .line 595
    if-eqz v16, :cond_2d

    .line 596
    .line 597
    goto :goto_17

    .line 598
    :cond_2d
    if-ne v15, v4, :cond_2e

    .line 599
    .line 600
    invoke-virtual {v0, v10, v5, v14, v6}, Landroidx/recyclerview/widget/b;->h(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a;

    .line 601
    .line 602
    .line 603
    move-result-object v15

    .line 604
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/b;->i(Landroidx/recyclerview/widget/a;)V

    .line 605
    .line 606
    .line 607
    const/4 v15, 0x1

    .line 608
    goto :goto_16

    .line 609
    :cond_2e
    const/4 v15, 0x0

    .line 610
    :goto_16
    const/16 v16, 0x0

    .line 611
    .line 612
    goto :goto_19

    .line 613
    :cond_2f
    :goto_17
    if-nez v15, :cond_30

    .line 614
    .line 615
    invoke-virtual {v0, v10, v5, v14, v6}, Landroidx/recyclerview/widget/b;->h(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a;

    .line 616
    .line 617
    .line 618
    move-result-object v15

    .line 619
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/b;->d(Landroidx/recyclerview/widget/a;)V

    .line 620
    .line 621
    .line 622
    const/4 v15, 0x1

    .line 623
    goto :goto_18

    .line 624
    :cond_30
    const/4 v15, 0x0

    .line 625
    :goto_18
    const/16 v16, 0x1

    .line 626
    .line 627
    :goto_19
    if-eqz v15, :cond_31

    .line 628
    .line 629
    sub-int/2addr v12, v14

    .line 630
    sub-int/2addr v7, v14

    .line 631
    const/4 v14, 0x1

    .line 632
    goto :goto_1a

    .line 633
    :cond_31
    add-int/lit8 v14, v14, 0x1

    .line 634
    .line 635
    :goto_1a
    add-int/2addr v12, v4

    .line 636
    move/from16 v15, v16

    .line 637
    .line 638
    goto :goto_15

    .line 639
    :cond_32
    iget v7, v11, Landroidx/recyclerview/widget/a;->d:I

    .line 640
    .line 641
    if-eq v14, v7, :cond_33

    .line 642
    .line 643
    iput-object v6, v11, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 644
    .line 645
    iget-object v7, v0, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 646
    .line 647
    invoke-virtual {v7, v11}, Lm0/c;->c(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    invoke-virtual {v0, v10, v5, v14, v6}, Landroidx/recyclerview/widget/b;->h(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a;

    .line 651
    .line 652
    .line 653
    move-result-object v11

    .line 654
    :cond_33
    if-nez v15, :cond_34

    .line 655
    .line 656
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/b;->d(Landroidx/recyclerview/widget/a;)V

    .line 657
    .line 658
    .line 659
    goto :goto_1b

    .line 660
    :cond_34
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/b;->i(Landroidx/recyclerview/widget/a;)V

    .line 661
    .line 662
    .line 663
    goto :goto_1b

    .line 664
    :cond_35
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/b;->i(Landroidx/recyclerview/widget/a;)V

    .line 665
    .line 666
    .line 667
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    .line 668
    .line 669
    const/4 v7, -0x1

    .line 670
    goto/16 :goto_11

    .line 671
    .line 672
    :cond_36
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 673
    .line 674
    .line 675
    return-void
.end method

.method public final k(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/recyclerview/widget/a;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput-object v3, v2, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Lm0/c;->c(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final l(II)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    const/16 v3, 0x8

    .line 10
    .line 11
    if-ltz v1, :cond_d

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroidx/recyclerview/widget/a;

    .line 18
    .line 19
    iget v5, v4, Landroidx/recyclerview/widget/a;->a:I

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    if-ne v5, v3, :cond_8

    .line 23
    .line 24
    iget v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 25
    .line 26
    iget v5, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 27
    .line 28
    if-ge v3, v5, :cond_0

    .line 29
    .line 30
    move v7, v3

    .line 31
    move v8, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v8, v3

    .line 34
    move v7, v5

    .line 35
    :goto_1
    if-lt p1, v7, :cond_6

    .line 36
    .line 37
    if-gt p1, v8, :cond_6

    .line 38
    .line 39
    if-ne v7, v3, :cond_3

    .line 40
    .line 41
    if-ne p2, v2, :cond_1

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    iput v5, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    if-ne p2, v6, :cond_2

    .line 49
    .line 50
    add-int/lit8 v5, v5, -0x1

    .line 51
    .line 52
    iput v5, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 53
    .line 54
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_3
    if-ne p2, v2, :cond_4

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    if-ne p2, v6, :cond_5

    .line 65
    .line 66
    add-int/lit8 v3, v3, -0x1

    .line 67
    .line 68
    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 69
    .line 70
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    if-ge p1, v3, :cond_c

    .line 74
    .line 75
    if-ne p2, v2, :cond_7

    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 80
    .line 81
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    iput v5, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_7
    if-ne p2, v6, :cond_c

    .line 87
    .line 88
    add-int/lit8 v3, v3, -0x1

    .line 89
    .line 90
    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 91
    .line 92
    add-int/lit8 v5, v5, -0x1

    .line 93
    .line 94
    iput v5, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_8
    iget v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 98
    .line 99
    if-gt v3, p1, :cond_a

    .line 100
    .line 101
    if-ne v5, v2, :cond_9

    .line 102
    .line 103
    iget v3, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 104
    .line 105
    sub-int/2addr p1, v3

    .line 106
    goto :goto_4

    .line 107
    :cond_9
    if-ne v5, v6, :cond_c

    .line 108
    .line 109
    iget v3, v4, Landroidx/recyclerview/widget/a;->d:I

    .line 110
    .line 111
    add-int/2addr p1, v3

    .line 112
    goto :goto_4

    .line 113
    :cond_a
    if-ne p2, v2, :cond_b

    .line 114
    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_b
    if-ne p2, v6, :cond_c

    .line 121
    .line 122
    add-int/lit8 v3, v3, -0x1

    .line 123
    .line 124
    iput v3, v4, Landroidx/recyclerview/widget/a;->b:I

    .line 125
    .line 126
    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    sub-int/2addr p2, v2

    .line 134
    :goto_5
    if-ltz p2, :cond_11

    .line 135
    .line 136
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Landroidx/recyclerview/widget/a;

    .line 141
    .line 142
    iget v2, v1, Landroidx/recyclerview/widget/a;->a:I

    .line 143
    .line 144
    const/4 v4, 0x0

    .line 145
    if-ne v2, v3, :cond_f

    .line 146
    .line 147
    iget v2, v1, Landroidx/recyclerview/widget/a;->d:I

    .line 148
    .line 149
    iget v5, v1, Landroidx/recyclerview/widget/a;->b:I

    .line 150
    .line 151
    if-eq v2, v5, :cond_e

    .line 152
    .line 153
    if-gez v2, :cond_10

    .line 154
    .line 155
    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    iput-object v4, v1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 159
    .line 160
    iget-object v2, p0, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 161
    .line 162
    invoke-virtual {v2, v1}, Lm0/c;->c(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_f
    iget v2, v1, Landroidx/recyclerview/widget/a;->d:I

    .line 167
    .line 168
    if-gtz v2, :cond_10

    .line 169
    .line 170
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    iput-object v4, v1, Landroidx/recyclerview/widget/a;->c:Ljava/lang/Object;

    .line 174
    .line 175
    iget-object v2, p0, Landroidx/recyclerview/widget/b;->a:Lm0/c;

    .line 176
    .line 177
    invoke-virtual {v2, v1}, Lm0/c;->c(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_11
    return p1
.end method
