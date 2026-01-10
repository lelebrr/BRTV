.class public final Landroidx/lifecycle/s0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/lifecycle/y0;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroidx/lifecycle/x0;

.field public final c:Landroid/os/Bundle;

.field public final d:Landroidx/lifecycle/p;

.field public final e:Landroidx/appcompat/widget/v;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lv1/e;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Lv1/e;->a()Landroidx/appcompat/widget/v;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/lifecycle/s0;->e:Landroidx/appcompat/widget/v;

    .line 9
    .line 10
    invoke-interface {p2}, Landroidx/lifecycle/w;->f()Landroidx/lifecycle/p;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Landroidx/lifecycle/s0;->d:Landroidx/lifecycle/p;

    .line 15
    .line 16
    iput-object p3, p0, Landroidx/lifecycle/s0;->c:Landroid/os/Bundle;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/lifecycle/s0;->a:Landroid/app/Application;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget-object p2, Landroidx/lifecycle/x0;->f:Landroidx/lifecycle/x0;

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    new-instance p2, Landroidx/lifecycle/x0;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Landroidx/lifecycle/x0;-><init>(Landroid/app/Application;)V

    .line 29
    .line 30
    .line 31
    sput-object p2, Landroidx/lifecycle/x0;->f:Landroidx/lifecycle/x0;

    .line 32
    .line 33
    :cond_0
    sget-object p1, Landroidx/lifecycle/x0;->f:Landroidx/lifecycle/x0;

    .line 34
    .line 35
    invoke-static {p1}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Landroidx/lifecycle/x0;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-direct {p1, p2}, Landroidx/lifecycle/x0;-><init>(Landroid/app/Application;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/s0;->b:Landroidx/lifecycle/x0;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/v0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/s0;->c(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/v0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final b(Ljava/lang/Class;Lj1/b;)Landroidx/lifecycle/v0;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Landroidx/lifecycle/w0;->c:Landroidx/lifecycle/w0;

    .line 4
    .line 5
    iget-object v3, p2, Ld7/c2;->a:Ljava/io/Serializable;

    .line 6
    .line 7
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v2, :cond_5

    .line 16
    .line 17
    sget-object v4, Landroidx/lifecycle/o0;->a:Landroidx/lifecycle/w0;

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    sget-object v4, Landroidx/lifecycle/o0;->b:Landroidx/lifecycle/w0;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    sget-object v2, Landroidx/lifecycle/w0;->b:Landroidx/lifecycle/w0;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/app/Application;

    .line 40
    .line 41
    const-class v3, Landroidx/lifecycle/a;

    .line 42
    .line 43
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    sget-object v4, Landroidx/lifecycle/t0;->a:Ljava/util/List;

    .line 52
    .line 53
    invoke-static {p1, v4}, Landroidx/lifecycle/t0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    sget-object v4, Landroidx/lifecycle/t0;->b:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {p1, v4}, Landroidx/lifecycle/t0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    :goto_0
    if-nez v4, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/lifecycle/s0;->b:Landroidx/lifecycle/x0;

    .line 67
    .line 68
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/x0;->b(Ljava/lang/Class;Lj1/b;)Landroidx/lifecycle/v0;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_1
    if-eqz v3, :cond_2

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    invoke-static {p2}, Landroidx/lifecycle/o0;->c(Lj1/b;)Landroidx/lifecycle/m0;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const/4 v3, 0x2

    .line 82
    new-array v3, v3, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object v2, v3, v1

    .line 85
    .line 86
    aput-object p2, v3, v0

    .line 87
    .line 88
    invoke-static {p1, v4, v3}, Landroidx/lifecycle/t0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/v0;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/o0;->c(Lj1/b;)Landroidx/lifecycle/m0;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    .line 98
    .line 99
    aput-object p2, v0, v1

    .line 100
    .line 101
    invoke-static {p1, v4, v0}, Landroidx/lifecycle/t0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/v0;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/s0;->d:Landroidx/lifecycle/p;

    .line 107
    .line 108
    if-eqz p2, :cond_4

    .line 109
    .line 110
    invoke-virtual {p0, p1, v2}, Landroidx/lifecycle/s0;->c(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/v0;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :goto_1
    return-object p1

    .line 115
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 116
    .line 117
    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    .line 118
    .line 119
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    .line 126
    .line 127
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method

.method public final c(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/v0;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Landroidx/lifecycle/s0;->d:Landroidx/lifecycle/p;

    .line 4
    .line 5
    if-eqz v2, :cond_a

    .line 6
    .line 7
    const-class v3, Landroidx/lifecycle/a;

    .line 8
    .line 9
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/lifecycle/s0;->a:Landroid/app/Application;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    sget-object v4, Landroidx/lifecycle/t0;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {p1, v4}, Landroidx/lifecycle/t0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v4, Landroidx/lifecycle/t0;->b:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {p1, v4}, Landroidx/lifecycle/t0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    if-nez v4, :cond_3

    .line 33
    .line 34
    iget-object p2, p0, Landroidx/lifecycle/s0;->a:Landroid/app/Application;

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    iget-object p2, p0, Landroidx/lifecycle/s0;->b:Landroidx/lifecycle/x0;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroidx/lifecycle/x0;->a(Ljava/lang/Class;)Landroidx/lifecycle/v0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    sget-object p2, Landroidx/lifecycle/w0;->d:Landroidx/lifecycle/w0;

    .line 46
    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    new-instance p2, Landroidx/lifecycle/w0;

    .line 50
    .line 51
    const/4 v0, 0x6

    .line 52
    invoke-direct {p2, v0}, Landroidx/lifecycle/w0;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sput-object p2, Landroidx/lifecycle/w0;->d:Landroidx/lifecycle/w0;

    .line 56
    .line 57
    :cond_2
    sget-object p2, Landroidx/lifecycle/w0;->d:Landroidx/lifecycle/w0;

    .line 58
    .line 59
    invoke-static {p2}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroidx/lifecycle/w0;->a(Ljava/lang/Class;)Landroidx/lifecycle/v0;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_1
    return-object p1

    .line 67
    :cond_3
    iget-object v5, p0, Landroidx/lifecycle/s0;->e:Landroidx/appcompat/widget/v;

    .line 68
    .line 69
    invoke-static {v5}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v6, p0, Landroidx/lifecycle/s0;->c:Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-virtual {v5, p2}, Landroidx/appcompat/widget/v;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    sget-object v8, Landroidx/lifecycle/m0;->f:[Ljava/lang/Class;

    .line 79
    .line 80
    invoke-static {v7, v6}, Landroidx/lifecycle/o0;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/m0;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    new-instance v7, Landroidx/lifecycle/n0;

    .line 85
    .line 86
    invoke-direct {v7, p2, v6}, Landroidx/lifecycle/n0;-><init>(Ljava/lang/String;Landroidx/lifecycle/m0;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7, v5, v2}, Landroidx/lifecycle/n0;->d(Landroidx/appcompat/widget/v;Landroidx/lifecycle/p;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Landroidx/lifecycle/p;->b()Landroidx/lifecycle/o;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    sget-object v8, Landroidx/lifecycle/o;->b:Landroidx/lifecycle/o;

    .line 97
    .line 98
    if-eq p2, v8, :cond_5

    .line 99
    .line 100
    sget-object v8, Landroidx/lifecycle/o;->d:Landroidx/lifecycle/o;

    .line 101
    .line 102
    invoke-virtual {p2, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-ltz p2, :cond_4

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    new-instance p2, Landroidx/lifecycle/g;

    .line 110
    .line 111
    invoke-direct {p2, v5, v2}, Landroidx/lifecycle/g;-><init>(Landroidx/appcompat/widget/v;Landroidx/lifecycle/p;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p2}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/v;)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    :goto_2
    invoke-virtual {v5}, Landroidx/appcompat/widget/v;->g()V

    .line 119
    .line 120
    .line 121
    :goto_3
    if-eqz v3, :cond_6

    .line 122
    .line 123
    iget-object p2, p0, Landroidx/lifecycle/s0;->a:Landroid/app/Application;

    .line 124
    .line 125
    if-eqz p2, :cond_6

    .line 126
    .line 127
    const/4 v2, 0x2

    .line 128
    new-array v2, v2, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object p2, v2, v1

    .line 131
    .line 132
    aput-object v6, v2, v0

    .line 133
    .line 134
    invoke-static {p1, v4, v2}, Landroidx/lifecycle/t0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/v0;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    goto :goto_4

    .line 139
    :cond_6
    new-array p2, v0, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v6, p2, v1

    .line 142
    .line 143
    invoke-static {p1, v4, p2}, Landroidx/lifecycle/t0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/v0;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :goto_4
    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    .line 148
    .line 149
    iget-object v0, p1, Landroidx/lifecycle/v0;->a:Ljava/util/HashMap;

    .line 150
    .line 151
    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p1, Landroidx/lifecycle/v0;->a:Ljava/util/HashMap;

    .line 153
    .line 154
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-nez v1, :cond_7

    .line 159
    .line 160
    iget-object v2, p1, Landroidx/lifecycle/v0;->a:Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-virtual {v2, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :catchall_0
    move-exception p1

    .line 167
    goto :goto_7

    .line 168
    :cond_7
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-nez v1, :cond_8

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_8
    move-object v7, v1

    .line 173
    :goto_6
    iget-boolean p2, p1, Landroidx/lifecycle/v0;->c:Z

    .line 174
    .line 175
    if-eqz p2, :cond_9

    .line 176
    .line 177
    invoke-static {v7}, Landroidx/lifecycle/v0;->a(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_9
    return-object p1

    .line 181
    :goto_7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    throw p1

    .line 183
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 184
    .line 185
    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    .line 186
    .line 187
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1
.end method
