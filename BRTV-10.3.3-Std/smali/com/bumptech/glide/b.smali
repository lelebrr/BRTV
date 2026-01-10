.class public final Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile h:Lcom/bumptech/glide/b;

.field public static volatile i:Z


# instance fields
.field public final a:Ly2/a;

.field public final b:Lz2/e;

.field public final c:Lcom/bumptech/glide/f;

.field public final d:Ly2/f;

.field public final e:Lk3/l;

.field public final f:Lu6/e;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx2/l;Lz2/e;Ly2/a;Ly2/f;Lk3/l;Lu6/e;ILu6/e;Lp/e;Ljava/util/List;Ljava/util/ArrayList;Ln5/d;La0/b;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 11
    .line 12
    move-object/from16 v1, p4

    .line 13
    .line 14
    iput-object v1, v0, Lcom/bumptech/glide/b;->a:Ly2/a;

    .line 15
    .line 16
    move-object/from16 v3, p5

    .line 17
    .line 18
    iput-object v3, v0, Lcom/bumptech/glide/b;->d:Ly2/f;

    .line 19
    .line 20
    move-object/from16 v1, p3

    .line 21
    .line 22
    iput-object v1, v0, Lcom/bumptech/glide/b;->b:Lz2/e;

    .line 23
    .line 24
    move-object/from16 v1, p6

    .line 25
    .line 26
    iput-object v1, v0, Lcom/bumptech/glide/b;->e:Lk3/l;

    .line 27
    .line 28
    move-object/from16 v1, p7

    .line 29
    .line 30
    iput-object v1, v0, Lcom/bumptech/glide/b;->f:Lu6/e;

    .line 31
    .line 32
    new-instance v4, Lk3/t;

    .line 33
    .line 34
    move-object/from16 v1, p12

    .line 35
    .line 36
    move-object/from16 v2, p13

    .line 37
    .line 38
    invoke-direct {v4, p0, v1, v2}, Lk3/t;-><init>(Lcom/bumptech/glide/b;Ljava/util/ArrayList;Ln5/d;)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Lx4/e;

    .line 42
    .line 43
    const/16 v1, 0x1c

    .line 44
    .line 45
    invoke-direct {v5, v1}, Lx4/e;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v12, Lcom/bumptech/glide/f;

    .line 49
    .line 50
    move-object v1, v12

    .line 51
    move-object v2, p1

    .line 52
    move-object/from16 v3, p5

    .line 53
    .line 54
    move-object/from16 v6, p9

    .line 55
    .line 56
    move-object/from16 v7, p10

    .line 57
    .line 58
    move-object/from16 v8, p11

    .line 59
    .line 60
    move-object v9, p2

    .line 61
    move-object/from16 v10, p14

    .line 62
    .line 63
    move/from16 v11, p8

    .line 64
    .line 65
    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/f;-><init>(Landroid/content/Context;Ly2/f;Lk3/t;Lx4/e;Lu6/e;Lp/e;Ljava/util/List;Lx2/l;La0/b;I)V

    .line 66
    .line 67
    .line 68
    iput-object v12, v0, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/f;

    .line 69
    .line 70
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/b;

    .line 4
    .line 5
    if-nez v2, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :try_start_0
    const-string v3, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-array v4, v1, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v5, Landroid/content/Context;

    .line 20
    .line 21
    aput-object v5, v4, v0

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-array v4, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object v2, v4, v0

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_5

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :catch_2
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :catch_3
    move-exception p0

    .line 49
    goto :goto_3

    .line 50
    :catch_4
    nop

    .line 51
    goto :goto_4

    .line 52
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 55
    .line 56
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 63
    .line 64
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 71
    .line 72
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :goto_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 79
    .line 80
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :goto_4
    const-string v2, "Glide"

    .line 85
    .line 86
    const/4 v3, 0x5

    .line 87
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_0

    .line 92
    .line 93
    const-string v3, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 94
    .line 95
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_0
    const/4 v2, 0x0

    .line 99
    :goto_5
    const-class v3, Lcom/bumptech/glide/b;

    .line 100
    .line 101
    monitor-enter v3

    .line 102
    :try_start_1
    sget-object v4, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/b;

    .line 103
    .line 104
    if-nez v4, :cond_2

    .line 105
    .line 106
    sget-boolean v4, Lcom/bumptech/glide/b;->i:Z

    .line 107
    .line 108
    if-nez v4, :cond_1

    .line 109
    .line 110
    sput-boolean v1, Lcom/bumptech/glide/b;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    .line 112
    :try_start_2
    invoke-static {p0, v2}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    :try_start_3
    sput-boolean v0, Lcom/bumptech/glide/b;->i:Z

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    sput-boolean v0, Lcom/bumptech/glide/b;->i:Z

    .line 120
    .line 121
    throw p0

    .line 122
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    const-string v0, "Glide has been called recursively, this is probably an internal library error!"

    .line 125
    .line 126
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_2
    :goto_6
    monitor-exit v3

    .line 131
    goto :goto_7

    .line 132
    :catchall_1
    move-exception p0

    .line 133
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    throw p0

    .line 135
    :cond_3
    :goto_7
    sget-object p0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/b;

    .line 136
    .line 137
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lk3/l;
    .locals 1

    .line 1
    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 2
    .line 3
    invoke-static {p0, v0}, Lr3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lcom/bumptech/glide/b;->e:Lk3/l;

    .line 11
    .line 12
    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 24

    .line 1
    const/4 v1, 0x1

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v3, 0x4

    .line 4
    const/4 v4, 0x3

    .line 5
    new-instance v5, Lcom/bumptech/glide/e;

    .line 6
    .line 7
    invoke-direct {v5}, Lcom/bumptech/glide/e;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v15

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    const-string v0, "Got app info metadata: "

    .line 18
    .line 19
    const-string v6, "ManifestParser"

    .line 20
    .line 21
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    const-string v7, "Loading Glide modules"

    .line 28
    .line 29
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    const/16 v10, 0x80

    .line 47
    .line 48
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    if-eqz v8, :cond_5

    .line 53
    .line 54
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 55
    .line 56
    if-nez v9, :cond_1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_2

    .line 64
    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    goto :goto_3

    .line 85
    :cond_2
    :goto_0
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_4

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    check-cast v9, Ljava/lang/String;

    .line 106
    .line 107
    const-string v10, "GlideModule"

    .line 108
    .line 109
    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 110
    .line 111
    invoke-virtual {v11, v9}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_3

    .line 120
    .line 121
    invoke-static {v9}, Lo9/d;->w(Ljava/lang/String;)Ll3/a;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_3

    .line 133
    .line 134
    new-instance v10, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v11, "Loaded Glide module: "

    .line 140
    .line 141
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    const-string v0, "Finished loading Glide modules"

    .line 162
    .line 163
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_5
    :goto_2
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    const-string v0, "Got null app info metadata"

    .line 174
    .line 175
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :goto_3
    const/4 v8, 0x6

    .line 180
    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-eqz v8, :cond_6

    .line 185
    .line 186
    const-string v8, "Failed to parse glide modules"

    .line 187
    .line 188
    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .line 190
    .line 191
    :cond_6
    :goto_4
    const-string v0, "Glide"

    .line 192
    .line 193
    if-eqz p1, :cond_9

    .line 194
    .line 195
    new-instance v6, Ljava/util/HashSet;

    .line 196
    .line 197
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-nez v6, :cond_9

    .line 205
    .line 206
    new-instance v6, Ljava/util/HashSet;

    .line 207
    .line 208
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    if-eqz v9, :cond_9

    .line 220
    .line 221
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    check-cast v9, Ll3/a;

    .line 226
    .line 227
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-virtual {v6, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    if-nez v10, :cond_7

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_7
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    if-eqz v10, :cond_8

    .line 243
    .line 244
    new-instance v10, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v11, "AppGlideModule excludes manifest GlideModule: "

    .line 247
    .line 248
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_9
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-eqz v6, :cond_a

    .line 270
    .line 271
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v8

    .line 279
    if-eqz v8, :cond_a

    .line 280
    .line 281
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    check-cast v8, Ll3/a;

    .line 286
    .line 287
    new-instance v9, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v10, "Discovered GlideModule from manifest: "

    .line 290
    .line 291
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v6

    .line 317
    if-eqz v6, :cond_b

    .line 318
    .line 319
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    check-cast v6, Ll3/a;

    .line 324
    .line 325
    invoke-interface {v6, v15, v5}, Ll3/a;->b(Landroid/content/Context;Lcom/bumptech/glide/e;)V

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_b
    iget-object v0, v5, Lcom/bumptech/glide/e;->g:La3/f;

    .line 330
    .line 331
    if-nez v0, :cond_e

    .line 332
    .line 333
    new-instance v0, La3/b;

    .line 334
    .line 335
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 336
    .line 337
    .line 338
    sget v6, La3/f;->c:I

    .line 339
    .line 340
    if-nez v6, :cond_c

    .line 341
    .line 342
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    sput v6, La3/f;->c:I

    .line 355
    .line 356
    :cond_c
    sget v18, La3/f;->c:I

    .line 357
    .line 358
    const-string v6, "source"

    .line 359
    .line 360
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 361
    .line 362
    .line 363
    move-result v8

    .line 364
    if-nez v8, :cond_d

    .line 365
    .line 366
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 367
    .line 368
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 369
    .line 370
    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 371
    .line 372
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 373
    .line 374
    .line 375
    new-instance v9, La3/d;

    .line 376
    .line 377
    invoke-direct {v9, v0, v6, v2}, La3/d;-><init>(La3/b;Ljava/lang/String;Z)V

    .line 378
    .line 379
    .line 380
    const-wide/16 v19, 0x0

    .line 381
    .line 382
    move-object/from16 v16, v8

    .line 383
    .line 384
    move/from16 v17, v18

    .line 385
    .line 386
    move-object/from16 v23, v9

    .line 387
    .line 388
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 389
    .line 390
    .line 391
    new-instance v0, La3/f;

    .line 392
    .line 393
    invoke-direct {v0, v8}, La3/f;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 394
    .line 395
    .line 396
    iput-object v0, v5, Lcom/bumptech/glide/e;->g:La3/f;

    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 400
    .line 401
    const-string v1, "Name must be non-null and non-empty, but given: source"

    .line 402
    .line 403
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw v0

    .line 407
    :cond_e
    :goto_8
    iget-object v0, v5, Lcom/bumptech/glide/e;->h:La3/f;

    .line 408
    .line 409
    if-nez v0, :cond_10

    .line 410
    .line 411
    sget v0, La3/f;->c:I

    .line 412
    .line 413
    new-instance v0, La3/b;

    .line 414
    .line 415
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 416
    .line 417
    .line 418
    const-string v6, "disk-cache"

    .line 419
    .line 420
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 421
    .line 422
    .line 423
    move-result v8

    .line 424
    if-nez v8, :cond_f

    .line 425
    .line 426
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 427
    .line 428
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 429
    .line 430
    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 431
    .line 432
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 433
    .line 434
    .line 435
    new-instance v9, La3/d;

    .line 436
    .line 437
    const/4 v10, 0x1

    .line 438
    invoke-direct {v9, v0, v6, v10}, La3/d;-><init>(La3/b;Ljava/lang/String;Z)V

    .line 439
    .line 440
    .line 441
    const-wide/16 v19, 0x0

    .line 442
    .line 443
    move-object/from16 v16, v8

    .line 444
    .line 445
    move/from16 v17, v10

    .line 446
    .line 447
    move/from16 v18, v10

    .line 448
    .line 449
    move-object/from16 v23, v9

    .line 450
    .line 451
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 452
    .line 453
    .line 454
    new-instance v0, La3/f;

    .line 455
    .line 456
    invoke-direct {v0, v8}, La3/f;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 457
    .line 458
    .line 459
    iput-object v0, v5, Lcom/bumptech/glide/e;->h:La3/f;

    .line 460
    .line 461
    goto :goto_9

    .line 462
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 463
    .line 464
    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    .line 465
    .line 466
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v0

    .line 470
    :cond_10
    :goto_9
    iget-object v0, v5, Lcom/bumptech/glide/e;->n:La3/f;

    .line 471
    .line 472
    if-nez v0, :cond_14

    .line 473
    .line 474
    sget v0, La3/f;->c:I

    .line 475
    .line 476
    if-nez v0, :cond_11

    .line 477
    .line 478
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    sput v0, La3/f;->c:I

    .line 491
    .line 492
    :cond_11
    sget v0, La3/f;->c:I

    .line 493
    .line 494
    if-lt v0, v3, :cond_12

    .line 495
    .line 496
    const/16 v18, 0x2

    .line 497
    .line 498
    goto :goto_a

    .line 499
    :cond_12
    const/16 v18, 0x1

    .line 500
    .line 501
    :goto_a
    new-instance v0, La3/b;

    .line 502
    .line 503
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 504
    .line 505
    .line 506
    const-string v6, "animation"

    .line 507
    .line 508
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 509
    .line 510
    .line 511
    move-result v7

    .line 512
    if-nez v7, :cond_13

    .line 513
    .line 514
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 515
    .line 516
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 517
    .line 518
    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 519
    .line 520
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 521
    .line 522
    .line 523
    new-instance v8, La3/d;

    .line 524
    .line 525
    invoke-direct {v8, v0, v6, v1}, La3/d;-><init>(La3/b;Ljava/lang/String;Z)V

    .line 526
    .line 527
    .line 528
    const-wide/16 v19, 0x0

    .line 529
    .line 530
    move-object/from16 v16, v7

    .line 531
    .line 532
    move/from16 v17, v18

    .line 533
    .line 534
    move-object/from16 v23, v8

    .line 535
    .line 536
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 537
    .line 538
    .line 539
    new-instance v0, La3/f;

    .line 540
    .line 541
    invoke-direct {v0, v7}, La3/f;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 542
    .line 543
    .line 544
    iput-object v0, v5, Lcom/bumptech/glide/e;->n:La3/f;

    .line 545
    .line 546
    goto :goto_b

    .line 547
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 548
    .line 549
    const-string v1, "Name must be non-null and non-empty, but given: animation"

    .line 550
    .line 551
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    throw v0

    .line 555
    :cond_14
    :goto_b
    iget-object v0, v5, Lcom/bumptech/glide/e;->j:Ln5/b;

    .line 556
    .line 557
    if-nez v0, :cond_1a

    .line 558
    .line 559
    new-instance v0, Lz2/f;

    .line 560
    .line 561
    invoke-direct {v0, v15}, Lz2/f;-><init>(Landroid/content/Context;)V

    .line 562
    .line 563
    .line 564
    new-instance v6, Ln5/b;

    .line 565
    .line 566
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 567
    .line 568
    .line 569
    iget-object v7, v0, Lz2/f;->a:Landroid/content/Context;

    .line 570
    .line 571
    iget-object v8, v0, Lz2/f;->b:Landroid/app/ActivityManager;

    .line 572
    .line 573
    invoke-virtual {v8}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 574
    .line 575
    .line 576
    move-result v9

    .line 577
    if-eqz v9, :cond_15

    .line 578
    .line 579
    const/high16 v9, 0x200000

    .line 580
    .line 581
    goto :goto_c

    .line 582
    :cond_15
    const/high16 v9, 0x400000

    .line 583
    .line 584
    :goto_c
    iput v9, v6, Ln5/b;->c:I

    .line 585
    .line 586
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 587
    .line 588
    .line 589
    move-result v10

    .line 590
    const/high16 v11, 0x100000

    .line 591
    .line 592
    mul-int v10, v10, v11

    .line 593
    .line 594
    invoke-virtual {v8}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 595
    .line 596
    .line 597
    move-result v11

    .line 598
    int-to-float v10, v10

    .line 599
    if-eqz v11, :cond_16

    .line 600
    .line 601
    const v11, 0x3ea8f5c3    # 0.33f

    .line 602
    .line 603
    .line 604
    goto :goto_d

    .line 605
    :cond_16
    const v11, 0x3ecccccd    # 0.4f

    .line 606
    .line 607
    .line 608
    :goto_d
    mul-float v10, v10, v11

    .line 609
    .line 610
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 611
    .line 612
    .line 613
    move-result v10

    .line 614
    iget-object v11, v0, Lz2/f;->c:Ls2/c;

    .line 615
    .line 616
    iget-object v11, v11, Ls2/c;->b:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast v11, Landroid/util/DisplayMetrics;

    .line 619
    .line 620
    iget v12, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 621
    .line 622
    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 623
    .line 624
    mul-int v12, v12, v11

    .line 625
    .line 626
    mul-int/lit8 v12, v12, 0x4

    .line 627
    .line 628
    int-to-float v3, v12

    .line 629
    iget v0, v0, Lz2/f;->d:F

    .line 630
    .line 631
    mul-float v11, v3, v0

    .line 632
    .line 633
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 634
    .line 635
    .line 636
    move-result v11

    .line 637
    const/high16 v12, 0x40000000    # 2.0f

    .line 638
    .line 639
    mul-float v3, v3, v12

    .line 640
    .line 641
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 642
    .line 643
    .line 644
    move-result v3

    .line 645
    sub-int v13, v10, v9

    .line 646
    .line 647
    add-int v1, v3, v11

    .line 648
    .line 649
    if-gt v1, v13, :cond_17

    .line 650
    .line 651
    iput v3, v6, Ln5/b;->b:I

    .line 652
    .line 653
    iput v11, v6, Ln5/b;->a:I

    .line 654
    .line 655
    goto :goto_e

    .line 656
    :cond_17
    int-to-float v3, v13

    .line 657
    add-float v11, v0, v12

    .line 658
    .line 659
    div-float/2addr v3, v11

    .line 660
    mul-float v12, v12, v3

    .line 661
    .line 662
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 663
    .line 664
    .line 665
    move-result v11

    .line 666
    iput v11, v6, Ln5/b;->b:I

    .line 667
    .line 668
    mul-float v3, v3, v0

    .line 669
    .line 670
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    iput v0, v6, Ln5/b;->a:I

    .line 675
    .line 676
    :goto_e
    const-string v0, "MemorySizeCalculator"

    .line 677
    .line 678
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    if-eqz v3, :cond_19

    .line 683
    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    .line 685
    .line 686
    const-string v4, "Calculation complete, Calculated memory cache size: "

    .line 687
    .line 688
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    iget v4, v6, Ln5/b;->b:I

    .line 692
    .line 693
    int-to-long v11, v4

    .line 694
    invoke-static {v7, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    const-string v4, ", pool size: "

    .line 702
    .line 703
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    iget v4, v6, Ln5/b;->a:I

    .line 707
    .line 708
    int-to-long v11, v4

    .line 709
    invoke-static {v7, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    const-string v4, ", byte array size: "

    .line 717
    .line 718
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    int-to-long v11, v9

    .line 722
    invoke-static {v7, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v4

    .line 726
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    const-string v4, ", memory class limited? "

    .line 730
    .line 731
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    if-le v1, v10, :cond_18

    .line 735
    .line 736
    const/4 v1, 0x1

    .line 737
    goto :goto_f

    .line 738
    :cond_18
    const/4 v1, 0x0

    .line 739
    :goto_f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    const-string v1, ", max size: "

    .line 743
    .line 744
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    int-to-long v9, v10

    .line 748
    invoke-static {v7, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    const-string v1, ", memoryClass: "

    .line 756
    .line 757
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    const-string v1, ", isLowMemoryDevice: "

    .line 768
    .line 769
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v8}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 773
    .line 774
    .line 775
    move-result v1

    .line 776
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .line 785
    .line 786
    :cond_19
    iput-object v6, v5, Lcom/bumptech/glide/e;->j:Ln5/b;

    .line 787
    .line 788
    :cond_1a
    iget-object v0, v5, Lcom/bumptech/glide/e;->k:Lu6/e;

    .line 789
    .line 790
    if-nez v0, :cond_1b

    .line 791
    .line 792
    new-instance v0, Lu6/e;

    .line 793
    .line 794
    const/16 v1, 0x10

    .line 795
    .line 796
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 797
    .line 798
    .line 799
    iput-object v0, v5, Lcom/bumptech/glide/e;->k:Lu6/e;

    .line 800
    .line 801
    :cond_1b
    iget-object v0, v5, Lcom/bumptech/glide/e;->d:Ly2/a;

    .line 802
    .line 803
    if-nez v0, :cond_1d

    .line 804
    .line 805
    iget-object v0, v5, Lcom/bumptech/glide/e;->j:Ln5/b;

    .line 806
    .line 807
    iget v0, v0, Ln5/b;->a:I

    .line 808
    .line 809
    if-lez v0, :cond_1c

    .line 810
    .line 811
    new-instance v1, Ly2/g;

    .line 812
    .line 813
    int-to-long v3, v0

    .line 814
    invoke-direct {v1, v3, v4}, Ly2/g;-><init>(J)V

    .line 815
    .line 816
    .line 817
    iput-object v1, v5, Lcom/bumptech/glide/e;->d:Ly2/a;

    .line 818
    .line 819
    goto :goto_10

    .line 820
    :cond_1c
    new-instance v0, Lq1/f0;

    .line 821
    .line 822
    const/16 v1, 0xa

    .line 823
    .line 824
    invoke-direct {v0, v1}, Lq1/f0;-><init>(I)V

    .line 825
    .line 826
    .line 827
    iput-object v0, v5, Lcom/bumptech/glide/e;->d:Ly2/a;

    .line 828
    .line 829
    :cond_1d
    :goto_10
    iget-object v0, v5, Lcom/bumptech/glide/e;->e:Ly2/f;

    .line 830
    .line 831
    if-nez v0, :cond_1e

    .line 832
    .line 833
    new-instance v0, Ly2/f;

    .line 834
    .line 835
    iget-object v1, v5, Lcom/bumptech/glide/e;->j:Ln5/b;

    .line 836
    .line 837
    iget v1, v1, Ln5/b;->c:I

    .line 838
    .line 839
    invoke-direct {v0, v1}, Ly2/f;-><init>(I)V

    .line 840
    .line 841
    .line 842
    iput-object v0, v5, Lcom/bumptech/glide/e;->e:Ly2/f;

    .line 843
    .line 844
    :cond_1e
    iget-object v0, v5, Lcom/bumptech/glide/e;->f:Lz2/e;

    .line 845
    .line 846
    if-nez v0, :cond_1f

    .line 847
    .line 848
    new-instance v0, Lz2/e;

    .line 849
    .line 850
    iget-object v1, v5, Lcom/bumptech/glide/e;->j:Ln5/b;

    .line 851
    .line 852
    iget v1, v1, Ln5/b;->b:I

    .line 853
    .line 854
    int-to-long v3, v1

    .line 855
    invoke-direct {v0, v3, v4}, Lr3/j;-><init>(J)V

    .line 856
    .line 857
    .line 858
    iput-object v0, v5, Lcom/bumptech/glide/e;->f:Lz2/e;

    .line 859
    .line 860
    :cond_1f
    iget-object v0, v5, Lcom/bumptech/glide/e;->i:Lz2/d;

    .line 861
    .line 862
    if-nez v0, :cond_20

    .line 863
    .line 864
    new-instance v0, Lz2/d;

    .line 865
    .line 866
    new-instance v1, La4/k;

    .line 867
    .line 868
    const/4 v3, 0x5

    .line 869
    invoke-direct {v1, v15, v3}, La4/k;-><init>(Landroid/content/Context;I)V

    .line 870
    .line 871
    .line 872
    const-wide/32 v3, 0xfa00000

    .line 873
    .line 874
    .line 875
    invoke-direct {v0, v1, v3, v4}, Lz2/d;-><init>(La4/k;J)V

    .line 876
    .line 877
    .line 878
    iput-object v0, v5, Lcom/bumptech/glide/e;->i:Lz2/d;

    .line 879
    .line 880
    :cond_20
    iget-object v0, v5, Lcom/bumptech/glide/e;->c:Lx2/l;

    .line 881
    .line 882
    if-nez v0, :cond_21

    .line 883
    .line 884
    new-instance v0, Lx2/l;

    .line 885
    .line 886
    iget-object v7, v5, Lcom/bumptech/glide/e;->f:Lz2/e;

    .line 887
    .line 888
    iget-object v8, v5, Lcom/bumptech/glide/e;->i:Lz2/d;

    .line 889
    .line 890
    iget-object v9, v5, Lcom/bumptech/glide/e;->h:La3/f;

    .line 891
    .line 892
    iget-object v10, v5, Lcom/bumptech/glide/e;->g:La3/f;

    .line 893
    .line 894
    new-instance v11, La3/f;

    .line 895
    .line 896
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 897
    .line 898
    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 899
    .line 900
    new-instance v22, Ljava/util/concurrent/SynchronousQueue;

    .line 901
    .line 902
    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 903
    .line 904
    .line 905
    new-instance v3, La3/d;

    .line 906
    .line 907
    new-instance v4, La3/b;

    .line 908
    .line 909
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 910
    .line 911
    .line 912
    const-string v6, "source-unlimited"

    .line 913
    .line 914
    invoke-direct {v3, v4, v6, v2}, La3/d;-><init>(La3/b;Ljava/lang/String;Z)V

    .line 915
    .line 916
    .line 917
    sget-wide v19, La3/f;->b:J

    .line 918
    .line 919
    const/16 v17, 0x0

    .line 920
    .line 921
    const v18, 0x7fffffff

    .line 922
    .line 923
    .line 924
    move-object/from16 v16, v1

    .line 925
    .line 926
    move-object/from16 v23, v3

    .line 927
    .line 928
    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 929
    .line 930
    .line 931
    invoke-direct {v11, v1}, La3/f;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 932
    .line 933
    .line 934
    iget-object v12, v5, Lcom/bumptech/glide/e;->n:La3/f;

    .line 935
    .line 936
    move-object v6, v0

    .line 937
    invoke-direct/range {v6 .. v12}, Lx2/l;-><init>(Lz2/e;Lz2/d;La3/f;La3/f;La3/f;La3/f;)V

    .line 938
    .line 939
    .line 940
    iput-object v0, v5, Lcom/bumptech/glide/e;->c:Lx2/l;

    .line 941
    .line 942
    :cond_21
    iget-object v0, v5, Lcom/bumptech/glide/e;->o:Ljava/util/List;

    .line 943
    .line 944
    if-nez v0, :cond_22

    .line 945
    .line 946
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    iput-object v0, v5, Lcom/bumptech/glide/e;->o:Ljava/util/List;

    .line 951
    .line 952
    goto :goto_11

    .line 953
    :cond_22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    iput-object v0, v5, Lcom/bumptech/glide/e;->o:Ljava/util/List;

    .line 958
    .line 959
    :goto_11
    iget-object v0, v5, Lcom/bumptech/glide/e;->b:Lb3/x;

    .line 960
    .line 961
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 962
    .line 963
    .line 964
    new-instance v1, La0/b;

    .line 965
    .line 966
    invoke-direct {v1, v0}, La0/b;-><init>(Lb3/x;)V

    .line 967
    .line 968
    .line 969
    new-instance v12, Lk3/l;

    .line 970
    .line 971
    invoke-direct {v12}, Lk3/l;-><init>()V

    .line 972
    .line 973
    .line 974
    new-instance v0, Lcom/bumptech/glide/b;

    .line 975
    .line 976
    iget-object v8, v5, Lcom/bumptech/glide/e;->c:Lx2/l;

    .line 977
    .line 978
    iget-object v9, v5, Lcom/bumptech/glide/e;->f:Lz2/e;

    .line 979
    .line 980
    iget-object v10, v5, Lcom/bumptech/glide/e;->d:Ly2/a;

    .line 981
    .line 982
    iget-object v11, v5, Lcom/bumptech/glide/e;->e:Ly2/f;

    .line 983
    .line 984
    iget-object v13, v5, Lcom/bumptech/glide/e;->k:Lu6/e;

    .line 985
    .line 986
    iget-object v2, v5, Lcom/bumptech/glide/e;->a:Lp/e;

    .line 987
    .line 988
    iget-object v3, v5, Lcom/bumptech/glide/e;->o:Ljava/util/List;

    .line 989
    .line 990
    iget v4, v5, Lcom/bumptech/glide/e;->l:I

    .line 991
    .line 992
    iget-object v5, v5, Lcom/bumptech/glide/e;->m:Lu6/e;

    .line 993
    .line 994
    move-object v6, v0

    .line 995
    move-object v7, v15

    .line 996
    move-object/from16 v18, v14

    .line 997
    .line 998
    move v14, v4

    .line 999
    move-object v4, v15

    .line 1000
    move-object v15, v5

    .line 1001
    move-object/from16 v16, v2

    .line 1002
    .line 1003
    move-object/from16 v17, v3

    .line 1004
    .line 1005
    move-object/from16 v19, p1

    .line 1006
    .line 1007
    move-object/from16 v20, v1

    .line 1008
    .line 1009
    invoke-direct/range {v6 .. v20}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Lx2/l;Lz2/e;Ly2/a;Ly2/f;Lk3/l;Lu6/e;ILu6/e;Lp/e;Ljava/util/List;Ljava/util/ArrayList;Ln5/d;La0/b;)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v4, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1013
    .line 1014
    .line 1015
    sput-object v0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/b;

    .line 1016
    .line 1017
    return-void
.end method

.method public static e(Landroid/content/Context;)Lcom/bumptech/glide/o;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lk3/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lk3/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static f(Lka/i0;)Lcom/bumptech/glide/o;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lk3/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lr3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lr3/n;->a:[C

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-ne v1, v2, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Lk3/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iget-object v1, v0, Lk3/l;->b:Lk3/f;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v1, v2}, Lk3/f;->a(Landroidx/fragment/app/FragmentActivity;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/s;->i()Landroidx/fragment/app/j0;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    iget-object v8, p0, Landroidx/fragment/app/s;->M:Landroidx/lifecycle/y;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/s;->o()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    iget-boolean v1, p0, Landroidx/fragment/app/s;->z:Z

    .line 93
    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    iget-object v1, p0, Landroidx/fragment/app/s;->F:Landroid/view/View;

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    iget-object p0, p0, Landroidx/fragment/app/s;->F:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_3

    .line 113
    .line 114
    const/4 v10, 0x1

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    const/4 v10, 0x0

    .line 117
    :goto_1
    iget-object v5, v0, Lk3/l;->c:La7/f;

    .line 118
    .line 119
    invoke-virtual/range {v5 .. v10}, La7/f;->C(Landroid/content/Context;Lcom/bumptech/glide/b;Landroidx/lifecycle/p;Landroidx/fragment/app/j0;Z)Lcom/bumptech/glide/o;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    :goto_2
    return-object p0
.end method


# virtual methods
.method public final d(Lcom/bumptech/glide/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "Cannot unregister not yet registered manager"

    .line 24
    .line 25
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    .line 1
    invoke-static {}, Lr3/n;->a()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/b;->b:Lz2/e;

    .line 7
    .line 8
    invoke-virtual {v2, v0, v1}, Lr3/j;->e(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Ly2/a;

    .line 12
    .line 13
    invoke-interface {v0}, Ly2/a;->j()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/b;->d:Ly2/f;

    .line 17
    .line 18
    invoke-virtual {v0}, Ly2/f;->a()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    .line 1
    invoke-static {}, Lr3/n;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->g:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/bumptech/glide/o;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lz2/e;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lz2/e;->f(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/b;->a:Ly2/a;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Ly2/a;->a(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/b;->d:Ly2/f;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ly2/f;->i(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method
