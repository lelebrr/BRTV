.class public final Lcom/google/android/gms/internal/cast/j2;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final d:Lv4/b;

.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "ApplicationAnalyticsUtils"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/j2;->d:Lv4/b;

    .line 10
    .line 11
    const-string v0, "22.1.0"

    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/cast/j2;->e:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/j2;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string p1, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/z0;->g(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/j2;->b:Ljava/util/Map;

    .line 13
    .line 14
    const-string p1, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/z0;->g(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/j2;->c:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/cast/h2;I)Lcom/google/android/gms/internal/cast/c3;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/j2;->b(Lcom/google/android/gms/internal/cast/h2;)Lcom/google/android/gms/internal/cast/b3;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/b3;->d()Lcom/google/android/gms/internal/cast/w2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/w2;->m(Lcom/google/android/gms/internal/cast/w2;)Lcom/google/android/gms/internal/cast/v2;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/j2;->c:Ljava/util/Map;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-static {v1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    add-int/lit16 v1, p2, 0x2710

    .line 43
    .line 44
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 48
    .line 49
    check-cast v2, Lcom/google/android/gms/internal/cast/w2;

    .line 50
    .line 51
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/cast/w2;->u(Lcom/google/android/gms/internal/cast/w2;I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/j2;->b:Ljava/util/Map;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-static {p2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    :goto_2
    add-int/lit16 p2, p2, 0x2710

    .line 84
    .line 85
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 89
    .line 90
    check-cast v1, Lcom/google/android/gms/internal/cast/w2;

    .line 91
    .line 92
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/cast/w2;->q(Lcom/google/android/gms/internal/cast/w2;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Lcom/google/android/gms/internal/cast/w2;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/b3;->e(Lcom/google/android/gms/internal/cast/w2;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lcom/google/android/gms/internal/cast/c3;

    .line 109
    .line 110
    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/cast/h2;)Lcom/google/android/gms/internal/cast/b3;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/cast/c3;->m()Lcom/google/android/gms/internal/cast/b3;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-wide v3, p1, Lcom/google/android/gms/internal/cast/h2;->d:J

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 10
    .line 11
    .line 12
    iget-object v5, v2, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 13
    .line 14
    check-cast v5, Lcom/google/android/gms/internal/cast/c3;

    .line 15
    .line 16
    invoke-static {v5, v3, v4}, Lcom/google/android/gms/internal/cast/c3;->z(Lcom/google/android/gms/internal/cast/c3;J)V

    .line 17
    .line 18
    .line 19
    iget v3, p1, Lcom/google/android/gms/internal/cast/h2;->e:I

    .line 20
    .line 21
    add-int/lit8 v4, v3, 0x1

    .line 22
    .line 23
    iput v4, p1, Lcom/google/android/gms/internal/cast/h2;->e:I

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 26
    .line 27
    .line 28
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 29
    .line 30
    check-cast v4, Lcom/google/android/gms/internal/cast/c3;

    .line 31
    .line 32
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/cast/c3;->t(Lcom/google/android/gms/internal/cast/c3;I)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p1, Lcom/google/android/gms/internal/cast/h2;->c:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 40
    .line 41
    .line 42
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 43
    .line 44
    check-cast v4, Lcom/google/android/gms/internal/cast/c3;

    .line 45
    .line 46
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/cast/c3;->w(Lcom/google/android/gms/internal/cast/c3;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/g5;->l()Lcom/google/android/gms/internal/cast/f5;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->h:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_1

    .line 60
    .line 61
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->h:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 64
    .line 65
    .line 66
    iget-object v5, v2, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 67
    .line 68
    check-cast v5, Lcom/google/android/gms/internal/cast/c3;

    .line 69
    .line 70
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/cast/c3;->s(Lcom/google/android/gms/internal/cast/c3;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->h:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 76
    .line 77
    .line 78
    iget-object v5, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 79
    .line 80
    check-cast v5, Lcom/google/android/gms/internal/cast/g5;

    .line 81
    .line 82
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/cast/g5;->o(Lcom/google/android/gms/internal/cast/g5;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->i:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_2

    .line 92
    .line 93
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->i:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 96
    .line 97
    .line 98
    iget-object v5, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 99
    .line 100
    check-cast v5, Lcom/google/android/gms/internal/cast/g5;

    .line 101
    .line 102
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/cast/g5;->p(Lcom/google/android/gms/internal/cast/g5;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->j:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_3

    .line 112
    .line 113
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->j:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 116
    .line 117
    .line 118
    iget-object v5, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 119
    .line 120
    check-cast v5, Lcom/google/android/gms/internal/cast/g5;

    .line 121
    .line 122
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/cast/g5;->q(Lcom/google/android/gms/internal/cast/g5;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->k:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-nez v4, :cond_4

    .line 132
    .line 133
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->k:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 136
    .line 137
    .line 138
    iget-object v5, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 139
    .line 140
    check-cast v5, Lcom/google/android/gms/internal/cast/g5;

    .line 141
    .line 142
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/cast/g5;->m(Lcom/google/android/gms/internal/cast/g5;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->l:Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_5

    .line 152
    .line 153
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->l:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 156
    .line 157
    .line 158
    iget-object v5, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 159
    .line 160
    check-cast v5, Lcom/google/android/gms/internal/cast/g5;

    .line 161
    .line 162
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/cast/g5;->n(Lcom/google/android/gms/internal/cast/g5;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->m:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_6

    .line 172
    .line 173
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->m:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 176
    .line 177
    .line 178
    iget-object v5, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 179
    .line 180
    check-cast v5, Lcom/google/android/gms/internal/cast/g5;

    .line 181
    .line 182
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/cast/g5;->r(Lcom/google/android/gms/internal/cast/g5;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    iget v4, p1, Lcom/google/android/gms/internal/cast/h2;->n:I

    .line 186
    .line 187
    const/4 v5, 0x2

    .line 188
    if-eq v4, v1, :cond_9

    .line 189
    .line 190
    const/4 v6, 0x3

    .line 191
    if-eq v4, v5, :cond_a

    .line 192
    .line 193
    const/4 v7, 0x4

    .line 194
    if-eq v4, v6, :cond_8

    .line 195
    .line 196
    const/4 v6, 0x5

    .line 197
    if-eq v4, v7, :cond_a

    .line 198
    .line 199
    if-eq v4, v6, :cond_7

    .line 200
    .line 201
    const/4 v6, 0x1

    .line 202
    goto :goto_0

    .line 203
    :cond_7
    const/4 v6, 0x6

    .line 204
    goto :goto_0

    .line 205
    :cond_8
    const/4 v6, 0x4

    .line 206
    goto :goto_0

    .line 207
    :cond_9
    const/4 v6, 0x2

    .line 208
    :cond_a
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 209
    .line 210
    .line 211
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 212
    .line 213
    check-cast v4, Lcom/google/android/gms/internal/cast/g5;

    .line 214
    .line 215
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/cast/g5;->s(Lcom/google/android/gms/internal/cast/g5;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Lcom/google/android/gms/internal/cast/g5;

    .line 223
    .line 224
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 225
    .line 226
    .line 227
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 228
    .line 229
    check-cast v4, Lcom/google/android/gms/internal/cast/c3;

    .line 230
    .line 231
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/cast/c3;->v(Lcom/google/android/gms/internal/cast/c3;Lcom/google/android/gms/internal/cast/g5;)V

    .line 232
    .line 233
    .line 234
    invoke-static {}, Lcom/google/android/gms/internal/cast/t2;->l()Lcom/google/android/gms/internal/cast/s2;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 239
    .line 240
    .line 241
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 242
    .line 243
    check-cast v4, Lcom/google/android/gms/internal/cast/t2;

    .line 244
    .line 245
    sget-object v6, Lcom/google/android/gms/internal/cast/j2;->e:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/cast/t2;->n(Lcom/google/android/gms/internal/cast/t2;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 251
    .line 252
    .line 253
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 254
    .line 255
    check-cast v4, Lcom/google/android/gms/internal/cast/t2;

    .line 256
    .line 257
    iget-object v6, p0, Lcom/google/android/gms/internal/cast/j2;->a:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/cast/t2;->m(Lcom/google/android/gms/internal/cast/t2;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    check-cast v3, Lcom/google/android/gms/internal/cast/t2;

    .line 267
    .line 268
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 269
    .line 270
    .line 271
    iget-object v4, v2, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 272
    .line 273
    check-cast v4, Lcom/google/android/gms/internal/cast/c3;

    .line 274
    .line 275
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/cast/c3;->o(Lcom/google/android/gms/internal/cast/c3;Lcom/google/android/gms/internal/cast/t2;)V

    .line 276
    .line 277
    .line 278
    invoke-static {}, Lcom/google/android/gms/internal/cast/w2;->l()Lcom/google/android/gms/internal/cast/v2;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->b:Ljava/lang/String;

    .line 283
    .line 284
    if-eqz v4, :cond_b

    .line 285
    .line 286
    invoke-static {}, Lcom/google/android/gms/internal/cast/u3;->l()Lcom/google/android/gms/internal/cast/t3;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    iget-object v6, p1, Lcom/google/android/gms/internal/cast/h2;->b:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 293
    .line 294
    .line 295
    iget-object v7, v4, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 296
    .line 297
    check-cast v7, Lcom/google/android/gms/internal/cast/u3;

    .line 298
    .line 299
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/cast/u3;->m(Lcom/google/android/gms/internal/cast/u3;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    check-cast v4, Lcom/google/android/gms/internal/cast/u3;

    .line 307
    .line 308
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 309
    .line 310
    .line 311
    iget-object v6, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 312
    .line 313
    check-cast v6, Lcom/google/android/gms/internal/cast/w2;

    .line 314
    .line 315
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/cast/w2;->o(Lcom/google/android/gms/internal/cast/w2;Lcom/google/android/gms/internal/cast/u3;)V

    .line 316
    .line 317
    .line 318
    :cond_b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 319
    .line 320
    .line 321
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 322
    .line 323
    check-cast v4, Lcom/google/android/gms/internal/cast/w2;

    .line 324
    .line 325
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/cast/w2;->t(Lcom/google/android/gms/internal/cast/w2;Z)V

    .line 326
    .line 327
    .line 328
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->f:Ljava/lang/String;

    .line 329
    .line 330
    if-eqz v4, :cond_c

    .line 331
    .line 332
    :try_start_0
    const-string v6, "-"

    .line 333
    .line 334
    const-string v7, ""

    .line 335
    .line 336
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    const/16 v8, 0x10

    .line 345
    .line 346
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    .line 347
    .line 348
    .line 349
    move-result v7

    .line 350
    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    new-instance v7, Ljava/math/BigInteger;

    .line 355
    .line 356
    invoke-direct {v7, v6, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    .line 360
    .line 361
    .line 362
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    goto :goto_1

    .line 364
    :catch_0
    move-exception v6

    .line 365
    new-array v7, v1, [Ljava/lang/Object;

    .line 366
    .line 367
    aput-object v4, v7, v0

    .line 368
    .line 369
    sget-object v4, Lcom/google/android/gms/internal/cast/j2;->d:Lv4/b;

    .line 370
    .line 371
    iget-object v8, v4, Lv4/b;->a:Ljava/lang/String;

    .line 372
    .line 373
    const-string v9, "receiverSessionId %s is not valid for hash"

    .line 374
    .line 375
    invoke-virtual {v4, v9, v7}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-static {v8, v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .line 381
    .line 382
    const-wide/16 v6, 0x0

    .line 383
    .line 384
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 385
    .line 386
    .line 387
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 388
    .line 389
    check-cast v4, Lcom/google/android/gms/internal/cast/w2;

    .line 390
    .line 391
    invoke-static {v4, v6, v7}, Lcom/google/android/gms/internal/cast/w2;->v(Lcom/google/android/gms/internal/cast/w2;J)V

    .line 392
    .line 393
    .line 394
    :cond_c
    iget v4, p1, Lcom/google/android/gms/internal/cast/h2;->g:I

    .line 395
    .line 396
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 397
    .line 398
    .line 399
    iget-object v6, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 400
    .line 401
    check-cast v6, Lcom/google/android/gms/internal/cast/w2;

    .line 402
    .line 403
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/cast/w2;->p(Lcom/google/android/gms/internal/cast/w2;I)V

    .line 404
    .line 405
    .line 406
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/h2;->a:Lcom/google/android/gms/internal/cast/h;

    .line 407
    .line 408
    iget v4, v4, Lcom/google/android/gms/internal/cast/h;->f:I

    .line 409
    .line 410
    if-ne v4, v5, :cond_d

    .line 411
    .line 412
    const/4 v0, 0x1

    .line 413
    :cond_d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 414
    .line 415
    .line 416
    iget-object v1, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 417
    .line 418
    check-cast v1, Lcom/google/android/gms/internal/cast/w2;

    .line 419
    .line 420
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/w2;->r(Lcom/google/android/gms/internal/cast/w2;Z)V

    .line 421
    .line 422
    .line 423
    iget-boolean p1, p1, Lcom/google/android/gms/internal/cast/h2;->o:Z

    .line 424
    .line 425
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 426
    .line 427
    .line 428
    iget-object v0, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 429
    .line 430
    check-cast v0, Lcom/google/android/gms/internal/cast/w2;

    .line 431
    .line 432
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/w2;->s(Lcom/google/android/gms/internal/cast/w2;Z)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 436
    .line 437
    .line 438
    iget-object p1, v2, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 439
    .line 440
    check-cast p1, Lcom/google/android/gms/internal/cast/c3;

    .line 441
    .line 442
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    check-cast v0, Lcom/google/android/gms/internal/cast/w2;

    .line 447
    .line 448
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/cast/c3;->q(Lcom/google/android/gms/internal/cast/c3;Lcom/google/android/gms/internal/cast/w2;)V

    .line 449
    .line 450
    .line 451
    return-object v2
.end method
