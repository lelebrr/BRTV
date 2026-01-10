.class public abstract Lw/n;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lw/e;


# instance fields
.field public a:I

.field public b:Lv/e;

.field public c:Lw/l;

.field public d:Lv/d;

.field public final e:Lw/h;

.field public f:I

.field public g:Z

.field public final h:Lw/g;

.field public final i:Lw/g;

.field public j:I


# direct methods
.method public constructor <init>(Lv/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lw/h;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lw/h;-><init>(Lw/n;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lw/n;->e:Lw/h;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lw/n;->f:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lw/n;->g:Z

    .line 15
    .line 16
    new-instance v0, Lw/g;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lw/g;-><init>(Lw/n;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lw/n;->h:Lw/g;

    .line 22
    .line 23
    new-instance v0, Lw/g;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lw/g;-><init>(Lw/n;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lw/n;->i:Lw/g;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lw/n;->j:I

    .line 32
    .line 33
    iput-object p1, p0, Lw/n;->b:Lv/e;

    .line 34
    .line 35
    return-void
.end method

.method public static b(Lw/g;Lw/g;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw/g;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lw/g;->f:I

    .line 7
    .line 8
    iget-object p1, p1, Lw/g;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static h(Lv/c;)Lw/g;
    .locals 3

    .line 1
    iget-object p0, p0, Lv/c;->d:Lv/c;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    iget v1, p0, Lv/c;->c:I

    .line 8
    .line 9
    invoke-static {v1}, Lu/h;->a(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object p0, p0, Lv/c;->b:Lv/e;

    .line 15
    .line 16
    if-eq v1, v2, :cond_5

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq v1, v2, :cond_4

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v1, v2, :cond_3

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p0, p0, Lv/e;->e:Lw/m;

    .line 32
    .line 33
    iget-object v0, p0, Lw/m;->k:Lw/g;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object p0, p0, Lv/e;->e:Lw/m;

    .line 37
    .line 38
    iget-object v0, p0, Lw/n;->i:Lw/g;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget-object p0, p0, Lv/e;->d:Lw/k;

    .line 42
    .line 43
    iget-object v0, p0, Lw/n;->i:Lw/g;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    iget-object p0, p0, Lv/e;->e:Lw/m;

    .line 47
    .line 48
    iget-object v0, p0, Lw/n;->h:Lw/g;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget-object p0, p0, Lv/e;->d:Lw/k;

    .line 52
    .line 53
    iget-object v0, p0, Lw/n;->h:Lw/g;

    .line 54
    .line 55
    :goto_0
    return-object v0
.end method

.method public static i(Lv/c;I)Lw/g;
    .locals 2

    .line 1
    iget-object p0, p0, Lv/c;->d:Lv/c;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lv/c;->b:Lv/e;

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-object p1, v1, Lv/e;->d:Lw/k;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, v1, Lv/e;->e:Lw/m;

    .line 15
    .line 16
    :goto_0
    iget p0, p0, Lv/c;->c:I

    .line 17
    .line 18
    invoke-static {p0}, Lu/h;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq p0, v1, :cond_3

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq p0, v1, :cond_3

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq p0, v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    if-eq p0, v1, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object v0, p1, Lw/n;->i:Lw/g;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    iget-object v0, p1, Lw/n;->h:Lw/g;

    .line 39
    .line 40
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final c(Lw/g;Lw/g;ILw/h;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lw/g;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lw/g;->l:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v1, p0, Lw/n;->e:Lw/h;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iput p3, p1, Lw/g;->h:I

    .line 14
    .line 15
    iput-object p4, p1, Lw/g;->i:Lw/h;

    .line 16
    .line 17
    iget-object p2, p2, Lw/g;->k:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object p2, p4, Lw/g;->k:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public final g(II)I
    .locals 1

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget-object p2, p0, Lw/n;->b:Lv/e;

    .line 4
    .line 5
    iget v0, p2, Lv/e;->n:I

    .line 6
    .line 7
    iget p2, p2, Lv/e;->m:I

    .line 8
    .line 9
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    :cond_0
    if-eq p2, p1, :cond_3

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p2, p0, Lw/n;->b:Lv/e;

    .line 23
    .line 24
    iget v0, p2, Lv/e;->q:I

    .line 25
    .line 26
    iget p2, p2, Lv/e;->p:I

    .line 27
    .line 28
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    :cond_2
    if-eq p2, p1, :cond_3

    .line 39
    .line 40
    :goto_0
    move p1, p2

    .line 41
    :cond_3
    return p1
.end method

.method public j()J
    .locals 2

    .line 1
    iget-object v0, p0, Lw/n;->e:Lw/h;

    .line 2
    .line 3
    iget-boolean v1, v0, Lw/g;->j:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lw/g;->g:I

    .line 8
    .line 9
    int-to-long v0, v0

    .line 10
    return-wide v0

    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0
.end method

.method public abstract k()Z
.end method

.method public final l(Lv/c;Lv/c;I)V
    .locals 12

    .line 1
    invoke-static {p1}, Lw/n;->h(Lv/c;)Lw/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Lw/n;->h(Lv/c;)Lw/g;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, v0, Lw/g;->j:Z

    .line 10
    .line 11
    if-eqz v2, :cond_f

    .line 12
    .line 13
    iget-boolean v2, v1, Lw/g;->j:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    iget v2, v0, Lw/g;->g:I

    .line 20
    .line 21
    invoke-virtual {p1}, Lv/c;->c()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    add-int/2addr p1, v2

    .line 26
    iget v2, v1, Lw/g;->g:I

    .line 27
    .line 28
    invoke-virtual {p2}, Lv/c;->c()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    sub-int/2addr v2, p2

    .line 33
    sub-int p2, v2, p1

    .line 34
    .line 35
    iget-object v3, p0, Lw/n;->e:Lw/h;

    .line 36
    .line 37
    iget-boolean v4, v3, Lw/g;->j:Z

    .line 38
    .line 39
    const/high16 v5, 0x3f000000    # 0.5f

    .line 40
    .line 41
    if-nez v4, :cond_a

    .line 42
    .line 43
    iget-object v4, p0, Lw/n;->d:Lv/d;

    .line 44
    .line 45
    sget-object v6, Lv/d;->c:Lv/d;

    .line 46
    .line 47
    if-ne v4, v6, :cond_a

    .line 48
    .line 49
    iget v4, p0, Lw/n;->a:I

    .line 50
    .line 51
    if-eqz v4, :cond_9

    .line 52
    .line 53
    const/4 v7, 0x1

    .line 54
    if-eq v4, v7, :cond_8

    .line 55
    .line 56
    const/4 v8, 0x2

    .line 57
    if-eq v4, v8, :cond_5

    .line 58
    .line 59
    const/4 v8, 0x3

    .line 60
    if-eq v4, v8, :cond_1

    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_1
    iget-object v4, p0, Lw/n;->b:Lv/e;

    .line 65
    .line 66
    iget-object v9, v4, Lv/e;->d:Lw/k;

    .line 67
    .line 68
    iget-object v10, v9, Lw/n;->d:Lv/d;

    .line 69
    .line 70
    iget-object v11, v4, Lv/e;->e:Lw/m;

    .line 71
    .line 72
    if-ne v10, v6, :cond_2

    .line 73
    .line 74
    iget v10, v9, Lw/n;->a:I

    .line 75
    .line 76
    if-ne v10, v8, :cond_2

    .line 77
    .line 78
    iget-object v10, v11, Lw/n;->d:Lv/d;

    .line 79
    .line 80
    if-ne v10, v6, :cond_2

    .line 81
    .line 82
    iget v6, v11, Lw/n;->a:I

    .line 83
    .line 84
    if-ne v6, v8, :cond_2

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_2
    if-nez p3, :cond_3

    .line 88
    .line 89
    move-object v9, v11

    .line 90
    :cond_3
    iget-object v6, v9, Lw/n;->e:Lw/h;

    .line 91
    .line 92
    iget-boolean v8, v6, Lw/g;->j:Z

    .line 93
    .line 94
    if-eqz v8, :cond_a

    .line 95
    .line 96
    iget v4, v4, Lv/e;->N:F

    .line 97
    .line 98
    if-ne p3, v7, :cond_4

    .line 99
    .line 100
    iget v6, v6, Lw/g;->g:I

    .line 101
    .line 102
    int-to-float v6, v6

    .line 103
    div-float/2addr v6, v4

    .line 104
    add-float/2addr v6, v5

    .line 105
    float-to-int v4, v6

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    iget v6, v6, Lw/g;->g:I

    .line 108
    .line 109
    int-to-float v6, v6

    .line 110
    mul-float v4, v4, v6

    .line 111
    .line 112
    add-float/2addr v4, v5

    .line 113
    float-to-int v4, v4

    .line 114
    :goto_0
    invoke-virtual {v3, v4}, Lw/h;->d(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    iget-object v4, p0, Lw/n;->b:Lv/e;

    .line 119
    .line 120
    iget-object v6, v4, Lv/e;->K:Lv/e;

    .line 121
    .line 122
    if-eqz v6, :cond_a

    .line 123
    .line 124
    if-nez p3, :cond_6

    .line 125
    .line 126
    iget-object v6, v6, Lv/e;->d:Lw/k;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    iget-object v6, v6, Lv/e;->e:Lw/m;

    .line 130
    .line 131
    :goto_1
    iget-object v6, v6, Lw/n;->e:Lw/h;

    .line 132
    .line 133
    iget-boolean v7, v6, Lw/g;->j:Z

    .line 134
    .line 135
    if-eqz v7, :cond_a

    .line 136
    .line 137
    if-nez p3, :cond_7

    .line 138
    .line 139
    iget v4, v4, Lv/e;->o:F

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_7
    iget v4, v4, Lv/e;->r:F

    .line 143
    .line 144
    :goto_2
    iget v6, v6, Lw/g;->g:I

    .line 145
    .line 146
    int-to-float v6, v6

    .line 147
    mul-float v6, v6, v4

    .line 148
    .line 149
    add-float/2addr v6, v5

    .line 150
    float-to-int v4, v6

    .line 151
    invoke-virtual {p0, v4, p3}, Lw/n;->g(II)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    invoke-virtual {v3, v4}, Lw/h;->d(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    iget v4, v3, Lw/h;->m:I

    .line 160
    .line 161
    invoke-virtual {p0, v4, p3}, Lw/n;->g(II)I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-virtual {v3, v4}, Lw/h;->d(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_9
    invoke-virtual {p0, p2, p3}, Lw/n;->g(II)I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    invoke-virtual {v3, v4}, Lw/h;->d(I)V

    .line 178
    .line 179
    .line 180
    :cond_a
    :goto_3
    iget-boolean v4, v3, Lw/g;->j:Z

    .line 181
    .line 182
    if-nez v4, :cond_b

    .line 183
    .line 184
    return-void

    .line 185
    :cond_b
    iget v4, v3, Lw/g;->g:I

    .line 186
    .line 187
    iget-object v6, p0, Lw/n;->i:Lw/g;

    .line 188
    .line 189
    iget-object v7, p0, Lw/n;->h:Lw/g;

    .line 190
    .line 191
    if-ne v4, p2, :cond_c

    .line 192
    .line 193
    invoke-virtual {v7, p1}, Lw/g;->d(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v2}, Lw/g;->d(I)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_c
    iget-object p2, p0, Lw/n;->b:Lv/e;

    .line 201
    .line 202
    if-nez p3, :cond_d

    .line 203
    .line 204
    iget p2, p2, Lv/e;->U:F

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_d
    iget p2, p2, Lv/e;->V:F

    .line 208
    .line 209
    :goto_4
    if-ne v0, v1, :cond_e

    .line 210
    .line 211
    iget p1, v0, Lw/g;->g:I

    .line 212
    .line 213
    iget v2, v1, Lw/g;->g:I

    .line 214
    .line 215
    const/high16 p2, 0x3f000000    # 0.5f

    .line 216
    .line 217
    :cond_e
    sub-int/2addr v2, p1

    .line 218
    sub-int/2addr v2, v4

    .line 219
    int-to-float p1, p1

    .line 220
    add-float/2addr p1, v5

    .line 221
    int-to-float p3, v2

    .line 222
    mul-float p3, p3, p2

    .line 223
    .line 224
    add-float/2addr p3, p1

    .line 225
    float-to-int p1, p3

    .line 226
    invoke-virtual {v7, p1}, Lw/g;->d(I)V

    .line 227
    .line 228
    .line 229
    iget p1, v7, Lw/g;->g:I

    .line 230
    .line 231
    iget p2, v3, Lw/g;->g:I

    .line 232
    .line 233
    add-int/2addr p1, p2

    .line 234
    invoke-virtual {v6, p1}, Lw/g;->d(I)V

    .line 235
    .line 236
    .line 237
    :cond_f
    :goto_5
    return-void
.end method
