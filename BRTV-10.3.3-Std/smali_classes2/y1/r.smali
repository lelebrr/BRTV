.class public final Ly1/r;
.super Ly1/v;
.source "MyApplication"


# instance fields
.field public v:I


# virtual methods
.method public final e(Landroid/view/ViewGroup;Landroidx/transition/Transition;Ly1/e0;Ly1/e0;)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    if-nez p4, :cond_0

    .line 10
    .line 11
    return-wide v2

    .line 12
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz p4, :cond_4

    .line 17
    .line 18
    const/16 v5, 0x8

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v6, v1, Ly1/e0;->a:Ljava/util/HashMap;

    .line 24
    .line 25
    const-string v7, "android:visibilityPropagation:visibility"

    .line 26
    .line 27
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Ljava/lang/Integer;

    .line 32
    .line 33
    if-nez v6, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    :goto_0
    if-nez v5, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move-object/from16 v1, p4

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    :goto_1
    const/4 v5, -0x1

    .line 48
    :goto_2
    const/4 v6, 0x0

    .line 49
    invoke-static {v1, v6}, Ly1/v;->f(Ly1/e0;I)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-static {v1, v4}, Ly1/v;->f(Ly1/e0;I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v8, 0x2

    .line 58
    new-array v9, v8, [I

    .line 59
    .line 60
    move-object/from16 v10, p1

    .line 61
    .line 62
    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 63
    .line 64
    .line 65
    aget v11, v9, v6

    .line 66
    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    add-int/2addr v12, v11

    .line 76
    aget v9, v9, v4

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    add-int/2addr v11, v9

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    add-int/2addr v9, v12

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    add-int/2addr v13, v11

    .line 97
    add-int v14, v12, v9

    .line 98
    .line 99
    div-int/2addr v14, v8

    .line 100
    add-int v15, v11, v13

    .line 101
    .line 102
    div-int/2addr v15, v8

    .line 103
    iget v8, v0, Ly1/r;->v:I

    .line 104
    .line 105
    const v6, 0x800005

    .line 106
    .line 107
    .line 108
    const/4 v3, 0x3

    .line 109
    const v2, 0x800003

    .line 110
    .line 111
    .line 112
    if-ne v8, v2, :cond_7

    .line 113
    .line 114
    sget-object v8, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-ne v8, v4, :cond_6

    .line 121
    .line 122
    :cond_5
    const/4 v8, 0x5

    .line 123
    goto :goto_4

    .line 124
    :cond_6
    :goto_3
    const/4 v8, 0x3

    .line 125
    goto :goto_4

    .line 126
    :cond_7
    if-ne v8, v6, :cond_8

    .line 127
    .line 128
    sget-object v8, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 129
    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-ne v8, v4, :cond_5

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_8
    :goto_4
    if-eq v8, v3, :cond_c

    .line 138
    .line 139
    const/4 v4, 0x5

    .line 140
    if-eq v8, v4, :cond_b

    .line 141
    .line 142
    const/16 v4, 0x30

    .line 143
    .line 144
    if-eq v8, v4, :cond_a

    .line 145
    .line 146
    const/16 v4, 0x50

    .line 147
    .line 148
    if-eq v8, v4, :cond_9

    .line 149
    .line 150
    const/4 v1, 0x0

    .line 151
    goto :goto_5

    .line 152
    :cond_9
    sub-int/2addr v1, v11

    .line 153
    sub-int/2addr v14, v7

    .line 154
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    add-int/2addr v1, v4

    .line 159
    goto :goto_5

    .line 160
    :cond_a
    sub-int/2addr v13, v1

    .line 161
    sub-int/2addr v14, v7

    .line 162
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    add-int/2addr v1, v13

    .line 167
    goto :goto_5

    .line 168
    :cond_b
    sub-int/2addr v7, v12

    .line 169
    sub-int/2addr v15, v1

    .line 170
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    add-int/2addr v1, v7

    .line 175
    goto :goto_5

    .line 176
    :cond_c
    sub-int/2addr v9, v7

    .line 177
    sub-int/2addr v15, v1

    .line 178
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    add-int/2addr v1, v9

    .line 183
    :goto_5
    int-to-float v1, v1

    .line 184
    iget v4, v0, Ly1/r;->v:I

    .line 185
    .line 186
    if-eq v4, v3, :cond_d

    .line 187
    .line 188
    const/4 v3, 0x5

    .line 189
    if-eq v4, v3, :cond_d

    .line 190
    .line 191
    if-eq v4, v2, :cond_d

    .line 192
    .line 193
    if-eq v4, v6, :cond_d

    .line 194
    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    goto :goto_6

    .line 200
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    :goto_6
    int-to-float v2, v2

    .line 205
    div-float/2addr v1, v2

    .line 206
    move-object/from16 v2, p2

    .line 207
    .line 208
    iget-wide v2, v2, Landroidx/transition/Transition;->c:J

    .line 209
    .line 210
    const-wide/16 v6, 0x0

    .line 211
    .line 212
    cmp-long v4, v2, v6

    .line 213
    .line 214
    if-gez v4, :cond_e

    .line 215
    .line 216
    const-wide/16 v2, 0x12c

    .line 217
    .line 218
    :cond_e
    int-to-long v4, v5

    .line 219
    mul-long v2, v2, v4

    .line 220
    .line 221
    long-to-float v2, v2

    .line 222
    const/high16 v3, 0x40400000    # 3.0f

    .line 223
    .line 224
    div-float/2addr v2, v3

    .line 225
    mul-float v2, v2, v1

    .line 226
    .line 227
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    int-to-long v1, v1

    .line 232
    return-wide v1
.end method
