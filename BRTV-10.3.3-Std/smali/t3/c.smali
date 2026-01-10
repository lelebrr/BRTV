.class public abstract Lt3/c;
.super Landroidx/recyclerview/widget/k0;
.source "MyApplication"


# instance fields
.field public a:Lq1/f0;

.field public b:Landroid/view/LayoutInflater;

.field public c:Ljava/util/List;


# virtual methods
.method public abstract a(Lt3/d;Ljava/lang/Object;)V
.end method

.method public final b(Landroid/view/View;)Lt3/d;
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const/4 v4, 0x0

    .line 9
    move-object v5, v4

    .line 10
    :goto_0
    if-nez v5, :cond_3

    .line 11
    .line 12
    if-eqz v3, :cond_3

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    .line 19
    .line 20
    if-eqz v6, :cond_2

    .line 21
    .line 22
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 23
    .line 24
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    array-length v6, v5

    .line 29
    const/4 v7, 0x0

    .line 30
    :goto_1
    if-ge v7, v6, :cond_2

    .line 31
    .line 32
    aget-object v8, v5, v7

    .line 33
    .line 34
    instance-of v9, v8, Ljava/lang/Class;

    .line 35
    .line 36
    const-class v10, Lt3/d;

    .line 37
    .line 38
    if-eqz v9, :cond_0

    .line 39
    .line 40
    check-cast v8, Ljava/lang/Class;

    .line 41
    .line 42
    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-eqz v9, :cond_1

    .line 47
    .line 48
    :goto_2
    move-object v5, v8

    .line 49
    goto :goto_3

    .line 50
    :cond_0
    instance-of v9, v8, Ljava/lang/reflect/ParameterizedType;

    .line 51
    .line 52
    if-eqz v9, :cond_1

    .line 53
    .line 54
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 55
    .line 56
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    instance-of v9, v8, Ljava/lang/Class;

    .line 61
    .line 62
    if-eqz v9, :cond_1

    .line 63
    .line 64
    check-cast v8, Ljava/lang/Class;

    .line 65
    .line 66
    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    add-int/2addr v7, v2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v5, v4

    .line 76
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    if-nez v5, :cond_4

    .line 82
    .line 83
    new-instance v0, Lt3/d;

    .line 84
    .line 85
    invoke-direct {v0, p1}, Lt3/d;-><init>(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    goto :goto_a

    .line 89
    :cond_4
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->isMemberClass()Z

    .line 90
    .line 91
    .line 92
    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const-class v6, Landroid/view/View;

    .line 94
    .line 95
    if-eqz v3, :cond_5

    .line 96
    .line 97
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    new-array v7, v0, [Ljava/lang/Class;

    .line 112
    .line 113
    aput-object v3, v7, v1

    .line 114
    .line 115
    aput-object v6, v7, v2

    .line 116
    .line 117
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 122
    .line 123
    .line 124
    new-array v0, v0, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object p0, v0, v1

    .line 127
    .line 128
    aput-object p1, v0, v2

    .line 129
    .line 130
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lt3/d;

    .line 135
    .line 136
    :goto_4
    move-object v4, v0

    .line 137
    goto :goto_9

    .line 138
    :catch_0
    move-exception v0

    .line 139
    goto :goto_5

    .line 140
    :catch_1
    move-exception v0

    .line 141
    goto :goto_6

    .line 142
    :catch_2
    move-exception v0

    .line 143
    goto :goto_7

    .line 144
    :catch_3
    move-exception v0

    .line 145
    goto :goto_8

    .line 146
    :cond_5
    new-array v0, v2, [Ljava/lang/Class;

    .line 147
    .line 148
    aput-object v6, v0, v1

    .line 149
    .line 150
    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 155
    .line 156
    .line 157
    new-array v2, v2, [Ljava/lang/Object;

    .line 158
    .line 159
    aput-object p1, v2, v1

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lt3/d;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    .line 170
    .line 171
    goto :goto_9

    .line 172
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    .line 174
    .line 175
    goto :goto_9

    .line 176
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    .line 178
    .line 179
    goto :goto_9

    .line 180
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    :goto_9
    move-object v0, v4

    .line 184
    :goto_a
    if-eqz v0, :cond_6

    .line 185
    .line 186
    goto :goto_b

    .line 187
    :cond_6
    new-instance v0, Lt3/d;

    .line 188
    .line 189
    invoke-direct {v0, p1}, Lt3/d;-><init>(Landroid/view/View;)V

    .line 190
    .line 191
    .line 192
    :goto_b
    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/c;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x111

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    iget-object v0, p0, Lt3/c;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge p1, v0, :cond_2

    .line 13
    .line 14
    move-object v0, p0

    .line 15
    check-cast v0, Lt3/a;

    .line 16
    .line 17
    iget-object v0, v0, Lt3/c;->c:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    instance-of v0, p1, Loa/a;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p1, Loa/a;

    .line 28
    .line 29
    iget p1, p1, Loa/a;->b:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 p1, -0xff

    .line 33
    .line 34
    :goto_0
    return p1

    .line 35
    :cond_2
    sub-int/2addr p1, v0

    .line 36
    if-gez p1, :cond_3

    .line 37
    .line 38
    const/16 p1, 0x333

    .line 39
    .line 40
    return p1

    .line 41
    :cond_3
    const/16 p1, 0x222

    .line 42
    .line 43
    return p1
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/x0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 13
    .line 14
    new-instance v0, Lt3/b;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lt3/b;-><init>(Lt3/c;Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/appcompat/app/c0;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 3

    .line 1
    check-cast p1, Lt3/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const/16 v2, 0x111

    .line 11
    .line 12
    if-eq v0, v2, :cond_4

    .line 13
    .line 14
    const/16 v2, 0x222

    .line 15
    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    const/16 v2, 0x333

    .line 19
    .line 20
    if-eq v0, v2, :cond_4

    .line 21
    .line 22
    const/16 v2, 0x555

    .line 23
    .line 24
    if-eq v0, v2, :cond_4

    .line 25
    .line 26
    iget-object v0, p0, Lt3/c;->c:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge p2, v2, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_0
    invoke-virtual {p0, p1, v1}, Lt3/c;->a(Lt3/d;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p2, p0, Lt3/c;->a:Lq1/f0;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const p2, 0x7f0b0272

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p2, v0}, Lt3/d;->c(IZ)V

    .line 52
    .line 53
    .line 54
    const p2, 0x7f0b0271

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Lt3/d;->c(IZ)V

    .line 58
    .line 59
    .line 60
    const p2, 0x7f0b0270

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2, v0}, Lt3/d;->c(IZ)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lt3/c;->c:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-ge p2, v2, :cond_3

    .line 74
    .line 75
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_3
    invoke-virtual {p0, p1, v1}, Lt3/c;->a(Lt3/d;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_0
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lt3/c;->b:Landroid/view/LayoutInflater;

    .line 10
    .line 11
    const/16 v0, 0x111

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eq p2, v0, :cond_3

    .line 15
    .line 16
    const/16 v0, 0x222

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eq p2, v0, :cond_2

    .line 20
    .line 21
    const/16 v0, 0x333

    .line 22
    .line 23
    if-eq p2, v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x555

    .line 26
    .line 27
    if-eq p2, v0, :cond_0

    .line 28
    .line 29
    move-object v0, p0

    .line 30
    check-cast v0, Lt3/a;

    .line 31
    .line 32
    iget-object v1, v0, Lt3/a;->d:Landroid/util/SparseIntArray;

    .line 33
    .line 34
    const/16 v3, -0x194

    .line 35
    .line 36
    invoke-virtual {v1, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iget-object v1, v0, Lt3/c;->b:Landroid/view/LayoutInflater;

    .line 41
    .line 42
    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Lt3/c;->b(Landroid/view/View;)Lt3/d;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, v1}, Lt3/c;->b(Landroid/view/View;)Lt3/d;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0, v1}, Lt3/c;->b(Landroid/view/View;)Lt3/d;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p2, p0, Lt3/c;->a:Lq1/f0;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lt3/c;->b:Landroid/view/LayoutInflater;

    .line 67
    .line 68
    const v0, 0x7f0e0105

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lt3/c;->b(Landroid/view/View;)Lt3/d;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 80
    .line 81
    new-instance v0, Landroidx/appcompat/app/a;

    .line 82
    .line 83
    const/16 v1, 0x14

    .line 84
    .line 85
    invoke-direct {v0, v1, p0}, Landroidx/appcompat/app/a;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0, v1}, Lt3/c;->b(Landroid/view/View;)Lt3/d;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :goto_0
    return-object p1
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/p1;)V
    .locals 2

    .line 1
    check-cast p1, Lt3/d;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->onViewAttachedToWindow(Landroidx/recyclerview/widget/p1;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x555

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x111

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x333

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    const/16 v1, 0x222

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    .line 46
    .line 47
    :cond_1
    return-void
.end method
