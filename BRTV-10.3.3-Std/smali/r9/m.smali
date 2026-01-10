.class public abstract Lr9/m;
.super Lr9/l;
.source "MyApplication"


# direct methods
.method public static L(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Lo9/d;->d(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/16 v5, 0x30

    .line 20
    .line 21
    invoke-static {v4, v5}, Lj9/i;->h(II)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const v6, -0x7fffffff

    .line 26
    .line 27
    .line 28
    if-gez v5, :cond_4

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    if-ne v1, v5, :cond_1

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_1
    const/16 v7, 0x2b

    .line 35
    .line 36
    if-eq v4, v7, :cond_3

    .line 37
    .line 38
    const/16 v6, 0x2d

    .line 39
    .line 40
    if-eq v4, v6, :cond_2

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    const/high16 v6, -0x80000000

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 v4, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    :goto_0
    const v7, -0x38e38e3

    .line 52
    .line 53
    .line 54
    const v8, -0x38e38e3

    .line 55
    .line 56
    .line 57
    :goto_1
    if-ge v5, v1, :cond_8

    .line 58
    .line 59
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    invoke-static {v9, v0}, Ljava/lang/Character;->digit(II)I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-gez v9, :cond_5

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    if-ge v3, v8, :cond_6

    .line 71
    .line 72
    if-ne v8, v7, :cond_a

    .line 73
    .line 74
    div-int/lit8 v8, v6, 0xa

    .line 75
    .line 76
    if-ge v3, v8, :cond_6

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    mul-int/lit8 v3, v3, 0xa

    .line 80
    .line 81
    add-int v10, v6, v9

    .line 82
    .line 83
    if-ge v3, v10, :cond_7

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_7
    sub-int/2addr v3, v9

    .line 87
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_8
    if-eqz v4, :cond_9

    .line 91
    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :goto_2
    move-object v2, p0

    .line 97
    goto :goto_3

    .line 98
    :cond_9
    neg-int p0, v3

    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    goto :goto_2

    .line 104
    :cond_a
    :goto_3
    return-object v2
.end method

.method public static M(Ljava/lang/String;)Ljava/lang/Long;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-static {v1}, Lo9/d;->d(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/16 v6, 0x30

    .line 28
    .line 29
    invoke-static {v5, v6}, Lj9/i;->h(II)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    if-gez v6, :cond_4

    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    if-ne v2, v6, :cond_1

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    const/16 v9, 0x2b

    .line 45
    .line 46
    if-eq v5, v9, :cond_3

    .line 47
    .line 48
    const/16 v4, 0x2d

    .line 49
    .line 50
    if-eq v5, v4, :cond_2

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    const-wide/high16 v7, -0x8000000000000000L

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v4, 0x1

    .line 58
    :cond_4
    const/4 v6, 0x0

    .line 59
    :goto_0
    const-wide v9, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    const-wide/16 v11, 0x0

    .line 65
    .line 66
    move-wide v13, v9

    .line 67
    :goto_1
    if-ge v4, v2, :cond_8

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-static {v5, v1}, Ljava/lang/Character;->digit(II)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-gez v5, :cond_5

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_5
    cmp-long v15, v11, v13

    .line 81
    .line 82
    if-gez v15, :cond_6

    .line 83
    .line 84
    cmp-long v15, v13, v9

    .line 85
    .line 86
    if-nez v15, :cond_a

    .line 87
    .line 88
    int-to-long v13, v1

    .line 89
    div-long v13, v7, v13

    .line 90
    .line 91
    cmp-long v15, v11, v13

    .line 92
    .line 93
    if-gez v15, :cond_6

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    int-to-long v9, v1

    .line 97
    mul-long v11, v11, v9

    .line 98
    .line 99
    int-to-long v9, v5

    .line 100
    add-long v16, v7, v9

    .line 101
    .line 102
    cmp-long v5, v11, v16

    .line 103
    .line 104
    if-gez v5, :cond_7

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_7
    sub-long/2addr v11, v9

    .line 108
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    const-wide v9, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_8
    if-eqz v6, :cond_9

    .line 117
    .line 118
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :goto_2
    move-object v3, v0

    .line 123
    goto :goto_3

    .line 124
    :cond_9
    neg-long v0, v11

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    goto :goto_2

    .line 130
    :cond_a
    :goto_3
    return-object v3
.end method
