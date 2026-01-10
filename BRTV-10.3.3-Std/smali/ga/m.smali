.class public final Lga/m;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final c:Ljava/lang/String;

.field public static d:J

.field public static e:Lorg/bitspark/android/beans/AuthInfo;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "/+Wb+X8c\n"

    .line 2
    .line 3
    const-string v1, "vbbOihpuS50=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lga/m;->c:Ljava/lang/String;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    sput-wide v0, Lga/m;->d:J

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lga/m;->a:Landroid/content/Context;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lga/m;->b:I

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lga/m;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "yKL6ZGmG13vIqPk3Jw==\n"

    .line 10
    .line 11
    const-string v2, "pM2dDQfAthI=\n"

    .line 12
    .line 13
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, "6mch/g==\n"

    .line 24
    .line 25
    const-string v1, "ykoM3lUeAaM=\n"

    .line 26
    .line 27
    invoke-static {p1, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lga/m;->b:I

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 44
    .line 45
    sget-object v0, Lga/m;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget p1, p0, Lga/m;->b:I

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    iput p1, p0, Lga/m;->b:I

    .line 55
    .line 56
    return-void
.end method

.method public static b(Lga/m;)Z
    .locals 4

    .line 1
    iget v0, p0, Lga/m;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lga/l;->l:Lga/l;

    .line 7
    .line 8
    invoke-static {v0}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "jBnFw0x3UziGPcXRSX1GLZ4YxIwAMypn3w==\n"

    .line 26
    .line 27
    const-string v3, "/3GqtiATB0o=\n"

    .line 28
    .line 29
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget p0, p0, Lga/m;->b:I

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p0, " "

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 54
    .line 55
    sget-object v0, Lga/m;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v0, p0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v1
.end method

.method public static c(Lga/m;Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "2131886504"

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    :try_start_0
    sget-object v3, Lea/g;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v3}, Lorg/bitspark/android/utils/m;->l(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class v4, Lorg/bitspark/android/beans/AuthInfo;

    .line 15
    .line 16
    invoke-static {p1, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lorg/bitspark/android/beans/AuthInfo;

    .line 21
    .line 22
    sput-object p1, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 23
    .line 24
    iget p1, p1, Lorg/bitspark/android/beans/AuthInfo;->code:I

    .line 25
    .line 26
    invoke-static {p1, v3}, Lorg/bitspark/android/utils/m;->m(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "TgI=\n"

    .line 39
    .line 40
    const-string v0, "dCJEcDzZOQ0=\n"

    .line 41
    .line 42
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-static {p1, p0}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Lorg/bitspark/android/utils/m;->l(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_0
    iget p1, p1, Lorg/bitspark/android/beans/AuthInfo;->code:I

    .line 71
    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    sget-object p0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 75
    .line 76
    const/16 p1, 0xf

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_1
    iget-object p0, p0, Lga/m;->a:Landroid/content/Context;

    .line 84
    .line 85
    const/16 v0, -0xb

    .line 86
    .line 87
    if-ne p1, v0, :cond_2

    .line 88
    .line 89
    const p1, 0x7f1201ab

    .line 90
    .line 91
    .line 92
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const/16 v0, -0xa

    .line 98
    .line 99
    if-ne p1, v0, :cond_3

    .line 100
    .line 101
    const p1, 0x7f1201b5

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    sget-object p1, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 115
    .line 116
    iget-object p1, p1, Lorg/bitspark/android/beans/AuthInfo;->result:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, "tqw=\n"

    .line 122
    .line 123
    const-string v0, "jIzaRZOubnY=\n"

    .line 124
    .line 125
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    sget-object p1, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 133
    .line 134
    iget p1, p1, Lorg/bitspark/android/beans/AuthInfo;->code:I

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p1, "wX12\n"

    .line 140
    .line 141
    const-string v0, "4VJW5YzrdMw=\n"

    .line 142
    .line 143
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    :goto_0
    invoke-static {v1, p0}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v3}, Lorg/bitspark/android/utils/m;->l(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object p0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 164
    .line 165
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catch_0
    const-string p0, "wlGnuJiO457XQvWvnNr3zddCp6SPjw==\n"

    .line 170
    .line 171
    const-string p1, "sjDVy/2ulu0=\n"

    .line 172
    .line 173
    invoke-static {p0, p1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    sget-boolean p1, Lorg/bitspark/android/utils/m;->b:Z

    .line 178
    .line 179
    sget-object p1, Lga/m;->c:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {p1, p0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance p0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string p1, "mG/kkFKjNxetfLaHVvcjRK185IxFuWI=\n"

    .line 190
    .line 191
    const-string v0, "yA6W4zeDQmQ=\n"

    .line 192
    .line 193
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {v1, p0}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    sget-object p0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 211
    .line 212
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    .line 214
    .line 215
    :goto_1
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, v0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, v0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->token:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    if-eqz p0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "AQ==\n"

    .line 24
    .line 25
    const-string v1, "PsQj5fYr/wc=\n"

    .line 26
    .line 27
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-lez v0, :cond_2

    .line 36
    .line 37
    invoke-static {p0}, Lea/q;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "l3H9\n"

    .line 42
    .line 43
    const-string v1, "sQXAEbsbxkI=\n"

    .line 44
    .line 45
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    sget-object v0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 53
    .line 54
    iget-object v0, v0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 55
    .line 56
    iget-object v0, v0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->token:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_2
    invoke-static {p0}, Lea/q;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string v0, "rqGR\n"

    .line 71
    .line 72
    const-string v1, "kdWsBUNHfOI=\n"

    .line 73
    .line 74
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    sget-object v0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 82
    .line 83
    iget-object v0, v0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 84
    .line 85
    iget-object v0, v0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->token:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :cond_3
    :goto_0
    const-string p0, ""

    .line 96
    .line 97
    :cond_4
    :goto_1
    return-object p0
.end method

.method public static g(Lga/l;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lga/l;->b:Lga/l;

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lga/l;->a:Lga/l;

    .line 16
    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lga/l;->l:Lga/l;

    .line 20
    .line 21
    if-eq p0, v0, :cond_1

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    packed-switch p0, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :pswitch_0
    sget-object v1, Lea/h;->c:Ljava/lang/String;

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :pswitch_1
    sget-object p0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 38
    .line 39
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 40
    .line 41
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->wsguard_url:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p0}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :pswitch_2
    sget-object p0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 50
    .line 51
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 52
    .line 53
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->event_url:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p0}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto :goto_0

    .line 60
    :pswitch_3
    sget-object p0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 61
    .line 62
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 63
    .line 64
    iget-object v1, p0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->vod_tag_url:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_4
    sget-object p0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 68
    .line 69
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 70
    .line 71
    iget-object v1, p0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->vod_search_url:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_5
    sget-object p0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 75
    .line 76
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 77
    .line 78
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->vod_tag_url:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p0}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_0

    .line 85
    :pswitch_6
    sget-object p0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 86
    .line 87
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 88
    .line 89
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->message_url:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p0}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    goto :goto_0

    .line 96
    :pswitch_7
    sget-object p0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 97
    .line 98
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 99
    .line 100
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->update_url:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p0}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    goto :goto_0

    .line 107
    :pswitch_8
    sget-object p0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 108
    .line 109
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 110
    .line 111
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->epg_url:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {p0}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    goto :goto_0

    .line 118
    :pswitch_9
    sget-object p0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 119
    .line 120
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 121
    .line 122
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->vod_url:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {p0}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    goto :goto_0

    .line 129
    :pswitch_a
    sget-object p0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 130
    .line 131
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 132
    .line 133
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->ch_url:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {p0}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    goto :goto_0

    .line 140
    :pswitch_b
    sget-object p0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 141
    .line 142
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 143
    .line 144
    iget-object v1, p0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->brand_url:Ljava/lang/String;

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :pswitch_c
    sget-object p0, Lga/m;->e:Lorg/bitspark/android/beans/AuthInfo;

    .line 148
    .line 149
    iget-object p0, p0, Lorg/bitspark/android/beans/AuthInfo;->service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

    .line 150
    .line 151
    iget-object v1, p0, Lorg/bitspark/android/beans/AuthInfo$ServiceBean;->auth_url:Ljava/lang/String;

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :pswitch_d
    sget-object v1, Lea/h;->b:Ljava/lang/String;

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :pswitch_e
    sget-object v1, Lea/h;->a:Ljava/lang/String;

    .line 158
    .line 159
    :goto_0
    const-string p0, "KFCvSpE0\n"

    .line 160
    .line 161
    const-string v0, "exX9HNRmuwU=\n"

    .line 162
    .line 163
    invoke-static {p0, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    const/4 v0, 0x0

    .line 168
    invoke-static {v0, p0}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-eqz p0, :cond_2

    .line 177
    .line 178
    const-string v0, "BxE=\n"

    .line 179
    .line 180
    const-string v2, "Wz9rpW9RyDE=\n"

    .line 181
    .line 182
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v3, "Ve0=\n"

    .line 192
    .line 193
    const-string v4, "eI9BQpcfTtY=\n"

    .line 194
    .line 195
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string p0, "HA==\n"

    .line 206
    .line 207
    const-string v3, "Mp6fgxPe+48=\n"

    .line 208
    .line 209
    invoke-static {p0, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    :cond_2
    return-object v1

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final e()V
    .locals 10

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SjlvfA==\n"

    .line 7
    .line 8
    const-string v2, "LEsAETJaaGY=\n"

    .line 9
    .line 10
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "0Lw=\n"

    .line 15
    .line 16
    const-string v3, "scycJScxnq8=\n"

    .line 17
    .line 18
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    new-array v4, v3, [Z

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v4}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lea/g;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v3, v1}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x2

    .line 39
    const/4 v4, 0x1

    .line 40
    if-eq v1, v2, :cond_1

    .line 41
    .line 42
    if-ne v1, v4, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    :goto_0
    sget-object v1, Lea/g;->e:Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, ""

    .line 56
    .line 57
    invoke-static {v1, v2}, Lorg/bitspark/android/utils/m;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    iget-object v7, p0, Lga/m;->a:Landroid/content/Context;

    .line 66
    .line 67
    if-nez v6, :cond_2

    .line 68
    .line 69
    invoke-static {v7, v5}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    const-string v6, "/xyVgIMvzws=\n"

    .line 73
    .line 74
    const-string v8, "im/w8u1Oom4=\n"

    .line 75
    .line 76
    invoke-static {v6, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    new-array v8, v3, [Z

    .line 81
    .line 82
    invoke-virtual {v0, v6, v5, v8}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 83
    .line 84
    .line 85
    const-string v5, "C8WOk08mmpc=\n"

    .line 86
    .line 87
    const-string v6, "e6T94DhJ6PM=\n"

    .line 88
    .line 89
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    sget-object v6, Lea/g;->f:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v6, v2}, Lorg/bitspark/android/utils/m;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    new-array v9, v3, [Z

    .line 100
    .line 101
    invoke-virtual {v0, v5, v8, v9}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 102
    .line 103
    .line 104
    const-string v5, "BIBMLHMzsqw=\n"

    .line 105
    .line 106
    const-string v8, "YOU6RRBW++g=\n"

    .line 107
    .line 108
    invoke-static {v5, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-static {v7}, Lr4/b;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    new-array v8, v3, [Z

    .line 117
    .line 118
    invoke-virtual {v0, v5, v7, v8}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 119
    .line 120
    .line 121
    const-string v5, "R8W/7tdMS/VWybk=\n"

    .line 122
    .line 123
    const-string v7, "N6TchbYrLrs=\n"

    .line 124
    .line 125
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    sget-object v7, Lea/a;->b:Ljava/lang/String;

    .line 130
    .line 131
    new-array v8, v3, [Z

    .line 132
    .line 133
    invoke-virtual {v0, v5, v7, v8}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 134
    .line 135
    .line 136
    const-string v5, "wI573lf/qQ==\n"

    .line 137
    .line 138
    const-string v7, "of4LkDaSzFw=\n"

    .line 139
    .line 140
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    sget-object v7, Lea/a;->l:Ljava/lang/String;

    .line 145
    .line 146
    new-array v8, v3, [Z

    .line 147
    .line 148
    invoke-virtual {v0, v5, v7, v8}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 149
    .line 150
    .line 151
    const-string v5, "bIkZdlWg4BBilw==\n"

    .line 152
    .line 153
    const-string v7, "DflpIDDSk3k=\n"

    .line 154
    .line 155
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    sget v7, Lea/a;->e:I

    .line 160
    .line 161
    new-array v8, v3, [Z

    .line 162
    .line 163
    invoke-virtual {v0, v5, v7, v8}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;I[Z)V

    .line 164
    .line 165
    .line 166
    const-string v5, "xLeLN45zN8PIpg==\n"

    .line 167
    .line 168
    const-string v7, "psLiW+oxRaI=\n"

    .line 169
    .line 170
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 175
    .line 176
    new-array v8, v3, [Z

    .line 177
    .line 178
    invoke-virtual {v0, v5, v7, v8}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 179
    .line 180
    .line 181
    const-string v5, "4lssCRsf5wrkWyYR\n"

    .line 182
    .line 183
    const-string v7, "gC5FZX9PlWU=\n"

    .line 184
    .line 185
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 190
    .line 191
    new-array v8, v3, [Z

    .line 192
    .line 193
    invoke-virtual {v0, v5, v7, v8}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 194
    .line 195
    .line 196
    const-string v5, "ng6Ai7sfx8+OHw==\n"

    .line 197
    .line 198
    const-string v7, "/Hvp599dqK4=\n"

    .line 199
    .line 200
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 205
    .line 206
    new-array v8, v3, [Z

    .line 207
    .line 208
    invoke-virtual {v0, v5, v7, v8}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 209
    .line 210
    .line 211
    const-string v5, "gyZTif14oZ8=\n"

    .line 212
    .line 213
    const-string v7, "4VM65Zk549Y=\n"

    .line 214
    .line 215
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 220
    .line 221
    new-array v8, v3, [Z

    .line 222
    .line 223
    invoke-virtual {v0, v5, v7, v8}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 224
    .line 225
    .line 226
    const-string v5, "nyXkY0ZI7BmJKu9+U1s=\n"

    .line 227
    .line 228
    const-string v7, "zHW7JwMepVo=\n"

    .line 229
    .line 230
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-static {v3, v5}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    const-string v7, "Z/e5oqwPy6Jn47k=\n"

    .line 243
    .line 244
    const-string v8, "CIfc0M17ru8=\n"

    .line 245
    .line 246
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    new-array v8, v3, [Z

    .line 251
    .line 252
    invoke-virtual {v0, v7, v5, v8}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;I[Z)V

    .line 253
    .line 254
    .line 255
    const-string v5, "ljLwFHdPNxqEK/gB\n"

    .line 256
    .line 257
    const-string v7, "9EeZeBMLXmk=\n"

    .line 258
    .line 259
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 264
    .line 265
    new-array v8, v3, [Z

    .line 266
    .line 267
    invoke-virtual {v0, v5, v7, v8}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 268
    .line 269
    .line 270
    const-string v5, "ioXJZF2IB3mNnA==\n"

    .line 271
    .line 272
    const-string v7, "6PCgCDnFaB0=\n"

    .line 273
    .line 274
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 279
    .line 280
    new-array v8, v3, [Z

    .line 281
    .line 282
    invoke-virtual {v0, v5, v7, v8}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 283
    .line 284
    .line 285
    const-string v5, "dNJe5ZnHYCNoxQ==\n"

    .line 286
    .line 287
    const-string v7, "B6sts/y1E0o=\n"

    .line 288
    .line 289
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 294
    .line 295
    new-array v3, v3, [Z

    .line 296
    .line 297
    invoke-virtual {v0, v5, v7, v3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 298
    .line 299
    .line 300
    sget-object v3, Lga/l;->b:Lga/l;

    .line 301
    .line 302
    invoke-static {v3}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    iget v5, p0, Lga/m;->b:I

    .line 307
    .line 308
    if-ne v5, v4, :cond_3

    .line 309
    .line 310
    sget-object v3, Lga/l;->l:Lga/l;

    .line 311
    .line 312
    invoke-static {v3}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v5, "Jg2xueyNwa4pIw==\n"

    .line 322
    .line 323
    const-string v7, "R3jF1qDipsc=\n"

    .line 324
    .line 325
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    iget v5, p0, Lga/m;->b:I

    .line 333
    .line 334
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string v5, "E6gjQ+6lcCcV\n"

    .line 338
    .line 339
    const-string v7, "TogOY5vXHB0=\n"

    .line 340
    .line 341
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v5, "KtLqSWU=\n"

    .line 352
    .line 353
    const-string v7, "d/LHZEW1yj8=\n"

    .line 354
    .line 355
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-static {v1, v2}, Lorg/bitspark/android/utils/m;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v5, "/A==\n"

    .line 370
    .line 371
    const-string v7, "xiOqayZzWLU=\n"

    .line 372
    .line 373
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-static {v6, v2}, Lorg/bitspark/android/utils/m;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    sget-object v5, Lga/m;->c:Ljava/lang/String;

    .line 392
    .line 393
    invoke-static {v5, v4}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v4, p0}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-static {v3}, Lcom/lzy/okgo/OkGo;->post(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    const-string v5, "/Rk2dHARa4XGHg==\n"

    .line 408
    .line 409
    const-string v6, "qGpTBl1QDOA=\n"

    .line 410
    .line 411
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    invoke-virtual {v4, v5}, Lcom/lzy/okgo/request/base/Request;->removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    check-cast v4, Lcom/lzy/okgo/request/PostRequest;

    .line 420
    .line 421
    const-string v5, "yosTXGGT1mvxjA==\n"

    .line 422
    .line 423
    const-string v6, "n/h2LkzSsQ4=\n"

    .line 424
    .line 425
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    sget-object v6, Lea/a;->m:Ljava/lang/String;

    .line 430
    .line 431
    invoke-virtual {v4, v5, v6}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    check-cast v4, Lcom/lzy/okgo/request/PostRequest;

    .line 436
    .line 437
    invoke-virtual {v4, v0}, Lcom/lzy/okgo/request/base/Request;->params(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    .line 442
    .line 443
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/request/base/Request;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    .line 448
    .line 449
    sget-object v4, Lcom/lzy/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 450
    .line 451
    invoke-virtual {v0, v4}, Lcom/lzy/okgo/request/base/Request;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    .line 456
    .line 457
    const-wide/32 v4, 0xf731400

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v4, v5}, Lcom/lzy/okgo/request/base/Request;->cacheTime(J)Lcom/lzy/okgo/request/base/Request;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    .line 465
    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string v5, "XSet\n"

    .line 472
    .line 473
    const-string v6, "PkyARKSfBL8=\n"

    .line 474
    .line 475
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v3, "Rw==\n"

    .line 486
    .line 487
    const-string v5, "aoP393haGXY=\n"

    .line 488
    .line 489
    invoke-static {v3, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-static {v1, v2}, Lorg/bitspark/android/utils/m;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    .line 512
    .line 513
    new-instance v1, Lga/c;

    .line 514
    .line 515
    const/4 v2, 0x1

    .line 516
    invoke-direct {v1, v2, p0}, Lga/c;-><init>(ILjava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->execute(Lcom/lzy/okgo/callback/Callback;)V

    .line 520
    .line 521
    .line 522
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    sget-object v0, Lea/g;->c:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    sget-object v2, Lea/a;->h:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v2}, Lorg/bitspark/android/utils/m;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v3, "Hg==\n"

    .line 41
    .line 42
    const-string v5, "Mxy0hHwovWU=\n"

    .line 43
    .line 44
    invoke-static {v3, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/16 v2, 0xc

    .line 53
    .line 54
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v0, v2}, Lorg/bitspark/android/utils/m;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "FMD3+V63DVJmwfXmRKANDGY=\n"

    .line 71
    .line 72
    const-string v3, "RqWQkC3DaCA=\n"

    .line 73
    .line 74
    invoke-static {v1, v3, v0, v2}, Lea/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sget-object v1, Lga/m;->c:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lga/l;->a:Lga/l;

    .line 84
    .line 85
    invoke-static {v0}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/lzy/okgo/OkGo;->post(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "NcS6\n"

    .line 94
    .line 95
    const-string v3, "Ua3edn/MqDo=\n"

    .line 96
    .line 97
    invoke-static {v1, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    new-array v3, v4, [Z

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2, v3}, Lcom/lzy/okgo/request/base/Request;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/request/base/Request;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    .line 114
    .line 115
    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/lzy/okgo/request/PostRequest;

    .line 122
    .line 123
    new-instance v1, Lga/j;

    .line 124
    .line 125
    const/4 v2, 0x1

    .line 126
    invoke-direct {v1, v2}, Lga/j;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->execute(Lcom/lzy/okgo/callback/Callback;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final h()V
    .locals 10

    .line 1
    sget-object v0, Lea/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Lea/g;->b:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x2

    .line 15
    const-string v4, ""

    .line 16
    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    sget-object v2, Lea/g;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v2, v4}, Lorg/bitspark/android/utils/m;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    iput v1, p0, Lga/m;->b:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lga/m;->e()V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_0
    invoke-static {v1, v0}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x1

    .line 47
    if-ne v2, v3, :cond_1

    .line 48
    .line 49
    sget-object v2, Lea/g;->e:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v2, v4}, Lorg/bitspark/android/utils/m;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    iput v1, p0, Lga/m;->b:I

    .line 62
    .line 63
    invoke-virtual {p0}, Lga/m;->e()V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_1
    iget-object v2, p0, Lga/m;->a:Landroid/content/Context;

    .line 69
    .line 70
    const-string v5, "fYgY+6ac1390iwP8oYfSeXaJOt+hm9ZZdMxNm/I=\n"

    .line 71
    .line 72
    const-string v6, "Gu1sutPovzY=\n"

    .line 73
    .line 74
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    sget-object v6, Lga/m;->c:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v6, v5}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v5, Ljava/util/Properties;

    .line 84
    .line 85
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 86
    .line 87
    .line 88
    :try_start_0
    const-string v7, "fVW8ZgF+eVYxTLp6AXp5SXZZuw==\n"

    .line 89
    .line 90
    const-string v8, "HzzIFXEfCz0=\n"

    .line 91
    .line 92
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v2, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_6

    .line 105
    .line 106
    const-string v7, "gxi50Xmkvl3PAb/NeaC+QogUvg==\n"

    .line 107
    .line 108
    const-string v8, "4XHNognFzDY=\n"

    .line 109
    .line 110
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v2, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 122
    .line 123
    .line 124
    const-string v2, "3hGmkDzYeqE=\n"

    .line 125
    .line 126
    const-string v7, "q2LD4nK5F8Q=\n"

    .line 127
    .line 128
    invoke-static {v2, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const/16 v7, 0x10

    .line 137
    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    const-string v2, "bJMCzuv5CTw=\n"

    .line 141
    .line 142
    const-string v8, "GeBnvKWYZFk=\n"

    .line 143
    .line 144
    invoke-static {v2, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    sget v8, Lorg/bitspark/android/Utils;->a:I

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-ge v8, v7, :cond_2

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_2
    invoke-static {v1, v2}, Lorg/bitspark/android/Utils;->enc(ILjava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    goto/16 :goto_2

    .line 168
    .line 169
    :catch_1
    move-exception v0

    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :cond_3
    move-object v2, v4

    .line 173
    :goto_0
    const-string v8, "I4ocB3RYyl0=\n"

    .line 174
    .line 175
    const-string v9, "U+tvdCM3uDk=\n"

    .line 176
    .line 177
    invoke-static {v8, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-virtual {v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    if-eqz v8, :cond_5

    .line 186
    .line 187
    const-string v8, "NPq4gMGZr5I=\n"

    .line 188
    .line 189
    const-string v9, "RJvL85b23fY=\n"

    .line 190
    .line 191
    invoke-static {v8, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    invoke-virtual {v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    sget v8, Lorg/bitspark/android/Utils;->a:I

    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    if-ge v8, v7, :cond_4

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_4
    invoke-static {v1, v5}, Lorg/bitspark/android/Utils;->enc(ILjava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    goto :goto_1

    .line 213
    :cond_5
    move-object v5, v4

    .line 214
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    if-nez v7, :cond_7

    .line 219
    .line 220
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-nez v4, :cond_7

    .line 225
    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v7, "NFt2UdEKTzQ1Vn8Unlk=\n"

    .line 232
    .line 233
    const-string v8, "WzcScaR5KkY=\n"

    .line 234
    .line 235
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v7, "ww7PZJcvCAbbDdkg3W4=\n"

    .line 246
    .line 247
    const-string v8, "rGKrROdOe3U=\n"

    .line 248
    .line 249
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-static {v6, v4}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v3, v0}, Lorg/bitspark/android/utils/m;->m(ILjava/lang/String;)V

    .line 267
    .line 268
    .line 269
    sget-object v0, Lea/g;->e:Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v0, v2}, Lorg/bitspark/android/utils/m;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    sget-object v0, Lea/g;->f:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {v0, v5}, Lorg/bitspark/android/utils/m;->n(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .line 278
    .line 279
    :cond_6
    iput v1, p0, Lga/m;->b:I

    .line 280
    .line 281
    invoke-virtual {p0}, Lga/m;->e()V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    .line 287
    .line 288
    goto :goto_4

    .line 289
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 290
    .line 291
    .line 292
    const-string v0, "NIFgOQqsWDQ3wSx0T+VRe3HLL38IrRd6NoM=\n"

    .line 293
    .line 294
    const-string v1, "F6JDGimMNls=\n"

    .line 295
    .line 296
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-static {v6, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :cond_7
    :goto_4
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 304
    .line 305
    const/16 v1, 0xa

    .line 306
    .line 307
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    .line 309
    .line 310
    :goto_5
    return-void
.end method
