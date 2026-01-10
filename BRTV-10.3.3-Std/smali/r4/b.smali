.class public abstract Lr4/b;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static a:J

.field public static b:Ljava/lang/reflect/Method;


# direct methods
.method public static A([IIII)I
    .locals 1

    .line 1
    :goto_0
    if-ge p2, p3, :cond_1

    .line 2
    .line 3
    aget v0, p0, p2

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return p2

    .line 8
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 p0, -0x1

    .line 12
    return p0
.end method

.method public static B()Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    sget-object v2, Lr4/b;->b:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ln0/f1;->r()Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    :cond_0
    const-class v2, Landroid/os/Trace;

    .line 13
    .line 14
    :try_start_1
    sget-object v3, Lr4/b;->b:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    const-string v3, "TRACE_TAG_APP"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    sput-wide v5, Lr4/b;->a:J

    .line 30
    .line 31
    const-string v3, "isTagEnabled"

    .line 32
    .line 33
    new-array v5, v0, [Ljava/lang/Class;

    .line 34
    .line 35
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    aput-object v6, v5, v1

    .line 38
    .line 39
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sput-object v2, Lr4/b;->b:Ljava/lang/reflect/Method;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    sget-object v2, Lr4/b;->b:Ljava/lang/reflect/Method;

    .line 49
    .line 50
    sget-wide v5, Lr4/b;->a:J

    .line 51
    .line 52
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v3, v0, v1

    .line 59
    .line 60
    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    goto :goto_2

    .line 71
    :goto_1
    instance-of v2, v0, Ljava/lang/reflect/InvocationTargetException;

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    check-cast v0, Ljava/lang/RuntimeException;

    .line 84
    .line 85
    throw v0

    .line 86
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :cond_3
    const-string v2, "Unable to call isTagEnabled via reflection"

    .line 93
    .line 94
    const-string v3, "Trace"

    .line 95
    .line 96
    invoke-static {v3, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .line 98
    .line 99
    :goto_2
    return v1
.end method

.method public static C(D)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 p1, 0x3ff

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public static J(D)I
    .locals 3

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmpl-double v2, p0, v0

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    const p0, 0x7fffffff

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    .line 21
    .line 22
    cmpg-double v2, p0, v0

    .line 23
    .line 24
    if-gez v2, :cond_1

    .line 25
    .line 26
    const/high16 p0, -0x80000000

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    long-to-int p0, p0

    .line 34
    :goto_0
    return p0

    .line 35
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p1, "Cannot round NaN value."

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public static K(J)I
    .locals 3

    .line 1
    const-wide/32 v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    cmp-long v2, p0, v0

    .line 5
    .line 6
    if-lez v2, :cond_0

    .line 7
    .line 8
    const p0, 0x7fffffff

    .line 9
    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const-wide/32 v0, -0x80000000

    .line 13
    .line 14
    .line 15
    cmp-long v2, p0, v0

    .line 16
    .line 17
    if-gez v2, :cond_1

    .line 18
    .line 19
    const/high16 p0, -0x80000000

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    long-to-int p1, p0

    .line 23
    return p1
.end method

.method public static L(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/appcompat/widget/w3;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/y3;->k:Landroidx/appcompat/widget/y3;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/y3;->a:Landroid/view/View;

    .line 17
    .line 18
    if-ne v0, p0, :cond_1

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/appcompat/widget/y3;->b(Landroidx/appcompat/widget/y3;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    sget-object p1, Landroidx/appcompat/widget/y3;->l:Landroidx/appcompat/widget/y3;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object v0, p1, Landroidx/appcompat/widget/y3;->a:Landroid/view/View;

    .line 34
    .line 35
    if-ne v0, p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/appcompat/widget/y3;->a()V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    new-instance v0, Landroidx/appcompat/widget/y3;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/y3;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public static M(Li9/p;Lt9/a;Lt9/a;)V
    .locals 1

    .line 1
    :try_start_0
    check-cast p0, Lc9/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lc9/a;->create(Ljava/lang/Object;La9/d;)La9/d;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/bumptech/glide/d;->r(La9/d;)La9/d;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p0, p1, v0}, Lx9/a;->f(La9/d;Ljava/lang/Object;Li9/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {p0}, Lo9/d;->f(Ljava/lang/Throwable;)Lw8/g;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p2, p1}, Lt9/a;->resumeWith(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public static N(Ljava/util/Collection;)[I
    .locals 4

    .line 1
    instance-of v0, p0, Lg7/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lg7/c;

    .line 6
    .line 7
    iget v0, p0, Lg7/c;->b:I

    .line 8
    .line 9
    iget v1, p0, Lg7/c;->c:I

    .line 10
    .line 11
    iget-object p0, p0, Lg7/c;->a:[I

    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    array-length v0, p0

    .line 23
    new-array v1, v0, [I

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v0, :cond_1

    .line 27
    .line 28
    aget-object v3, p0, v2

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    check-cast v3, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    aput v3, v1, v2

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-object v1
.end method

.method public static P(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/16 v5, 0x2d

    .line 22
    .line 23
    if-ne v4, v5, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ne v2, v4, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    add-int/lit8 v4, v2, 0x1

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v6, -0x1

    .line 40
    const/16 v7, 0x80

    .line 41
    .line 42
    if-ge v5, v7, :cond_4

    .line 43
    .line 44
    sget-object v8, Lg7/d;->a:[B

    .line 45
    .line 46
    aget-byte v5, v8, v5

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    sget-object v5, Lg7/d;->a:[B

    .line 50
    .line 51
    const/4 v5, -0x1

    .line 52
    :goto_1
    if-ltz v5, :cond_0

    .line 53
    .line 54
    const/16 v8, 0xa

    .line 55
    .line 56
    if-lt v5, v8, :cond_5

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    neg-int v5, v5

    .line 60
    int-to-long v9, v5

    .line 61
    int-to-long v11, v8

    .line 62
    const-wide/high16 v13, -0x8000000000000000L

    .line 63
    .line 64
    div-long v15, v13, v11

    .line 65
    .line 66
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-ge v4, v5, :cond_9

    .line 71
    .line 72
    add-int/lit8 v5, v4, 0x1

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ge v4, v7, :cond_6

    .line 79
    .line 80
    sget-object v17, Lg7/d;->a:[B

    .line 81
    .line 82
    aget-byte v4, v17, v4

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_6
    sget-object v4, Lg7/d;->a:[B

    .line 86
    .line 87
    const/4 v4, -0x1

    .line 88
    :goto_3
    if-ltz v4, :cond_0

    .line 89
    .line 90
    if-ge v4, v8, :cond_0

    .line 91
    .line 92
    cmp-long v17, v9, v15

    .line 93
    .line 94
    if-gez v17, :cond_7

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_7
    mul-long v9, v9, v11

    .line 98
    .line 99
    int-to-long v3, v4

    .line 100
    add-long v18, v3, v13

    .line 101
    .line 102
    cmp-long v20, v9, v18

    .line 103
    .line 104
    if-gez v20, :cond_8

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_8
    sub-long/2addr v9, v3

    .line 108
    move v4, v5

    .line 109
    goto :goto_2

    .line 110
    :cond_9
    if-eqz v2, :cond_a

    .line 111
    .line 112
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    goto :goto_4

    .line 117
    :cond_a
    cmp-long v0, v9, v13

    .line 118
    .line 119
    if-nez v0, :cond_b

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_b
    neg-long v0, v9

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :goto_4
    if-eqz v0, :cond_d

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    int-to-long v3, v3

    .line 138
    cmp-long v5, v1, v3

    .line 139
    .line 140
    if-eqz v5, :cond_c

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    goto :goto_6

    .line 152
    :cond_d
    :goto_5
    const/4 v3, 0x0

    .line 153
    :goto_6
    return-object v3
.end method

.method public static Q(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 4

    .line 1
    const-string v0, "{"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string v1, ","

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    const-string v3, "\""

    .line 41
    .line 42
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "\":"

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    const-string v1, "null"

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :goto_1
    const/4 v1, 0x0

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const-string p1, "}"

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static varargs a([I)Ljava/util/List;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lg7/c;

    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v2, v1, p0}, Lg7/c;-><init>(II[I)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static final b(Landroidx/lifecycle/p;Lc9/c;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lr2/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lr2/b;

    .line 7
    .line 8
    iget v1, v0, Lr2/b;->d:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lr2/b;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lr2/b;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lc9/c;-><init>(La9/d;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lr2/b;->c:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lb9/a;->a:Lb9/a;

    .line 28
    .line 29
    iget v2, v0, Lr2/b;->d:I

    .line 30
    .line 31
    sget-object v3, Lw8/l;->a:Lw8/l;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v4, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lr2/b;->b:Lj9/n;

    .line 39
    .line 40
    iget-object v0, v0, Lr2/b;->a:Landroidx/lifecycle/p;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/lifecycle/p;->b()Landroidx/lifecycle/o;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v2, Landroidx/lifecycle/o;->d:Landroidx/lifecycle/o;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-ltz p1, :cond_3

    .line 70
    .line 71
    return-object v3

    .line 72
    :cond_3
    new-instance p1, Lj9/n;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    :try_start_1
    iput-object p0, v0, Lr2/b;->a:Landroidx/lifecycle/p;

    .line 78
    .line 79
    iput-object p1, v0, Lr2/b;->b:Lj9/n;

    .line 80
    .line 81
    iput v4, v0, Lr2/b;->d:I

    .line 82
    .line 83
    new-instance v2, Lt9/e;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/bumptech/glide/d;->r(La9/d;)La9/d;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {v2, v0, v4}, Lt9/e;-><init>(La9/d;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lt9/e;->n()V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lr2/c;

    .line 96
    .line 97
    invoke-direct {v0, v2}, Lr2/c;-><init>(Lt9/e;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p1, Lj9/n;->a:Ljava/lang/Object;

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/v;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lt9/e;->m()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    if-ne v0, v1, :cond_4

    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_4
    move-object v0, p0

    .line 113
    move-object p0, p1

    .line 114
    :goto_1
    iget-object p0, p0, Lj9/n;->a:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p0, Landroidx/lifecycle/v;

    .line 117
    .line 118
    if-eqz p0, :cond_5

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    return-object v3

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    move-object v5, v0

    .line 126
    move-object v0, p0

    .line 127
    move-object p0, p1

    .line 128
    move-object p1, v5

    .line 129
    :goto_2
    iget-object p0, p0, Lj9/n;->a:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p0, Landroidx/lifecycle/v;

    .line 132
    .line 133
    if-eqz p0, :cond_6

    .line 134
    .line 135
    invoke-virtual {v0, p0}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    throw p1
.end method

.method public static c(J)I
    .locals 4

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-long v1, v0

    .line 3
    cmp-long v3, v1, p0

    .line 4
    .line 5
    if-nez v3, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    const-string v2, "Out of range: %s"

    .line 11
    .line 12
    invoke-static {v1, v2, p0, p1}, Lb7/b;->g(ZLjava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    return v0
.end method

.method public static f(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/d0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/x0;Z)I
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/x0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l1;->b()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-nez p5, :cond_1

    .line 19
    .line 20
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    sub-int/2addr p0, p1

    .line 29
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    add-int/lit8 p0, p0, 0x1

    .line 34
    .line 35
    return p0

    .line 36
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/d0;->b(Landroid/view/View;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/d0;->e(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    sub-int/2addr p0, p2

    .line 45
    invoke-virtual {p1}, Landroidx/recyclerview/widget/d0;->l()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public static g(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/d0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/x0;ZZ)I
    .locals 4

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/x0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l1;->b()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    if-eqz p2, :cond_3

    .line 15
    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz p6, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l1;->b()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    sub-int/2addr p0, v2

    .line 50
    add-int/lit8 p0, p0, -0x1

    .line 51
    .line 52
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    :goto_0
    if-nez p5, :cond_2

    .line 62
    .line 63
    return p0

    .line 64
    :cond_2
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/d0;->b(Landroid/view/View;)I

    .line 65
    .line 66
    .line 67
    move-result p5

    .line 68
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/d0;->e(Landroid/view/View;)I

    .line 69
    .line 70
    .line 71
    move-result p6

    .line 72
    sub-int/2addr p5, p6

    .line 73
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    .line 74
    .line 75
    .line 76
    move-result p5

    .line 77
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 78
    .line 79
    .line 80
    move-result p6

    .line 81
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    sub-int/2addr p6, p3

    .line 86
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    add-int/lit8 p3, p3, 0x1

    .line 91
    .line 92
    int-to-float p4, p5

    .line 93
    int-to-float p3, p3

    .line 94
    div-float/2addr p4, p3

    .line 95
    int-to-float p0, p0

    .line 96
    mul-float p0, p0, p4

    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/recyclerview/widget/d0;->k()I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/d0;->e(Landroid/view/View;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    sub-int/2addr p3, p1

    .line 107
    int-to-float p1, p3

    .line 108
    add-float/2addr p0, p1

    .line 109
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    return p0

    .line 114
    :cond_3
    :goto_1
    return v1
.end method

.method public static h(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/d0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/x0;Z)I
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/x0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l1;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-nez p5, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l1;->b()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/d0;->b(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result p5

    .line 29
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/d0;->e(Landroid/view/View;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    sub-int/2addr p5, p1

    .line 34
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    sub-int/2addr p1, p2

    .line 43
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    int-to-float p2, p5

    .line 50
    int-to-float p1, p1

    .line 51
    div-float/2addr p2, p1

    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/l1;->b()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    int-to-float p0, p0

    .line 57
    mul-float p2, p2, p0

    .line 58
    .line 59
    float-to-int p0, p2

    .line 60
    return p0

    .line 61
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public static i(II)I
    .locals 3

    .line 1
    const v0, 0x3fffffff    # 1.9999999f

    .line 2
    .line 3
    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    const-string v2, "min (%s) must be less than or equal to max (%s)"

    .line 10
    .line 11
    invoke-static {v2, p1, v0, v1}, Lb7/b;->d(Ljava/lang/String;IIZ)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public static j(Ljava/io/Serializable;)[J
    .locals 4

    .line 1
    instance-of v0, p0, [I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, [I

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    aget v2, p0, v1

    .line 15
    .line 16
    int-to-long v2, v2

    .line 17
    aput-wide v2, v0, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0

    .line 23
    :cond_1
    instance-of v0, p0, [J

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    check-cast p0, [J

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static k(I[D[[D)Lr4/b;
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    if-ne v2, v4, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v2, p0

    .line 13
    .line 14
    :goto_0
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    if-eq v2, v3, :cond_3

    .line 20
    .line 21
    new-instance v2, Ls/b;

    .line 22
    .line 23
    invoke-direct {v2}, Ls/b;-><init>()V

    .line 24
    .line 25
    .line 26
    aget-object v4, v1, v7

    .line 27
    .line 28
    array-length v4, v4

    .line 29
    iput-object v0, v2, Ls/b;->d:[D

    .line 30
    .line 31
    iput-object v1, v2, Ls/b;->e:[Ljava/lang/Object;

    .line 32
    .line 33
    if-le v4, v3, :cond_2

    .line 34
    .line 35
    move-wide v3, v5

    .line 36
    const/4 v8, 0x0

    .line 37
    :goto_1
    array-length v9, v0

    .line 38
    if-ge v8, v9, :cond_2

    .line 39
    .line 40
    aget-object v9, v1, v8

    .line 41
    .line 42
    aget-wide v10, v9, v7

    .line 43
    .line 44
    if-lez v8, :cond_1

    .line 45
    .line 46
    sub-double v5, v10, v5

    .line 47
    .line 48
    sub-double v3, v10, v3

    .line 49
    .line 50
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 51
    .line 52
    .line 53
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 54
    .line 55
    move-wide v3, v10

    .line 56
    move-wide v5, v3

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    return-object v2

    .line 59
    :cond_3
    new-instance v2, Ls/c;

    .line 60
    .line 61
    aget-wide v3, v0, v7

    .line 62
    .line 63
    aget-object v0, v1, v7

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-wide v3, v2, Ls/c;->c:D

    .line 69
    .line 70
    iput-object v0, v2, Ls/c;->d:[D

    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_4
    new-instance v2, Ls/f;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    array-length v8, v0

    .line 79
    aget-object v9, v1, v7

    .line 80
    .line 81
    array-length v9, v9

    .line 82
    add-int/lit8 v10, v8, -0x1

    .line 83
    .line 84
    new-array v11, v3, [I

    .line 85
    .line 86
    aput v9, v11, v4

    .line 87
    .line 88
    aput v10, v11, v7

    .line 89
    .line 90
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 91
    .line 92
    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    check-cast v11, [[D

    .line 97
    .line 98
    new-array v13, v3, [I

    .line 99
    .line 100
    aput v9, v13, v4

    .line 101
    .line 102
    aput v8, v13, v7

    .line 103
    .line 104
    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, [[D

    .line 109
    .line 110
    const/4 v12, 0x0

    .line 111
    :goto_2
    if-ge v12, v9, :cond_7

    .line 112
    .line 113
    const/4 v13, 0x0

    .line 114
    :goto_3
    if-ge v13, v10, :cond_6

    .line 115
    .line 116
    add-int/lit8 v14, v13, 0x1

    .line 117
    .line 118
    aget-wide v15, v0, v14

    .line 119
    .line 120
    aget-wide v17, v0, v13

    .line 121
    .line 122
    sub-double v15, v15, v17

    .line 123
    .line 124
    aget-object v17, v11, v13

    .line 125
    .line 126
    aget-object v18, v1, v14

    .line 127
    .line 128
    aget-wide v19, v18, v12

    .line 129
    .line 130
    aget-object v18, v1, v13

    .line 131
    .line 132
    aget-wide v21, v18, v12

    .line 133
    .line 134
    sub-double v19, v19, v21

    .line 135
    .line 136
    div-double v19, v19, v15

    .line 137
    .line 138
    aput-wide v19, v17, v12

    .line 139
    .line 140
    if-nez v13, :cond_5

    .line 141
    .line 142
    aget-object v13, v4, v13

    .line 143
    .line 144
    aput-wide v19, v13, v12

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_5
    aget-object v15, v4, v13

    .line 148
    .line 149
    add-int/lit8 v13, v13, -0x1

    .line 150
    .line 151
    aget-object v13, v11, v13

    .line 152
    .line 153
    aget-wide v16, v13, v12

    .line 154
    .line 155
    add-double v16, v16, v19

    .line 156
    .line 157
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    .line 158
    .line 159
    mul-double v16, v16, v18

    .line 160
    .line 161
    aput-wide v16, v15, v12

    .line 162
    .line 163
    :goto_4
    move v13, v14

    .line 164
    goto :goto_3

    .line 165
    :cond_6
    aget-object v13, v4, v10

    .line 166
    .line 167
    add-int/lit8 v14, v8, -0x2

    .line 168
    .line 169
    aget-object v14, v11, v14

    .line 170
    .line 171
    aget-wide v15, v14, v12

    .line 172
    .line 173
    aput-wide v15, v13, v12

    .line 174
    .line 175
    add-int/lit8 v12, v12, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_7
    const/4 v3, 0x0

    .line 179
    :goto_5
    if-ge v3, v10, :cond_b

    .line 180
    .line 181
    const/4 v8, 0x0

    .line 182
    :goto_6
    if-ge v8, v9, :cond_a

    .line 183
    .line 184
    aget-object v12, v11, v3

    .line 185
    .line 186
    aget-wide v13, v12, v8

    .line 187
    .line 188
    cmpl-double v12, v13, v5

    .line 189
    .line 190
    if-nez v12, :cond_8

    .line 191
    .line 192
    aget-object v12, v4, v3

    .line 193
    .line 194
    aput-wide v5, v12, v8

    .line 195
    .line 196
    add-int/lit8 v12, v3, 0x1

    .line 197
    .line 198
    aget-object v12, v4, v12

    .line 199
    .line 200
    aput-wide v5, v12, v8

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_8
    aget-object v12, v4, v3

    .line 204
    .line 205
    aget-wide v15, v12, v8

    .line 206
    .line 207
    div-double v5, v15, v13

    .line 208
    .line 209
    add-int/lit8 v12, v3, 0x1

    .line 210
    .line 211
    aget-object v15, v4, v12

    .line 212
    .line 213
    aget-wide v19, v15, v8

    .line 214
    .line 215
    div-double v13, v19, v13

    .line 216
    .line 217
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    .line 218
    .line 219
    .line 220
    move-result-wide v15

    .line 221
    const-wide/high16 v19, 0x4022000000000000L    # 9.0

    .line 222
    .line 223
    cmpl-double v21, v15, v19

    .line 224
    .line 225
    if-lez v21, :cond_9

    .line 226
    .line 227
    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    .line 228
    .line 229
    div-double v19, v19, v15

    .line 230
    .line 231
    aget-object v15, v4, v3

    .line 232
    .line 233
    mul-double v5, v5, v19

    .line 234
    .line 235
    aget-object v16, v11, v3

    .line 236
    .line 237
    aget-wide v21, v16, v8

    .line 238
    .line 239
    mul-double v5, v5, v21

    .line 240
    .line 241
    aput-wide v5, v15, v8

    .line 242
    .line 243
    aget-object v5, v4, v12

    .line 244
    .line 245
    mul-double v19, v19, v13

    .line 246
    .line 247
    aget-wide v12, v16, v8

    .line 248
    .line 249
    mul-double v19, v19, v12

    .line 250
    .line 251
    aput-wide v19, v5, v8

    .line 252
    .line 253
    :cond_9
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 254
    .line 255
    const-wide/16 v5, 0x0

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 259
    .line 260
    const-wide/16 v5, 0x0

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_b
    iput-object v0, v2, Ls/f;->c:[D

    .line 264
    .line 265
    iput-object v1, v2, Ls/f;->d:[[D

    .line 266
    .line 267
    iput-object v4, v2, Ls/f;->e:[[D

    .line 268
    .line 269
    return-object v2
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "F+X2qen4wcsf7w==\n"

    .line 6
    .line 7
    const-string v1, "douS24aRpZQ=\n"

    .line 8
    .line 9
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const-string p0, "ke1s\n"

    .line 26
    .line 27
    const-string v0, "9YQIdxtKtSU=\n"

    .line 28
    .line 29
    invoke-static {p0, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_1
    return-object p0
.end method

.method public static m(J)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/material/datepicker/g0;->g()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Lcom/google/android/material/datepicker/g0;->h(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p0, p1, v0}, Lr4/b;->p(JLjava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p0, p1, v0}, Lr4/b;->z(JLjava/util/Locale;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static p(JLjava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/material/datepicker/g0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    const-string v0, "MMMd"

    .line 10
    .line 11
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/d;->e(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/d;->f()Landroid/icu/util/TimeZone;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/d;->v(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/util/Date;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/d;->k(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const/4 v0, 0x2

    .line 33
    invoke-static {v0, p2}, Lcom/google/android/material/datepicker/g0;->d(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Ljava/text/SimpleDateFormat;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "yY"

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/material/datepicker/g0;->b(IILjava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-lt v1, v3, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-string v3, "EMd"

    .line 59
    .line 60
    invoke-static {v2, v1, v0, v3}, Lcom/google/android/material/datepicker/g0;->b(IILjava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-ge v4, v5, :cond_2

    .line 69
    .line 70
    const-string v3, "EMd,"

    .line 71
    .line 72
    :cond_2
    const/4 v5, -0x1

    .line 73
    invoke-static {v5, v1, v0, v3}, Lcom/google/android/material/datepicker/g0;->b(IILjava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    add-int/2addr v1, v2

    .line 78
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, " "

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_0
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/util/Date;

    .line 96
    .line 97
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method

.method public static t(D)J
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lr4/b;->C(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "not a normal value"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lb7/b;->e(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    const-wide v1, 0xfffffffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    and-long/2addr p0, v1

    .line 24
    const/16 v1, -0x3ff

    .line 25
    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    shl-long/2addr p0, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-wide/high16 v0, 0x10000000000000L

    .line 32
    .line 33
    or-long/2addr p0, v0

    .line 34
    :goto_0
    return-wide p0
.end method

.method public static z(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/material/datepicker/g0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    const-string v0, "yMMMd"

    .line 10
    .line 11
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/d;->e(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/d;->f()Landroid/icu/util/TimeZone;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/d;->v(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/util/Date;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/d;->k(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const/4 v0, 0x2

    .line 33
    invoke-static {v0, p2}, Lcom/google/android/material/datepicker/g0;->d(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    new-instance v0, Ljava/util/Date;

    .line 38
    .line 39
    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method


# virtual methods
.method public D(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public E()V
    .locals 0

    .line 1
    return-void
.end method

.method public F(ILandroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract G(I)V
.end method

.method public abstract H(Landroid/view/View;II)V
.end method

.method public abstract I(Landroid/view/View;FF)V
.end method

.method public abstract O(ILandroid/view/View;)Z
.end method

.method public abstract d(ILandroid/view/View;)I
.end method

.method public abstract e(ILandroid/view/View;)I
.end method

.method public n(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public o(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public abstract q(D)D
.end method

.method public abstract r(D[D)V
.end method

.method public abstract s(D[F)V
.end method

.method public abstract u(D)D
.end method

.method public abstract v(D[D)V
.end method

.method public abstract w()[D
.end method

.method public x(Landroid/view/View;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public y()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
