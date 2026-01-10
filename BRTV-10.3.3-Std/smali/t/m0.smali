.class public abstract Lt/m0;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:Lr4/b;

.field public b:Ljava/lang/String;

.field public final c:[F

.field public d:Z

.field public e:J

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x3

    .line 9
    aput v2, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    aput v3, v0, v1

    .line 15
    .line 16
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, [[F

    .line 23
    .line 24
    new-array v0, v2, [F

    .line 25
    .line 26
    iput-object v0, p0, Lt/m0;->c:[F

    .line 27
    .line 28
    iput-boolean v1, p0, Lt/m0;->d:Z

    .line 29
    .line 30
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 31
    .line 32
    iput v0, p0, Lt/m0;->f:F

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(FJLandroid/view/View;Lt/u;)F
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    move-object/from16 v4, p5

    .line 8
    .line 9
    iget-object v5, v0, Lt/m0;->a:Lr4/b;

    .line 10
    .line 11
    move/from16 v6, p1

    .line 12
    .line 13
    float-to-double v6, v6

    .line 14
    iget-object v8, v0, Lt/m0;->c:[F

    .line 15
    .line 16
    invoke-virtual {v5, v6, v7, v8}, Lr4/b;->s(D[F)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    aget v6, v8, v5

    .line 21
    .line 22
    const/4 v7, 0x2

    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    cmpl-float v11, v6, v10

    .line 26
    .line 27
    if-nez v11, :cond_0

    .line 28
    .line 29
    iput-boolean v9, v0, Lt/m0;->d:Z

    .line 30
    .line 31
    aget v1, v8, v7

    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    iget v12, v0, Lt/m0;->f:F

    .line 35
    .line 36
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    .line 37
    .line 38
    .line 39
    move-result v12

    .line 40
    if-eqz v12, :cond_4

    .line 41
    .line 42
    iget-object v12, v0, Lt/m0;->b:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v13, v4, Lt/u;->a:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v13, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v14

    .line 52
    const/high16 v15, 0x7fc00000    # Float.NaN

    .line 53
    .line 54
    if-nez v14, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    check-cast v13, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    if-nez v14, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    check-cast v12, [F

    .line 75
    .line 76
    array-length v13, v12

    .line 77
    if-lez v13, :cond_3

    .line 78
    .line 79
    aget v15, v12, v9

    .line 80
    .line 81
    :cond_3
    :goto_0
    iput v15, v0, Lt/m0;->f:F

    .line 82
    .line 83
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    if-eqz v12, :cond_4

    .line 88
    .line 89
    iput v10, v0, Lt/m0;->f:F

    .line 90
    .line 91
    :cond_4
    iget-wide v12, v0, Lt/m0;->e:J

    .line 92
    .line 93
    sub-long v12, v1, v12

    .line 94
    .line 95
    iget v14, v0, Lt/m0;->f:F

    .line 96
    .line 97
    float-to-double v14, v14

    .line 98
    long-to-double v12, v12

    .line 99
    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    mul-double v12, v12, v16

    .line 105
    .line 106
    move/from16 v16, v11

    .line 107
    .line 108
    float-to-double v10, v6

    .line 109
    mul-double v12, v12, v10

    .line 110
    .line 111
    add-double/2addr v12, v14

    .line 112
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 113
    .line 114
    rem-double/2addr v12, v10

    .line 115
    double-to-float v6, v12

    .line 116
    iput v6, v0, Lt/m0;->f:F

    .line 117
    .line 118
    iget-object v10, v0, Lt/m0;->b:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v4, v4, Lt/u;->a:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v4, Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    if-nez v11, :cond_5

    .line 129
    .line 130
    new-instance v11, Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 133
    .line 134
    .line 135
    new-array v12, v5, [F

    .line 136
    .line 137
    aput v6, v12, v9

    .line 138
    .line 139
    invoke-virtual {v11, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    check-cast v11, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    if-nez v12, :cond_6

    .line 157
    .line 158
    new-array v12, v5, [F

    .line 159
    .line 160
    aput v6, v12, v9

    .line 161
    .line 162
    invoke-virtual {v11, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    check-cast v3, [F

    .line 174
    .line 175
    array-length v4, v3

    .line 176
    if-gtz v4, :cond_7

    .line 177
    .line 178
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    :cond_7
    aput v6, v3, v9

    .line 183
    .line 184
    invoke-virtual {v11, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    :goto_1
    iput-wide v1, v0, Lt/m0;->e:J

    .line 188
    .line 189
    aget v1, v8, v9

    .line 190
    .line 191
    iget v2, v0, Lt/m0;->f:F

    .line 192
    .line 193
    const v3, 0x40c90fdb

    .line 194
    .line 195
    .line 196
    mul-float v2, v2, v3

    .line 197
    .line 198
    float-to-double v2, v2

    .line 199
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 200
    .line 201
    .line 202
    move-result-wide v2

    .line 203
    double-to-float v2, v2

    .line 204
    aget v3, v8, v7

    .line 205
    .line 206
    mul-float v2, v2, v1

    .line 207
    .line 208
    add-float/2addr v2, v3

    .line 209
    const/4 v3, 0x0

    .line 210
    cmpl-float v1, v1, v3

    .line 211
    .line 212
    if-nez v1, :cond_9

    .line 213
    .line 214
    if-eqz v16, :cond_8

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_8
    const/4 v5, 0x0

    .line 218
    :cond_9
    :goto_2
    iput-boolean v5, v0, Lt/m0;->d:Z

    .line 219
    .line 220
    return v2
.end method

.method public abstract b(FJLandroid/view/View;Lt/u;)Z
.end method

.method public c(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "Error no points added to "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lt/m0;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "SplineSet"

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lt/m0;->b:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/text/DecimalFormat;

    .line 4
    .line 5
    const-string v2, "##.##"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
