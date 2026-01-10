.class Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSONPathParser"
.end annotation


# static fields
.field private static final strArrayPatternx:Ljava/util/regex/Pattern;

.field private static final strArrayRegex:Ljava/lang/String; = "\'\\s*,\\s*\'"


# instance fields
.field private ch:C

.field private hasRefSegment:Z

.field private level:I

.field private final path:Ljava/lang/String;

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\'\\s*,\\s*\'"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->strArrayPatternx:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic access$000(Lcom/alibaba/fastjson/JSONPath$JSONPathParser;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->hasRefSegment:Z

    .line 2
    .line 3
    return p0
.end method

.method public static isDigitFirst(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x2d

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x2b

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x30

    .line 10
    .line 11
    if-lt p0, v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x39

    .line 14
    .line 15
    if-gt p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method


# virtual methods
.method public accept(C)V
    .locals 3

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 11
    .line 12
    if-ne v0, p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void

    .line 24
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "expect \'"

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ", but \'"

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-char p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "\'"

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segment;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x1

    .line 11
    sub-int/2addr v0, v3

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/16 v5, 0x2c

    .line 17
    .line 18
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/4 v7, -0x1

    .line 27
    const/4 v8, 0x2

    .line 28
    if-le v6, v8, :cond_2

    .line 29
    .line 30
    const/16 v6, 0x27

    .line 31
    .line 32
    if-ne v2, v6, :cond_2

    .line 33
    .line 34
    if-ne v4, v6, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eq v5, v7, :cond_1

    .line 41
    .line 42
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->strArrayPatternx:Ljava/util/regex/Pattern;

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string p1, "\'\\s*,\\s*\'"

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;-><init>([Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_1
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 68
    .line 69
    invoke-direct {p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_2
    const/16 v0, 0x3a

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-ne v5, v7, :cond_5

    .line 80
    .line 81
    if-ne v0, v7, :cond_5

    .line 82
    .line 83
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    .line 94
    .line 95
    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :catch_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 100
    .line 101
    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const/16 v2, 0x22

    .line 110
    .line 111
    if-ne v0, v2, :cond_4

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    sub-int/2addr v0, v3

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-ne v0, v2, :cond_4

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    sub-int/2addr v0, v3

    .line 129
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 134
    .line 135
    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    return-object v0

    .line 139
    :cond_5
    if-eq v5, v7, :cond_7

    .line 140
    .line 141
    const-string v0, ","

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    array-length v0, p1

    .line 148
    new-array v0, v0, [I

    .line 149
    .line 150
    :goto_1
    array-length v2, p1

    .line 151
    if-ge v1, v2, :cond_6

    .line 152
    .line 153
    aget-object v2, p1, v1

    .line 154
    .line 155
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    aput v2, v0, v1

    .line 160
    .line 161
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    .line 165
    .line 166
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;-><init>([I)V

    .line 167
    .line 168
    .line 169
    return-object p1

    .line 170
    :cond_7
    if-eq v0, v7, :cond_10

    .line 171
    .line 172
    const-string v0, ":"

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    array-length v0, p1

    .line 179
    new-array v2, v0, [I

    .line 180
    .line 181
    const/4 v4, 0x0

    .line 182
    :goto_2
    array-length v5, p1

    .line 183
    if-ge v4, v5, :cond_a

    .line 184
    .line 185
    aget-object v5, p1, v4

    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-nez v6, :cond_9

    .line 192
    .line 193
    if-nez v4, :cond_8

    .line 194
    .line 195
    aput v1, v2, v4

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 199
    .line 200
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 201
    .line 202
    .line 203
    throw p1

    .line 204
    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    aput v5, v2, v4

    .line 209
    .line 210
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_a
    aget p1, v2, v1

    .line 214
    .line 215
    if-le v0, v3, :cond_b

    .line 216
    .line 217
    aget v7, v2, v3

    .line 218
    .line 219
    :cond_b
    const/4 v1, 0x3

    .line 220
    if-ne v0, v1, :cond_c

    .line 221
    .line 222
    aget v3, v2, v8

    .line 223
    .line 224
    :cond_c
    if-ltz v7, :cond_e

    .line 225
    .line 226
    if-lt v7, p1, :cond_d

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 230
    .line 231
    const-string v1, "end must greater than or equals start. start "

    .line 232
    .line 233
    const-string v2, ",  end "

    .line 234
    .line 235
    invoke-static {p1, v7, v1, v2}, La/e;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_e
    :goto_4
    if-lez v3, :cond_f

    .line 244
    .line 245
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$RangeSegment;

    .line 246
    .line 247
    invoke-direct {v0, p1, v7, v3}, Lcom/alibaba/fastjson/JSONPath$RangeSegment;-><init>(III)V

    .line 248
    .line 249
    .line 250
    return-object v0

    .line 251
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 252
    .line 253
    const-string v0, "step must greater than zero : "

    .line 254
    .line 255
    invoke-static {v3, v0}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw p1

    .line 263
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 264
    .line 265
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 266
    .line 267
    .line 268
    throw p1
.end method

.method public explain()[Lcom/alibaba/fastjson/JSONPath$Segment;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    .line 23
    .line 24
    array-length v3, v0

    .line 25
    if-ne v1, v3, :cond_0

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-array v3, v1, [Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 29
    .line 30
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_1
    instance-of v3, v1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    move-object v3, v1

    .line 39
    check-cast v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$100(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$400(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "*"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    .line 61
    .line 62
    array-length v4, v0

    .line 63
    if-ne v3, v4, :cond_3

    .line 64
    .line 65
    mul-int/lit8 v4, v3, 0x3

    .line 66
    .line 67
    div-int/lit8 v4, v4, 0x2

    .line 68
    .line 69
    new-array v4, v4, [Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 70
    .line 71
    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    move-object v0, v4

    .line 75
    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    .line 76
    .line 77
    add-int/lit8 v3, v2, 0x1

    .line 78
    .line 79
    iput v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    .line 80
    .line 81
    aput-object v1, v0, v2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw v0
.end method

.method public filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;
    .locals 5

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x26

    .line 6
    .line 7
    if-ne v0, v3, :cond_0

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v4, 0x0

    .line 12
    :goto_0
    if-ne v0, v3, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->getNextChar()C

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eq v0, v3, :cond_2

    .line 19
    .line 20
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 21
    .line 22
    const/16 v3, 0x7c

    .line 23
    .line 24
    if-ne v0, v3, :cond_6

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->getNextChar()C

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v3, :cond_6

    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 36
    .line 37
    .line 38
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 39
    .line 40
    const/16 v3, 0x28

    .line 41
    .line 42
    if-ne v0, v3, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/4 v1, 0x0

    .line 49
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 50
    .line 51
    const/16 v3, 0x20

    .line 52
    .line 53
    if-ne v0, v3, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 64
    .line 65
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$FilterGroup;

    .line 66
    .line 67
    invoke-direct {v2, p1, v0, v4}, Lcom/alibaba/fastjson/JSONPath$FilterGroup;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;Lcom/alibaba/fastjson/JSONPath$Filter;Z)V

    .line 68
    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    iget-char p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 73
    .line 74
    const/16 v0, 0x29

    .line 75
    .line 76
    if-ne p1, v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 79
    .line 80
    .line 81
    :cond_5
    move-object p1, v2

    .line 82
    :cond_6
    return-object p1
.end method

.method public getNextChar()C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isEOF()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public next()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 14
    .line 15
    return-void
.end method

.method public parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segment;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 13
    .line 14
    check-cast p1, Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public parseArrayAccessFilter(Z)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x5b

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 11
    .line 12
    const/16 v2, 0x3f

    .line 13
    .line 14
    const/16 v3, 0x28

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :goto_0
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 27
    .line 28
    if-ne v2, v3, :cond_1

    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v1, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 41
    .line 42
    .line 43
    const/16 v6, 0x22

    .line 44
    .line 45
    const/16 v7, 0x27

    .line 46
    .line 47
    const/16 v8, 0x40

    .line 48
    .line 49
    const/16 v9, 0x2e

    .line 50
    .line 51
    const/16 v10, 0x2f

    .line 52
    .line 53
    const/4 v11, -0x1

    .line 54
    const/4 v12, 0x2

    .line 55
    const/16 v13, 0x5c

    .line 56
    .line 57
    const/16 v14, 0x5d

    .line 58
    .line 59
    if-nez v2, :cond_13

    .line 60
    .line 61
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 62
    .line 63
    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_13

    .line 68
    .line 69
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_13

    .line 76
    .line 77
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 78
    .line 79
    if-eq v3, v13, :cond_13

    .line 80
    .line 81
    if-ne v3, v8, :cond_3

    .line 82
    .line 83
    goto/16 :goto_a

    .line 84
    .line 85
    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 86
    .line 87
    sub-int/2addr v1, v5

    .line 88
    :goto_2
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 89
    .line 90
    if-eq v4, v14, :cond_6

    .line 91
    .line 92
    if-eq v4, v10, :cond_6

    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_6

    .line 99
    .line 100
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 101
    .line 102
    if-ne v4, v9, :cond_4

    .line 103
    .line 104
    if-nez v2, :cond_4

    .line 105
    .line 106
    if-nez v2, :cond_4

    .line 107
    .line 108
    if-eq v3, v7, :cond_4

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_4
    if-ne v4, v13, :cond_5

    .line 112
    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    .line 121
    .line 122
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 123
    .line 124
    :goto_4
    sub-int/2addr v4, v5

    .line 125
    goto :goto_6

    .line 126
    :cond_7
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 127
    .line 128
    if-eq v4, v10, :cond_9

    .line 129
    .line 130
    if-ne v4, v9, :cond_8

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_8
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_9
    :goto_5
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :goto_6
    iget-object v9, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_d

    .line 150
    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 158
    .line 159
    .line 160
    const/4 v9, 0x0

    .line 161
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    if-ge v9, v10, :cond_c

    .line 166
    .line 167
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    if-ne v10, v13, :cond_b

    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 174
    .line 175
    .line 176
    move-result v16

    .line 177
    add-int/lit8 v14, v16, -0x1

    .line 178
    .line 179
    if-ge v9, v14, :cond_b

    .line 180
    .line 181
    add-int/lit8 v14, v9, 0x1

    .line 182
    .line 183
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result v15

    .line 187
    if-eq v15, v8, :cond_a

    .line 188
    .line 189
    if-eq v10, v13, :cond_a

    .line 190
    .line 191
    if-ne v10, v6, :cond_b

    .line 192
    .line 193
    :cond_a
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    move v9, v14

    .line 197
    goto :goto_8

    .line 198
    :cond_b
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    :goto_8
    add-int/2addr v9, v5

    .line 202
    const/16 v14, 0x5d

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    :cond_d
    const-string v4, "\\."

    .line 210
    .line 211
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-eq v6, v11, :cond_11

    .line 216
    .line 217
    if-ne v3, v7, :cond_e

    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-le v6, v12, :cond_e

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    sub-int/2addr v6, v5

    .line 230
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-ne v6, v3, :cond_e

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    sub-int/2addr v3, v5

    .line 241
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    goto :goto_9

    .line 246
    :cond_e
    const-string v3, "\\\\\\."

    .line 247
    .line 248
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    const-string v3, "\\-"

    .line 253
    .line 254
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-eq v3, v11, :cond_f

    .line 259
    .line 260
    const-string v3, "\\\\-"

    .line 261
    .line 262
    const-string v4, "-"

    .line 263
    .line 264
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    :cond_f
    :goto_9
    if-eqz v2, :cond_10

    .line 269
    .line 270
    const/16 v2, 0x29

    .line 271
    .line 272
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 273
    .line 274
    .line 275
    :cond_10
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 276
    .line 277
    const/4 v3, 0x0

    .line 278
    invoke-direct {v2, v1, v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    .line 279
    .line 280
    .line 281
    return-object v2

    .line 282
    :cond_11
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    if-eqz p1, :cond_12

    .line 287
    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-nez v2, :cond_12

    .line 293
    .line 294
    const/16 v2, 0x5d

    .line 295
    .line 296
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 297
    .line 298
    .line 299
    :cond_12
    return-object v1

    .line 300
    :cond_13
    :goto_a
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 301
    .line 302
    if-ne v3, v8, :cond_14

    .line 303
    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 308
    .line 309
    .line 310
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 315
    .line 316
    .line 317
    const/16 v4, 0x7c

    .line 318
    .line 319
    const/16 v8, 0x26

    .line 320
    .line 321
    const/16 v14, 0x20

    .line 322
    .line 323
    if-eqz v2, :cond_19

    .line 324
    .line 325
    iget-char v15, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 326
    .line 327
    const/16 v12, 0x29

    .line 328
    .line 329
    if-ne v15, v12, :cond_19

    .line 330
    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 332
    .line 333
    .line 334
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    .line 335
    .line 336
    const/4 v2, 0x0

    .line 337
    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;Z)V

    .line 338
    .line 339
    .line 340
    :goto_b
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 341
    .line 342
    if-ne v2, v14, :cond_15

    .line 343
    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 345
    .line 346
    .line 347
    goto :goto_b

    .line 348
    :cond_15
    if-eq v2, v8, :cond_16

    .line 349
    .line 350
    if-ne v2, v4, :cond_17

    .line 351
    .line 352
    :cond_16
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    :cond_17
    if-eqz p1, :cond_18

    .line 357
    .line 358
    const/16 v12, 0x5d

    .line 359
    .line 360
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 361
    .line 362
    .line 363
    :cond_18
    return-object v1

    .line 364
    :cond_19
    const/16 v12, 0x5d

    .line 365
    .line 366
    if-eqz p1, :cond_20

    .line 367
    .line 368
    iget-char v15, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 369
    .line 370
    if-ne v15, v12, :cond_20

    .line 371
    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_1a

    .line 377
    .line 378
    const-string v1, "last"

    .line 379
    .line 380
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-eqz v1, :cond_1a

    .line 385
    .line 386
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    .line 387
    .line 388
    filled-new-array {v11}, [I

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;-><init>([I)V

    .line 393
    .line 394
    .line 395
    return-object v1

    .line 396
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 397
    .line 398
    .line 399
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    .line 400
    .line 401
    const/4 v5, 0x0

    .line 402
    invoke-direct {v1, v3, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;Z)V

    .line 403
    .line 404
    .line 405
    :goto_c
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 406
    .line 407
    if-ne v3, v14, :cond_1b

    .line 408
    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 410
    .line 411
    .line 412
    goto :goto_c

    .line 413
    :cond_1b
    if-eq v3, v8, :cond_1d

    .line 414
    .line 415
    if-ne v3, v4, :cond_1c

    .line 416
    .line 417
    goto :goto_e

    .line 418
    :cond_1c
    :goto_d
    const/16 v3, 0x29

    .line 419
    .line 420
    goto :goto_f

    .line 421
    :cond_1d
    :goto_e
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    goto :goto_d

    .line 426
    :goto_f
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 427
    .line 428
    .line 429
    if-eqz v2, :cond_1e

    .line 430
    .line 431
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 432
    .line 433
    .line 434
    :cond_1e
    if-eqz p1, :cond_1f

    .line 435
    .line 436
    const/16 v2, 0x5d

    .line 437
    .line 438
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 439
    .line 440
    .line 441
    :cond_1f
    return-object v1

    .line 442
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 443
    .line 444
    .line 445
    iget-char v12, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 446
    .line 447
    const/16 v15, 0x28

    .line 448
    .line 449
    if-ne v12, v15, :cond_21

    .line 450
    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 452
    .line 453
    .line 454
    const/16 v12, 0x29

    .line 455
    .line 456
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 457
    .line 458
    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 460
    .line 461
    .line 462
    const/4 v12, 0x1

    .line 463
    goto :goto_10

    .line 464
    :cond_21
    const/4 v12, 0x0

    .line 465
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readOp()Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 466
    .line 467
    .line 468
    move-result-object v15

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 470
    .line 471
    .line 472
    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 473
    .line 474
    if-eq v15, v11, :cond_22

    .line 475
    .line 476
    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 477
    .line 478
    if-ne v15, v11, :cond_23

    .line 479
    .line 480
    :cond_22
    const/4 v7, 0x0

    .line 481
    goto/16 :goto_47

    .line 482
    .line 483
    :cond_23
    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 484
    .line 485
    if-eq v15, v11, :cond_66

    .line 486
    .line 487
    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 488
    .line 489
    if-ne v15, v11, :cond_24

    .line 490
    .line 491
    goto/16 :goto_25

    .line 492
    .line 493
    :cond_24
    iget-char v11, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 494
    .line 495
    const/16 v16, 0x0

    .line 496
    .line 497
    if-eq v11, v7, :cond_51

    .line 498
    .line 499
    if-ne v11, v6, :cond_25

    .line 500
    .line 501
    goto/16 :goto_1c

    .line 502
    .line 503
    :cond_25
    invoke-static {v11}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    .line 504
    .line 505
    .line 506
    move-result v6

    .line 507
    if-eqz v6, :cond_2e

    .line 508
    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    .line 510
    .line 511
    .line 512
    move-result-wide v6

    .line 513
    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 514
    .line 515
    const-wide/16 v16, 0x0

    .line 516
    .line 517
    if-ne v10, v9, :cond_26

    .line 518
    .line 519
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readDoubleValue(J)D

    .line 520
    .line 521
    .line 522
    move-result-wide v9

    .line 523
    move-wide/from16 v21, v9

    .line 524
    .line 525
    goto :goto_11

    .line 526
    :cond_26
    move-wide/from16 v21, v16

    .line 527
    .line 528
    :goto_11
    cmpl-double v9, v21, v16

    .line 529
    .line 530
    if-nez v9, :cond_27

    .line 531
    .line 532
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    .line 533
    .line 534
    move-object/from16 v18, v9

    .line 535
    .line 536
    move-object/from16 v19, v3

    .line 537
    .line 538
    move/from16 v20, v12

    .line 539
    .line 540
    move-wide/from16 v21, v6

    .line 541
    .line 542
    move-object/from16 v23, v15

    .line 543
    .line 544
    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 545
    .line 546
    .line 547
    goto :goto_12

    .line 548
    :cond_27
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;

    .line 549
    .line 550
    move-object/from16 v18, v9

    .line 551
    .line 552
    move-object/from16 v19, v3

    .line 553
    .line 554
    move/from16 v20, v12

    .line 555
    .line 556
    move-object/from16 v23, v15

    .line 557
    .line 558
    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;-><init>(Ljava/lang/String;ZDLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 559
    .line 560
    .line 561
    :goto_12
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 562
    .line 563
    if-ne v3, v14, :cond_28

    .line 564
    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 566
    .line 567
    .line 568
    goto :goto_12

    .line 569
    :cond_28
    if-le v1, v5, :cond_29

    .line 570
    .line 571
    const/16 v1, 0x29

    .line 572
    .line 573
    if-ne v3, v1, :cond_29

    .line 574
    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 576
    .line 577
    .line 578
    :cond_29
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 579
    .line 580
    if-eq v1, v8, :cond_2a

    .line 581
    .line 582
    if-ne v1, v4, :cond_2b

    .line 583
    .line 584
    :cond_2a
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 585
    .line 586
    .line 587
    move-result-object v9

    .line 588
    :cond_2b
    if-eqz v2, :cond_2c

    .line 589
    .line 590
    const/16 v1, 0x29

    .line 591
    .line 592
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 593
    .line 594
    .line 595
    :cond_2c
    if-eqz p1, :cond_2d

    .line 596
    .line 597
    const/16 v1, 0x5d

    .line 598
    .line 599
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 600
    .line 601
    .line 602
    :cond_2d
    return-object v9

    .line 603
    :cond_2e
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 604
    .line 605
    const/16 v6, 0x24

    .line 606
    .line 607
    if-ne v1, v6, :cond_32

    .line 608
    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;

    .line 614
    .line 615
    invoke-direct {v4, v3, v12, v1, v15}, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;-><init>(Ljava/lang/String;ZLcom/alibaba/fastjson/JSONPath$Segment;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 616
    .line 617
    .line 618
    iput-boolean v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->hasRefSegment:Z

    .line 619
    .line 620
    :goto_13
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 621
    .line 622
    if-ne v1, v14, :cond_2f

    .line 623
    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 625
    .line 626
    .line 627
    goto :goto_13

    .line 628
    :cond_2f
    if-eqz v2, :cond_30

    .line 629
    .line 630
    const/16 v1, 0x29

    .line 631
    .line 632
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 633
    .line 634
    .line 635
    :cond_30
    if-eqz p1, :cond_31

    .line 636
    .line 637
    const/16 v1, 0x5d

    .line 638
    .line 639
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 640
    .line 641
    .line 642
    :cond_31
    return-object v4

    .line 643
    :cond_32
    if-ne v1, v10, :cond_38

    .line 644
    .line 645
    new-instance v6, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    .line 649
    .line 650
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 651
    .line 652
    .line 653
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 654
    .line 655
    if-ne v1, v10, :cond_36

    .line 656
    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 658
    .line 659
    .line 660
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 661
    .line 662
    const/16 v4, 0x69

    .line 663
    .line 664
    if-ne v1, v4, :cond_33

    .line 665
    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 667
    .line 668
    .line 669
    const/4 v4, 0x2

    .line 670
    goto :goto_15

    .line 671
    :cond_33
    const/4 v4, 0x0

    .line 672
    :goto_15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;

    .line 681
    .line 682
    invoke-direct {v4, v3, v12, v1, v15}, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;-><init>(Ljava/lang/String;ZLjava/util/regex/Pattern;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 683
    .line 684
    .line 685
    if-eqz v2, :cond_34

    .line 686
    .line 687
    const/16 v1, 0x29

    .line 688
    .line 689
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 690
    .line 691
    .line 692
    :cond_34
    if-eqz p1, :cond_35

    .line 693
    .line 694
    const/16 v1, 0x5d

    .line 695
    .line 696
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 697
    .line 698
    .line 699
    :cond_35
    return-object v4

    .line 700
    :cond_36
    if-ne v1, v13, :cond_37

    .line 701
    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 703
    .line 704
    .line 705
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 706
    .line 707
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    goto :goto_14

    .line 711
    :cond_37
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    goto :goto_14

    .line 715
    :cond_38
    const/16 v6, 0x6e

    .line 716
    .line 717
    if-ne v1, v6, :cond_40

    .line 718
    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    const-string v5, "null"

    .line 724
    .line 725
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v1

    .line 729
    if-eqz v1, :cond_50

    .line 730
    .line 731
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 732
    .line 733
    if-ne v15, v1, :cond_39

    .line 734
    .line 735
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    .line 736
    .line 737
    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;Z)V

    .line 738
    .line 739
    .line 740
    goto :goto_16

    .line 741
    :cond_39
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 742
    .line 743
    if-ne v15, v1, :cond_3a

    .line 744
    .line 745
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    .line 746
    .line 747
    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;Z)V

    .line 748
    .line 749
    .line 750
    goto :goto_16

    .line 751
    :cond_3a
    move-object/from16 v1, v16

    .line 752
    .line 753
    :goto_16
    if-eqz v1, :cond_3d

    .line 754
    .line 755
    :goto_17
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 756
    .line 757
    if-ne v3, v14, :cond_3b

    .line 758
    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 760
    .line 761
    .line 762
    goto :goto_17

    .line 763
    :cond_3b
    if-eq v3, v8, :cond_3c

    .line 764
    .line 765
    if-ne v3, v4, :cond_3d

    .line 766
    .line 767
    :cond_3c
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    :cond_3d
    if-eqz v2, :cond_3e

    .line 772
    .line 773
    const/16 v2, 0x29

    .line 774
    .line 775
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 776
    .line 777
    .line 778
    :cond_3e
    const/16 v2, 0x5d

    .line 779
    .line 780
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 781
    .line 782
    .line 783
    if-eqz v1, :cond_3f

    .line 784
    .line 785
    return-object v1

    .line 786
    :cond_3f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 787
    .line 788
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 789
    .line 790
    .line 791
    throw v1

    .line 792
    :cond_40
    const/16 v6, 0x74

    .line 793
    .line 794
    if-ne v1, v6, :cond_48

    .line 795
    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    const-string v6, "true"

    .line 801
    .line 802
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    move-result v1

    .line 806
    if-eqz v1, :cond_50

    .line 807
    .line 808
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 809
    .line 810
    if-ne v15, v1, :cond_41

    .line 811
    .line 812
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    .line 813
    .line 814
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 815
    .line 816
    invoke-direct {v1, v3, v12, v6, v5}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    .line 817
    .line 818
    .line 819
    goto :goto_18

    .line 820
    :cond_41
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 821
    .line 822
    if-ne v15, v1, :cond_42

    .line 823
    .line 824
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    .line 825
    .line 826
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 827
    .line 828
    const/4 v6, 0x0

    .line 829
    invoke-direct {v1, v3, v12, v5, v6}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    .line 830
    .line 831
    .line 832
    goto :goto_18

    .line 833
    :cond_42
    move-object/from16 v1, v16

    .line 834
    .line 835
    :goto_18
    if-eqz v1, :cond_45

    .line 836
    .line 837
    :goto_19
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 838
    .line 839
    if-ne v3, v14, :cond_43

    .line 840
    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 842
    .line 843
    .line 844
    goto :goto_19

    .line 845
    :cond_43
    if-eq v3, v8, :cond_44

    .line 846
    .line 847
    if-ne v3, v4, :cond_45

    .line 848
    .line 849
    :cond_44
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    :cond_45
    if-eqz v2, :cond_46

    .line 854
    .line 855
    const/16 v2, 0x29

    .line 856
    .line 857
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 858
    .line 859
    .line 860
    :cond_46
    const/16 v2, 0x5d

    .line 861
    .line 862
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 863
    .line 864
    .line 865
    if-eqz v1, :cond_47

    .line 866
    .line 867
    return-object v1

    .line 868
    :cond_47
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 869
    .line 870
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 871
    .line 872
    .line 873
    throw v1

    .line 874
    :cond_48
    const/16 v6, 0x66

    .line 875
    .line 876
    if-ne v1, v6, :cond_50

    .line 877
    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    const-string v6, "false"

    .line 883
    .line 884
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    move-result v1

    .line 888
    if-eqz v1, :cond_50

    .line 889
    .line 890
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 891
    .line 892
    if-ne v15, v1, :cond_49

    .line 893
    .line 894
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    .line 895
    .line 896
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 897
    .line 898
    invoke-direct {v1, v3, v12, v6, v5}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    .line 899
    .line 900
    .line 901
    goto :goto_1a

    .line 902
    :cond_49
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 903
    .line 904
    if-ne v15, v1, :cond_4a

    .line 905
    .line 906
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    .line 907
    .line 908
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 909
    .line 910
    const/4 v6, 0x0

    .line 911
    invoke-direct {v1, v3, v12, v5, v6}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    .line 912
    .line 913
    .line 914
    goto :goto_1a

    .line 915
    :cond_4a
    move-object/from16 v1, v16

    .line 916
    .line 917
    :goto_1a
    if-eqz v1, :cond_4d

    .line 918
    .line 919
    :goto_1b
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 920
    .line 921
    if-ne v3, v14, :cond_4b

    .line 922
    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 924
    .line 925
    .line 926
    goto :goto_1b

    .line 927
    :cond_4b
    if-eq v3, v8, :cond_4c

    .line 928
    .line 929
    if-ne v3, v4, :cond_4d

    .line 930
    .line 931
    :cond_4c
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 932
    .line 933
    .line 934
    move-result-object v1

    .line 935
    :cond_4d
    if-eqz v2, :cond_4e

    .line 936
    .line 937
    const/16 v2, 0x29

    .line 938
    .line 939
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 940
    .line 941
    .line 942
    :cond_4e
    const/16 v2, 0x5d

    .line 943
    .line 944
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 945
    .line 946
    .line 947
    if-eqz v1, :cond_4f

    .line 948
    .line 949
    return-object v1

    .line 950
    :cond_4f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 951
    .line 952
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 953
    .line 954
    .line 955
    throw v1

    .line 956
    :cond_50
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 957
    .line 958
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 959
    .line 960
    .line 961
    throw v1

    .line 962
    :cond_51
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 967
    .line 968
    if-ne v15, v6, :cond_52

    .line 969
    .line 970
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    .line 971
    .line 972
    const/4 v6, 0x0

    .line 973
    invoke-direct {v5, v3, v12, v1, v6}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 974
    .line 975
    .line 976
    goto/16 :goto_24

    .line 977
    .line 978
    :cond_52
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 979
    .line 980
    if-ne v15, v6, :cond_53

    .line 981
    .line 982
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    .line 983
    .line 984
    invoke-direct {v6, v3, v12, v1, v5}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 985
    .line 986
    .line 987
    :goto_1d
    move-object v5, v6

    .line 988
    goto/16 :goto_24

    .line 989
    .line 990
    :cond_53
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 991
    .line 992
    if-eq v15, v6, :cond_55

    .line 993
    .line 994
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 995
    .line 996
    if-ne v15, v6, :cond_54

    .line 997
    .line 998
    goto :goto_1e

    .line 999
    :cond_54
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    .line 1000
    .line 1001
    invoke-direct {v5, v3, v12, v1, v15}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1002
    .line 1003
    .line 1004
    goto/16 :goto_24

    .line 1005
    .line 1006
    :cond_55
    :goto_1e
    const-string v6, "%%"

    .line 1007
    .line 1008
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1009
    .line 1010
    .line 1011
    move-result v7

    .line 1012
    const-string v9, "%"

    .line 1013
    .line 1014
    const/4 v10, -0x1

    .line 1015
    if-eq v7, v10, :cond_56

    .line 1016
    .line 1017
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v1

    .line 1021
    goto :goto_1e

    .line 1022
    :cond_56
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1023
    .line 1024
    if-ne v15, v6, :cond_57

    .line 1025
    .line 1026
    const/16 v24, 0x1

    .line 1027
    .line 1028
    goto :goto_1f

    .line 1029
    :cond_57
    const/16 v24, 0x0

    .line 1030
    .line 1031
    :goto_1f
    const/16 v6, 0x25

    .line 1032
    .line 1033
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    .line 1034
    .line 1035
    .line 1036
    move-result v7

    .line 1037
    if-ne v7, v10, :cond_59

    .line 1038
    .line 1039
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1040
    .line 1041
    if-ne v15, v5, :cond_58

    .line 1042
    .line 1043
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1044
    .line 1045
    goto :goto_20

    .line 1046
    :cond_58
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1047
    .line 1048
    :goto_20
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    .line 1049
    .line 1050
    invoke-direct {v6, v3, v12, v1, v5}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1051
    .line 1052
    .line 1053
    goto :goto_1d

    .line 1054
    :cond_59
    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v9

    .line 1058
    if-nez v7, :cond_5c

    .line 1059
    .line 1060
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1061
    .line 1062
    .line 1063
    move-result v7

    .line 1064
    sub-int/2addr v7, v5

    .line 1065
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 1066
    .line 1067
    .line 1068
    move-result v1

    .line 1069
    if-ne v1, v6, :cond_5a

    .line 1070
    .line 1071
    array-length v1, v9

    .line 1072
    sub-int/2addr v1, v5

    .line 1073
    new-array v6, v1, [Ljava/lang/String;

    .line 1074
    .line 1075
    const/4 v7, 0x0

    .line 1076
    invoke-static {v9, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1077
    .line 1078
    .line 1079
    move-object/from16 v23, v6

    .line 1080
    .line 1081
    :goto_21
    move-object/from16 v21, v16

    .line 1082
    .line 1083
    move-object/from16 v22, v21

    .line 1084
    .line 1085
    goto/16 :goto_23

    .line 1086
    .line 1087
    :cond_5a
    const/4 v7, 0x0

    .line 1088
    array-length v1, v9

    .line 1089
    sub-int/2addr v1, v5

    .line 1090
    aget-object v1, v9, v1

    .line 1091
    .line 1092
    array-length v6, v9

    .line 1093
    const/4 v10, 0x2

    .line 1094
    if-le v6, v10, :cond_5b

    .line 1095
    .line 1096
    array-length v6, v9

    .line 1097
    sub-int/2addr v6, v10

    .line 1098
    new-array v10, v6, [Ljava/lang/String;

    .line 1099
    .line 1100
    invoke-static {v9, v5, v10, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1101
    .line 1102
    .line 1103
    move-object/from16 v22, v1

    .line 1104
    .line 1105
    move-object/from16 v23, v10

    .line 1106
    .line 1107
    move-object/from16 v21, v16

    .line 1108
    .line 1109
    goto :goto_23

    .line 1110
    :cond_5b
    move-object/from16 v22, v1

    .line 1111
    .line 1112
    move-object/from16 v21, v16

    .line 1113
    .line 1114
    move-object/from16 v23, v21

    .line 1115
    .line 1116
    goto :goto_23

    .line 1117
    :cond_5c
    const/4 v7, 0x0

    .line 1118
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1119
    .line 1120
    .line 1121
    move-result v10

    .line 1122
    sub-int/2addr v10, v5

    .line 1123
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 1124
    .line 1125
    .line 1126
    move-result v1

    .line 1127
    if-ne v1, v6, :cond_5e

    .line 1128
    .line 1129
    array-length v1, v9

    .line 1130
    if-ne v1, v5, :cond_5d

    .line 1131
    .line 1132
    aget-object v1, v9, v7

    .line 1133
    .line 1134
    :goto_22
    move-object/from16 v21, v1

    .line 1135
    .line 1136
    move-object/from16 v22, v16

    .line 1137
    .line 1138
    move-object/from16 v23, v22

    .line 1139
    .line 1140
    goto :goto_23

    .line 1141
    :cond_5d
    move-object/from16 v23, v9

    .line 1142
    .line 1143
    goto :goto_21

    .line 1144
    :cond_5e
    array-length v1, v9

    .line 1145
    if-ne v1, v5, :cond_5f

    .line 1146
    .line 1147
    aget-object v1, v9, v7

    .line 1148
    .line 1149
    goto :goto_22

    .line 1150
    :cond_5f
    array-length v1, v9

    .line 1151
    const/4 v6, 0x2

    .line 1152
    if-ne v1, v6, :cond_60

    .line 1153
    .line 1154
    aget-object v1, v9, v7

    .line 1155
    .line 1156
    aget-object v5, v9, v5

    .line 1157
    .line 1158
    move-object/from16 v21, v1

    .line 1159
    .line 1160
    move-object/from16 v22, v5

    .line 1161
    .line 1162
    move-object/from16 v23, v16

    .line 1163
    .line 1164
    goto :goto_23

    .line 1165
    :cond_60
    aget-object v1, v9, v7

    .line 1166
    .line 1167
    array-length v10, v9

    .line 1168
    sub-int/2addr v10, v5

    .line 1169
    aget-object v10, v9, v10

    .line 1170
    .line 1171
    array-length v11, v9

    .line 1172
    sub-int/2addr v11, v6

    .line 1173
    new-array v6, v11, [Ljava/lang/String;

    .line 1174
    .line 1175
    invoke-static {v9, v5, v6, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1176
    .line 1177
    .line 1178
    move-object/from16 v21, v1

    .line 1179
    .line 1180
    move-object/from16 v23, v6

    .line 1181
    .line 1182
    move-object/from16 v22, v10

    .line 1183
    .line 1184
    :goto_23
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$MatchSegement;

    .line 1185
    .line 1186
    move-object/from16 v18, v1

    .line 1187
    .line 1188
    move-object/from16 v19, v3

    .line 1189
    .line 1190
    move/from16 v20, v12

    .line 1191
    .line 1192
    invoke-direct/range {v18 .. v24}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1193
    .line 1194
    .line 1195
    move-object v5, v1

    .line 1196
    :goto_24
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1197
    .line 1198
    if-ne v1, v14, :cond_61

    .line 1199
    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1201
    .line 1202
    .line 1203
    goto :goto_24

    .line 1204
    :cond_61
    if-eq v1, v8, :cond_62

    .line 1205
    .line 1206
    if-ne v1, v4, :cond_63

    .line 1207
    .line 1208
    :cond_62
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v5

    .line 1212
    :cond_63
    if-eqz v2, :cond_64

    .line 1213
    .line 1214
    const/16 v1, 0x29

    .line 1215
    .line 1216
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1217
    .line 1218
    .line 1219
    :cond_64
    if-eqz p1, :cond_65

    .line 1220
    .line 1221
    const/16 v1, 0x5d

    .line 1222
    .line 1223
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1224
    .line 1225
    .line 1226
    :cond_65
    return-object v5

    .line 1227
    :cond_66
    :goto_25
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1228
    .line 1229
    if-ne v15, v1, :cond_67

    .line 1230
    .line 1231
    const/4 v1, 0x1

    .line 1232
    :goto_26
    const/16 v6, 0x28

    .line 1233
    .line 1234
    goto :goto_27

    .line 1235
    :cond_67
    const/4 v1, 0x0

    .line 1236
    goto :goto_26

    .line 1237
    :goto_27
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1238
    .line 1239
    .line 1240
    new-instance v6, Lcom/alibaba/fastjson/JSONArray;

    .line 1241
    .line 1242
    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v7

    .line 1249
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    .line 1251
    .line 1252
    :goto_28
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1253
    .line 1254
    .line 1255
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1256
    .line 1257
    const/16 v9, 0x2c

    .line 1258
    .line 1259
    if-eq v7, v9, :cond_96

    .line 1260
    .line 1261
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v7

    .line 1265
    const/4 v9, 0x1

    .line 1266
    const/4 v10, 0x1

    .line 1267
    const/4 v11, 0x1

    .line 1268
    :cond_68
    :goto_29
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1269
    .line 1270
    .line 1271
    move-result v13

    .line 1272
    if-eqz v13, :cond_6b

    .line 1273
    .line 1274
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v13

    .line 1278
    if-nez v13, :cond_69

    .line 1279
    .line 1280
    if-eqz v9, :cond_68

    .line 1281
    .line 1282
    const/4 v9, 0x0

    .line 1283
    goto :goto_29

    .line 1284
    :cond_69
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v13

    .line 1288
    if-eqz v9, :cond_6a

    .line 1289
    .line 1290
    const-class v15, Ljava/lang/Byte;

    .line 1291
    .line 1292
    if-eq v13, v15, :cond_6a

    .line 1293
    .line 1294
    const-class v15, Ljava/lang/Short;

    .line 1295
    .line 1296
    if-eq v13, v15, :cond_6a

    .line 1297
    .line 1298
    const-class v15, Ljava/lang/Integer;

    .line 1299
    .line 1300
    if-eq v13, v15, :cond_6a

    .line 1301
    .line 1302
    const-class v15, Ljava/lang/Long;

    .line 1303
    .line 1304
    if-eq v13, v15, :cond_6a

    .line 1305
    .line 1306
    const/4 v9, 0x0

    .line 1307
    const/4 v11, 0x0

    .line 1308
    :cond_6a
    if-eqz v10, :cond_68

    .line 1309
    .line 1310
    const-class v15, Ljava/lang/String;

    .line 1311
    .line 1312
    if-eq v13, v15, :cond_68

    .line 1313
    .line 1314
    const/4 v10, 0x0

    .line 1315
    goto :goto_29

    .line 1316
    :cond_6b
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1317
    .line 1318
    .line 1319
    move-result v7

    .line 1320
    if-ne v7, v5, :cond_72

    .line 1321
    .line 1322
    const/4 v7, 0x0

    .line 1323
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v13

    .line 1327
    if-nez v13, :cond_72

    .line 1328
    .line 1329
    if-eqz v1, :cond_6c

    .line 1330
    .line 1331
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    .line 1332
    .line 1333
    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;Z)V

    .line 1334
    .line 1335
    .line 1336
    goto :goto_2a

    .line 1337
    :cond_6c
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    .line 1338
    .line 1339
    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;Z)V

    .line 1340
    .line 1341
    .line 1342
    :goto_2a
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1343
    .line 1344
    if-ne v3, v14, :cond_6d

    .line 1345
    .line 1346
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1347
    .line 1348
    .line 1349
    goto :goto_2a

    .line 1350
    :cond_6d
    if-eq v3, v8, :cond_6f

    .line 1351
    .line 1352
    if-ne v3, v4, :cond_6e

    .line 1353
    .line 1354
    goto :goto_2c

    .line 1355
    :cond_6e
    :goto_2b
    const/16 v3, 0x29

    .line 1356
    .line 1357
    goto :goto_2d

    .line 1358
    :cond_6f
    :goto_2c
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v1

    .line 1362
    goto :goto_2b

    .line 1363
    :goto_2d
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1364
    .line 1365
    .line 1366
    if-eqz v2, :cond_70

    .line 1367
    .line 1368
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1369
    .line 1370
    .line 1371
    :cond_70
    if-eqz p1, :cond_71

    .line 1372
    .line 1373
    const/16 v2, 0x5d

    .line 1374
    .line 1375
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1376
    .line 1377
    .line 1378
    :cond_71
    return-object v1

    .line 1379
    :cond_72
    if-eqz v9, :cond_80

    .line 1380
    .line 1381
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1382
    .line 1383
    .line 1384
    move-result v7

    .line 1385
    if-ne v7, v5, :cond_79

    .line 1386
    .line 1387
    const/4 v5, 0x0

    .line 1388
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v5

    .line 1392
    check-cast v5, Ljava/lang/Number;

    .line 1393
    .line 1394
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    .line 1395
    .line 1396
    .line 1397
    move-result-wide v21

    .line 1398
    if-eqz v1, :cond_73

    .line 1399
    .line 1400
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1401
    .line 1402
    :goto_2e
    move-object/from16 v23, v1

    .line 1403
    .line 1404
    goto :goto_2f

    .line 1405
    :cond_73
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1406
    .line 1407
    goto :goto_2e

    .line 1408
    :goto_2f
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    .line 1409
    .line 1410
    move-object/from16 v18, v1

    .line 1411
    .line 1412
    move-object/from16 v19, v3

    .line 1413
    .line 1414
    move/from16 v20, v12

    .line 1415
    .line 1416
    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1417
    .line 1418
    .line 1419
    :goto_30
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1420
    .line 1421
    if-ne v3, v14, :cond_74

    .line 1422
    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1424
    .line 1425
    .line 1426
    goto :goto_30

    .line 1427
    :cond_74
    if-eq v3, v8, :cond_76

    .line 1428
    .line 1429
    if-ne v3, v4, :cond_75

    .line 1430
    .line 1431
    goto :goto_32

    .line 1432
    :cond_75
    :goto_31
    const/16 v3, 0x29

    .line 1433
    .line 1434
    goto :goto_33

    .line 1435
    :cond_76
    :goto_32
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v1

    .line 1439
    goto :goto_31

    .line 1440
    :goto_33
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1441
    .line 1442
    .line 1443
    if-eqz v2, :cond_77

    .line 1444
    .line 1445
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1446
    .line 1447
    .line 1448
    :cond_77
    if-eqz p1, :cond_78

    .line 1449
    .line 1450
    const/16 v2, 0x5d

    .line 1451
    .line 1452
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1453
    .line 1454
    .line 1455
    :cond_78
    return-object v1

    .line 1456
    :cond_79
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1457
    .line 1458
    .line 1459
    move-result v5

    .line 1460
    new-array v7, v5, [J

    .line 1461
    .line 1462
    const/4 v9, 0x0

    .line 1463
    :goto_34
    if-ge v9, v5, :cond_7a

    .line 1464
    .line 1465
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v10

    .line 1469
    check-cast v10, Ljava/lang/Number;

    .line 1470
    .line 1471
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    .line 1472
    .line 1473
    .line 1474
    move-result-wide v10

    .line 1475
    aput-wide v10, v7, v9

    .line 1476
    .line 1477
    add-int/lit8 v9, v9, 0x1

    .line 1478
    .line 1479
    goto :goto_34

    .line 1480
    :cond_7a
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$IntInSegement;

    .line 1481
    .line 1482
    invoke-direct {v5, v3, v12, v7, v1}, Lcom/alibaba/fastjson/JSONPath$IntInSegement;-><init>(Ljava/lang/String;Z[JZ)V

    .line 1483
    .line 1484
    .line 1485
    :goto_35
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1486
    .line 1487
    if-ne v1, v14, :cond_7b

    .line 1488
    .line 1489
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1490
    .line 1491
    .line 1492
    goto :goto_35

    .line 1493
    :cond_7b
    if-eq v1, v8, :cond_7d

    .line 1494
    .line 1495
    if-ne v1, v4, :cond_7c

    .line 1496
    .line 1497
    goto :goto_37

    .line 1498
    :cond_7c
    :goto_36
    const/16 v1, 0x29

    .line 1499
    .line 1500
    goto :goto_38

    .line 1501
    :cond_7d
    :goto_37
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v5

    .line 1505
    goto :goto_36

    .line 1506
    :goto_38
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1507
    .line 1508
    .line 1509
    if-eqz v2, :cond_7e

    .line 1510
    .line 1511
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1512
    .line 1513
    .line 1514
    :cond_7e
    if-eqz p1, :cond_7f

    .line 1515
    .line 1516
    const/16 v1, 0x5d

    .line 1517
    .line 1518
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1519
    .line 1520
    .line 1521
    :cond_7f
    return-object v5

    .line 1522
    :cond_80
    if-eqz v10, :cond_8d

    .line 1523
    .line 1524
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1525
    .line 1526
    .line 1527
    move-result v7

    .line 1528
    if-ne v7, v5, :cond_87

    .line 1529
    .line 1530
    const/4 v7, 0x0

    .line 1531
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v5

    .line 1535
    check-cast v5, Ljava/lang/String;

    .line 1536
    .line 1537
    if-eqz v1, :cond_81

    .line 1538
    .line 1539
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1540
    .line 1541
    goto :goto_39

    .line 1542
    :cond_81
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1543
    .line 1544
    :goto_39
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    .line 1545
    .line 1546
    invoke-direct {v6, v3, v12, v5, v1}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1547
    .line 1548
    .line 1549
    :goto_3a
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1550
    .line 1551
    if-ne v1, v14, :cond_82

    .line 1552
    .line 1553
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1554
    .line 1555
    .line 1556
    goto :goto_3a

    .line 1557
    :cond_82
    if-eq v1, v8, :cond_84

    .line 1558
    .line 1559
    if-ne v1, v4, :cond_83

    .line 1560
    .line 1561
    goto :goto_3c

    .line 1562
    :cond_83
    :goto_3b
    const/16 v1, 0x29

    .line 1563
    .line 1564
    goto :goto_3d

    .line 1565
    :cond_84
    :goto_3c
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v6

    .line 1569
    goto :goto_3b

    .line 1570
    :goto_3d
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1571
    .line 1572
    .line 1573
    if-eqz v2, :cond_85

    .line 1574
    .line 1575
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1576
    .line 1577
    .line 1578
    :cond_85
    if-eqz p1, :cond_86

    .line 1579
    .line 1580
    const/16 v1, 0x5d

    .line 1581
    .line 1582
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1583
    .line 1584
    .line 1585
    :cond_86
    return-object v6

    .line 1586
    :cond_87
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1587
    .line 1588
    .line 1589
    move-result v5

    .line 1590
    new-array v5, v5, [Ljava/lang/String;

    .line 1591
    .line 1592
    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1593
    .line 1594
    .line 1595
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$StringInSegement;

    .line 1596
    .line 1597
    invoke-direct {v6, v3, v12, v5, v1}, Lcom/alibaba/fastjson/JSONPath$StringInSegement;-><init>(Ljava/lang/String;Z[Ljava/lang/String;Z)V

    .line 1598
    .line 1599
    .line 1600
    :goto_3e
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1601
    .line 1602
    if-ne v1, v14, :cond_88

    .line 1603
    .line 1604
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1605
    .line 1606
    .line 1607
    goto :goto_3e

    .line 1608
    :cond_88
    if-eq v1, v8, :cond_8a

    .line 1609
    .line 1610
    if-ne v1, v4, :cond_89

    .line 1611
    .line 1612
    goto :goto_40

    .line 1613
    :cond_89
    :goto_3f
    const/16 v1, 0x29

    .line 1614
    .line 1615
    goto :goto_41

    .line 1616
    :cond_8a
    :goto_40
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v6

    .line 1620
    goto :goto_3f

    .line 1621
    :goto_41
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1622
    .line 1623
    .line 1624
    if-eqz v2, :cond_8b

    .line 1625
    .line 1626
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1627
    .line 1628
    .line 1629
    :cond_8b
    if-eqz p1, :cond_8c

    .line 1630
    .line 1631
    const/16 v1, 0x5d

    .line 1632
    .line 1633
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1634
    .line 1635
    .line 1636
    :cond_8c
    return-object v6

    .line 1637
    :cond_8d
    const/4 v7, 0x0

    .line 1638
    if-eqz v11, :cond_95

    .line 1639
    .line 1640
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1641
    .line 1642
    .line 1643
    move-result v5

    .line 1644
    new-array v9, v5, [Ljava/lang/Long;

    .line 1645
    .line 1646
    :goto_42
    if-ge v7, v5, :cond_8f

    .line 1647
    .line 1648
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v10

    .line 1652
    check-cast v10, Ljava/lang/Number;

    .line 1653
    .line 1654
    if-eqz v10, :cond_8e

    .line 1655
    .line 1656
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    .line 1657
    .line 1658
    .line 1659
    move-result-wide v10

    .line 1660
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v10

    .line 1664
    aput-object v10, v9, v7

    .line 1665
    .line 1666
    :cond_8e
    add-int/lit8 v7, v7, 0x1

    .line 1667
    .line 1668
    goto :goto_42

    .line 1669
    :cond_8f
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;

    .line 1670
    .line 1671
    invoke-direct {v5, v3, v12, v9, v1}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;-><init>(Ljava/lang/String;Z[Ljava/lang/Long;Z)V

    .line 1672
    .line 1673
    .line 1674
    :goto_43
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1675
    .line 1676
    if-ne v1, v14, :cond_90

    .line 1677
    .line 1678
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1679
    .line 1680
    .line 1681
    goto :goto_43

    .line 1682
    :cond_90
    if-eq v1, v8, :cond_92

    .line 1683
    .line 1684
    if-ne v1, v4, :cond_91

    .line 1685
    .line 1686
    goto :goto_45

    .line 1687
    :cond_91
    :goto_44
    const/16 v9, 0x29

    .line 1688
    .line 1689
    goto :goto_46

    .line 1690
    :cond_92
    :goto_45
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v5

    .line 1694
    goto :goto_44

    .line 1695
    :goto_46
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1696
    .line 1697
    .line 1698
    if-eqz v2, :cond_93

    .line 1699
    .line 1700
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1701
    .line 1702
    .line 1703
    :cond_93
    if-eqz p1, :cond_94

    .line 1704
    .line 1705
    const/16 v10, 0x5d

    .line 1706
    .line 1707
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1708
    .line 1709
    .line 1710
    :cond_94
    return-object v5

    .line 1711
    :cond_95
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 1712
    .line 1713
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 1714
    .line 1715
    .line 1716
    throw v1

    .line 1717
    :cond_96
    const/4 v7, 0x0

    .line 1718
    const/16 v9, 0x29

    .line 1719
    .line 1720
    const/16 v10, 0x5d

    .line 1721
    .line 1722
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v11

    .line 1729
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1730
    .line 1731
    .line 1732
    goto/16 :goto_28

    .line 1733
    .line 1734
    :goto_47
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1735
    .line 1736
    if-ne v15, v1, :cond_97

    .line 1737
    .line 1738
    const/16 v25, 0x1

    .line 1739
    .line 1740
    goto :goto_48

    .line 1741
    :cond_97
    const/16 v25, 0x0

    .line 1742
    .line 1743
    :goto_48
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v1

    .line 1747
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v2

    .line 1751
    const-string v4, "and"

    .line 1752
    .line 1753
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1754
    .line 1755
    .line 1756
    move-result v2

    .line 1757
    if-eqz v2, :cond_9a

    .line 1758
    .line 1759
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v2

    .line 1763
    if-eqz v1, :cond_99

    .line 1764
    .line 1765
    if-eqz v2, :cond_99

    .line 1766
    .line 1767
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v4

    .line 1771
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    .line 1772
    .line 1773
    .line 1774
    move-result v4

    .line 1775
    if-eqz v4, :cond_98

    .line 1776
    .line 1777
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v4

    .line 1781
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    .line 1782
    .line 1783
    .line 1784
    move-result v4

    .line 1785
    if-eqz v4, :cond_98

    .line 1786
    .line 1787
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;

    .line 1788
    .line 1789
    check-cast v1, Ljava/lang/Number;

    .line 1790
    .line 1791
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    .line 1792
    .line 1793
    .line 1794
    move-result-wide v21

    .line 1795
    check-cast v2, Ljava/lang/Number;

    .line 1796
    .line 1797
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    .line 1798
    .line 1799
    .line 1800
    move-result-wide v23

    .line 1801
    move-object/from16 v18, v4

    .line 1802
    .line 1803
    move-object/from16 v19, v3

    .line 1804
    .line 1805
    move/from16 v20, v12

    .line 1806
    .line 1807
    invoke-direct/range {v18 .. v25}, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;-><init>(Ljava/lang/String;ZJJZ)V

    .line 1808
    .line 1809
    .line 1810
    return-object v4

    .line 1811
    :cond_98
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    .line 1812
    .line 1813
    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 1814
    .line 1815
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 1816
    .line 1817
    .line 1818
    throw v1

    .line 1819
    :cond_99
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    .line 1820
    .line 1821
    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 1822
    .line 1823
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 1824
    .line 1825
    .line 1826
    throw v1

    .line 1827
    :cond_9a
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    .line 1828
    .line 1829
    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 1830
    .line 1831
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 1832
    .line 1833
    .line 1834
    throw v1
.end method

.method public readDoubleValue(J)D
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 6
    .line 7
    .line 8
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 9
    .line 10
    const/16 v2, 0x30

    .line 11
    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    const/16 v2, 0x39

    .line 15
    .line 16
    if-gt v1, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    long-to-double p1, p1

    .line 37
    add-double/2addr v0, p1

    .line 38
    return-wide v0
.end method

.method public readLongValue()J
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 6
    .line 7
    const/16 v2, 0x2b

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    const/16 v2, 0x2d

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 19
    .line 20
    const/16 v2, 0x30

    .line 21
    .line 22
    if-lt v1, v2, :cond_2

    .line 23
    .line 24
    const/16 v2, 0x39

    .line 25
    .line 26
    if-gt v1, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    return-wide v0
.end method

.method public readName()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 2
    .line 3
    .line 4
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 5
    .line 6
    const/16 v1, 0x5c

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "illeal jsonpath syntax. "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_5

    .line 49
    .line 50
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 51
    .line 52
    if-ne v2, v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 55
    .line 56
    .line 57
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method

.method public readOp()Lcom/alibaba/fastjson/JSONPath$Operator;
    .locals 6

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 2
    .line 3
    const/16 v1, 0x3d

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 8
    .line 9
    .line 10
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 11
    .line 12
    const/16 v2, 0x7e

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->REG_MATCH:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/16 v2, 0x21

    .line 34
    .line 35
    if-ne v0, v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/16 v2, 0x3c

    .line 47
    .line 48
    if-ne v0, v2, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 51
    .line 52
    .line 53
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 54
    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    const/16 v2, 0x3e

    .line 67
    .line 68
    if-ne v0, v2, :cond_7

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 71
    .line 72
    .line 73
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 74
    .line 75
    if-ne v0, v1, :cond_6

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_7
    const/4 v0, 0x0

    .line 87
    :goto_0
    if-nez v0, :cond_12

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "not"

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const-string v2, "between"

    .line 100
    .line 101
    const-string v3, "in"

    .line 102
    .line 103
    const-string v4, "rlike"

    .line 104
    .line 105
    const-string v5, "like"

    .line 106
    .line 107
    if-eqz v1, :cond_c

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_8

    .line 121
    .line 122
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_9

    .line 130
    .line 131
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_a

    .line 139
    .line 140
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_b

    .line 148
    .line 149
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_c
    const-string v1, "nin"

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_d

    .line 165
    .line 166
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_d
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_e

    .line 174
    .line 175
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_e
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_f

    .line 183
    .line 184
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_f
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_10

    .line 192
    .line 193
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_11

    .line 201
    .line 202
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :cond_12
    :goto_1
    return-object v0
.end method

.method public readSegement()Lcom/alibaba/fastjson/JSONPath$Segment;
    .locals 9

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, v1, :cond_3

    .line 14
    .line 15
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 16
    .line 17
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x30

    .line 26
    .line 27
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;-><init>(I)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 34
    .line 35
    const/16 v3, 0x61

    .line 36
    .line 37
    if-lt v0, v3, :cond_1

    .line 38
    .line 39
    const/16 v3, 0x7a

    .line 40
    .line 41
    if-le v0, v3, :cond_2

    .line 42
    .line 43
    :cond_1
    const/16 v3, 0x41

    .line 44
    .line 45
    if-lt v0, v3, :cond_3

    .line 46
    .line 47
    const/16 v3, 0x5a

    .line 48
    .line 49
    if-gt v0, v3, :cond_3

    .line 50
    .line 51
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1d

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 68
    .line 69
    .line 70
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 71
    .line 72
    const/16 v3, 0x24

    .line 73
    .line 74
    const/16 v4, 0x3f

    .line 75
    .line 76
    if-ne v0, v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 82
    .line 83
    .line 84
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 85
    .line 86
    if-ne v0, v4, :cond_3

    .line 87
    .line 88
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 95
    .line 96
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    .line 97
    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_4
    const-string v3, "not support jsonpath : "

    .line 101
    .line 102
    const/16 v5, 0x5b

    .line 103
    .line 104
    const/16 v6, 0x2e

    .line 105
    .line 106
    if-eq v0, v6, :cond_9

    .line 107
    .line 108
    const/16 v7, 0x2f

    .line 109
    .line 110
    if-ne v0, v7, :cond_5

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    if-ne v0, v5, :cond_6

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0

    .line 120
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    .line 121
    .line 122
    if-nez v1, :cond_7

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 129
    .line 130
    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_7
    if-ne v0, v4, :cond_8

    .line 135
    .line 136
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 137
    .line 138
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 143
    .line 144
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 149
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 169
    .line 170
    .line 171
    const/16 v4, 0x2a

    .line 172
    .line 173
    if-ne v0, v6, :cond_b

    .line 174
    .line 175
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 176
    .line 177
    if-ne v0, v6, :cond_b

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 189
    .line 190
    add-int/lit8 v8, v7, 0x3

    .line 191
    .line 192
    if-le v0, v8, :cond_a

    .line 193
    .line 194
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 195
    .line 196
    if-ne v0, v5, :cond_a

    .line 197
    .line 198
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-ne v0, v4, :cond_a

    .line 205
    .line 206
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 207
    .line 208
    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 209
    .line 210
    add-int/2addr v7, v1

    .line 211
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    const/16 v7, 0x5d

    .line 216
    .line 217
    if-ne v0, v7, :cond_a

    .line 218
    .line 219
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 220
    .line 221
    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 222
    .line 223
    add-int/lit8 v7, v7, 0x2

    .line 224
    .line 225
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-ne v0, v6, :cond_a

    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 241
    .line 242
    .line 243
    :cond_a
    const/4 v0, 0x1

    .line 244
    goto :goto_1

    .line 245
    :cond_b
    const/4 v0, 0x0

    .line 246
    :goto_1
    iget-char v6, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 247
    .line 248
    if-eq v6, v4, :cond_18

    .line 249
    .line 250
    if-eqz v0, :cond_c

    .line 251
    .line 252
    if-ne v6, v5, :cond_c

    .line 253
    .line 254
    goto/16 :goto_3

    .line 255
    .line 256
    :cond_c
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_d

    .line 261
    .line 262
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    return-object v0

    .line 267
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 272
    .line 273
    const/16 v4, 0x28

    .line 274
    .line 275
    if-ne v2, v4, :cond_17

    .line 276
    .line 277
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 278
    .line 279
    .line 280
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 281
    .line 282
    const/16 v2, 0x29

    .line 283
    .line 284
    if-ne v0, v2, :cond_16

    .line 285
    .line 286
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-nez v0, :cond_e

    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 293
    .line 294
    .line 295
    :cond_e
    const-string v0, "size"

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-nez v0, :cond_15

    .line 302
    .line 303
    const-string v0, "length"

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-eqz v0, :cond_f

    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_f
    const-string v0, "max"

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_10

    .line 319
    .line 320
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$MaxSegment;->instance:Lcom/alibaba/fastjson/JSONPath$MaxSegment;

    .line 321
    .line 322
    return-object v0

    .line 323
    :cond_10
    const-string v0, "min"

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_11

    .line 330
    .line 331
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$MinSegment;->instance:Lcom/alibaba/fastjson/JSONPath$MinSegment;

    .line 332
    .line 333
    return-object v0

    .line 334
    :cond_11
    const-string v0, "keySet"

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_12

    .line 341
    .line 342
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$KeySetSegment;->instance:Lcom/alibaba/fastjson/JSONPath$KeySetSegment;

    .line 343
    .line 344
    return-object v0

    .line 345
    :cond_12
    const-string v0, "type"

    .line 346
    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_13

    .line 352
    .line 353
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$TypeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    .line 354
    .line 355
    return-object v0

    .line 356
    :cond_13
    const-string v0, "floor"

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_14

    .line 363
    .line 364
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$FloorSegment;->instance:Lcom/alibaba/fastjson/JSONPath$FloorSegment;

    .line 365
    .line 366
    return-object v0

    .line 367
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 368
    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v0

    .line 387
    :cond_15
    :goto_2
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    .line 388
    .line 389
    return-object v0

    .line 390
    :cond_16
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 391
    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v0

    .line 410
    :cond_17
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 411
    .line 412
    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    .line 413
    .line 414
    .line 415
    return-object v2

    .line 416
    :cond_18
    :goto_3
    if-ne v6, v5, :cond_19

    .line 417
    .line 418
    goto :goto_4

    .line 419
    :cond_19
    const/4 v1, 0x0

    .line 420
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-nez v2, :cond_1a

    .line 425
    .line 426
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 427
    .line 428
    .line 429
    :cond_1a
    if-eqz v0, :cond_1c

    .line 430
    .line 431
    if-eqz v1, :cond_1b

    .line 432
    .line 433
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance_deep_objectOnly:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    .line 434
    .line 435
    return-object v0

    .line 436
    :cond_1b
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance_deep:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    .line 437
    .line 438
    return-object v0

    .line 439
    :cond_1c
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    .line 440
    .line 441
    return-object v0

    .line 442
    :cond_1d
    const/4 v0, 0x0

    .line 443
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 11
    .line 12
    if-eq v2, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 36
    .line 37
    add-int/lit8 v3, v3, -0x1

    .line 38
    .line 39
    :goto_1
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method public readValue()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 2
    .line 3
    .line 4
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 5
    .line 6
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 22
    .line 23
    const/16 v1, 0x22

    .line 24
    .line 25
    if-eq v0, v1, :cond_4

    .line 26
    .line 27
    const/16 v1, 0x27

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v1, 0x6e

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "null"

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    return-object v0

    .line 50
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public final skipWhitespace()V
    .locals 2

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    if-gt v0, v1, :cond_1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0xd

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x9

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/16 v1, 0xc

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method
