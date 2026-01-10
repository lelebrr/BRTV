.class public Landroidx/leanback/widget/picker/TimePicker;
.super Landroidx/leanback/widget/picker/Picker;
.source "MyApplication"


# instance fields
.field public A:Ljava/lang/String;

.field public p:Li1/d;

.field public q:Li1/d;

.field public r:Li1/d;

.field public s:I

.field public t:I

.field public u:I

.field public final v:La0/f;

.field public w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04051b

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    new-instance v0, La0/f;

    invoke-direct {v0, p3}, La0/f;-><init>(Ljava/util/Locale;)V

    .line 6
    iput-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->v:La0/f;

    .line 7
    sget-object v3, Lh1/a;->l:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    .line 8
    invoke-static/range {v1 .. v7}, Ln0/s0;->p(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 9
    :try_start_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    .line 10
    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->w:Z

    const/4 p1, 0x1

    const/4 p2, 0x3

    .line 11
    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->i()V

    .line 14
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->j()V

    if-eqz p1, :cond_0

    .line 15
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xb

    .line 16
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/picker/TimePicker;->setHour(I)V

    const/16 p2, 0xc

    .line 17
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/TimePicker;->setMinute(I)V

    .line 18
    iget-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->w:Z

    if-nez p1, :cond_0

    .line 19
    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->u:I

    iget p2, p0, Landroidx/leanback/widget/picker/TimePicker;->z:I

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/picker/Picker;->c(II)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    throw p1
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->s:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->x:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->t:I

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->y:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->u:I

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->z:I

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p2, "Invalid column index."

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public getBestHourMinutePattern()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->v:La0/f;

    .line 2
    .line 3
    iget-object v0, v0, La0/f;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/Locale;

    .line 6
    .line 7
    iget-boolean v1, p0, Landroidx/leanback/widget/picker/TimePicker;->w:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "Hma"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "hma"

    .line 15
    .line 16
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const-string v0, "h:mma"

    .line 27
    .line 28
    :cond_1
    return-object v0
.end method

.method public getHour()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->x:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->z:I

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->x:I

    .line 13
    .line 14
    rem-int/lit8 v0, v0, 0xc

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->x:I

    .line 18
    .line 19
    rem-int/lit8 v0, v0, 0xc

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0xc

    .line 22
    .line 23
    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/16 v2, 0x48

    .line 5
    .line 6
    const/16 v4, 0x61

    .line 7
    .line 8
    const/4 v5, 0x1

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    iget-object v7, v0, Landroidx/leanback/widget/picker/TimePicker;->A:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-eqz v7, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iput-object v6, v0, Landroidx/leanback/widget/picker/TimePicker;->A:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    iget-object v7, v0, Landroidx/leanback/widget/picker/TimePicker;->v:La0/f;

    .line 29
    .line 30
    iget-object v8, v7, La0/f;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v8, Ljava/util/Locale;

    .line 33
    .line 34
    invoke-static {v8}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    const/4 v9, 0x0

    .line 39
    if-ne v8, v5, :cond_1

    .line 40
    .line 41
    const/4 v8, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v8, 0x0

    .line 44
    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v10, "a"

    .line 49
    .line 50
    if-ltz v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const-string v11, "m"

    .line 57
    .line 58
    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-le v4, v6, :cond_3

    .line 63
    .line 64
    :cond_2
    const/4 v4, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 v4, 0x0

    .line 67
    :goto_1
    if-eqz v8, :cond_4

    .line 68
    .line 69
    const-string v6, "mh"

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const-string v6, "hm"

    .line 73
    .line 74
    :goto_2
    iget-boolean v8, v0, Landroidx/leanback/widget/picker/TimePicker;->w:Z

    .line 75
    .line 76
    if-eqz v8, :cond_5

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    if-eqz v4, :cond_6

    .line 80
    .line 81
    invoke-virtual {v6, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    :goto_3
    move-object v6, v4

    .line 86
    goto :goto_4

    .line 87
    :cond_6
    invoke-virtual {v10, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    goto :goto_3

    .line 92
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    new-instance v8, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    new-array v11, v1, [C

    .line 107
    .line 108
    fill-array-data v11, :array_0

    .line 109
    .line 110
    .line 111
    const/4 v12, 0x0

    .line 112
    const/4 v13, 0x0

    .line 113
    const/4 v14, 0x0

    .line 114
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    if-ge v12, v15, :cond_e

    .line 119
    .line 120
    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    .line 121
    .line 122
    .line 123
    move-result v15

    .line 124
    const/16 v3, 0x20

    .line 125
    .line 126
    if-ne v15, v3, :cond_7

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_7
    const/16 v3, 0x27

    .line 130
    .line 131
    if-ne v15, v3, :cond_9

    .line 132
    .line 133
    if-nez v13, :cond_8

    .line 134
    .line 135
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 136
    .line 137
    .line 138
    const/4 v13, 0x1

    .line 139
    goto :goto_8

    .line 140
    :cond_8
    const/4 v13, 0x0

    .line 141
    goto :goto_8

    .line 142
    :cond_9
    if-eqz v13, :cond_a

    .line 143
    .line 144
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    goto :goto_7

    .line 148
    :cond_a
    const/4 v3, 0x0

    .line 149
    :goto_6
    if-ge v3, v1, :cond_c

    .line 150
    .line 151
    aget-char v1, v11, v3

    .line 152
    .line 153
    if-ne v15, v1, :cond_b

    .line 154
    .line 155
    if-eq v15, v14, :cond_d

    .line 156
    .line 157
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_b
    add-int/2addr v3, v5

    .line 169
    const/4 v1, 0x7

    .line 170
    goto :goto_6

    .line 171
    :cond_c
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    :cond_d
    :goto_7
    move v14, v15

    .line 175
    :goto_8
    add-int/2addr v12, v5

    .line 176
    const/4 v1, 0x7

    .line 177
    goto :goto_5

    .line 178
    :cond_e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    add-int/2addr v3, v5

    .line 194
    if-ne v1, v3, :cond_15

    .line 195
    .line 196
    invoke-virtual {v0, v8}, Landroidx/leanback/widget/picker/Picker;->setSeparators(Ljava/util/List;)V

    .line 197
    .line 198
    .line 199
    iget-object v1, v7, La0/f;->b:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v1, Ljava/util/Locale;

    .line 202
    .line 203
    invoke-virtual {v6, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const/4 v3, 0x0

    .line 208
    iput-object v3, v0, Landroidx/leanback/widget/picker/TimePicker;->r:Li1/d;

    .line 209
    .line 210
    iput-object v3, v0, Landroidx/leanback/widget/picker/TimePicker;->q:Li1/d;

    .line 211
    .line 212
    iput-object v3, v0, Landroidx/leanback/widget/picker/TimePicker;->p:Li1/d;

    .line 213
    .line 214
    const/4 v3, -0x1

    .line 215
    iput v3, v0, Landroidx/leanback/widget/picker/TimePicker;->u:I

    .line 216
    .line 217
    iput v3, v0, Landroidx/leanback/widget/picker/TimePicker;->t:I

    .line 218
    .line 219
    iput v3, v0, Landroidx/leanback/widget/picker/TimePicker;->s:I

    .line 220
    .line 221
    new-instance v3, Ljava/util/ArrayList;

    .line 222
    .line 223
    const/4 v4, 0x3

    .line 224
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .line 226
    .line 227
    const/4 v4, 0x0

    .line 228
    :goto_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-ge v4, v6, :cond_14

    .line 233
    .line 234
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    const/16 v8, 0x41

    .line 239
    .line 240
    if-eq v6, v8, :cond_11

    .line 241
    .line 242
    if-eq v6, v2, :cond_10

    .line 243
    .line 244
    const/16 v8, 0x4d

    .line 245
    .line 246
    if-ne v6, v8, :cond_f

    .line 247
    .line 248
    new-instance v6, Li1/d;

    .line 249
    .line 250
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 251
    .line 252
    .line 253
    iput-object v6, v0, Landroidx/leanback/widget/picker/TimePicker;->q:Li1/d;

    .line 254
    .line 255
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    iget-object v6, v0, Landroidx/leanback/widget/picker/TimePicker;->q:Li1/d;

    .line 259
    .line 260
    iget-object v10, v7, La0/f;->d:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v10, [Ljava/lang/String;

    .line 263
    .line 264
    iput-object v10, v6, Li1/d;->d:[Ljava/lang/CharSequence;

    .line 265
    .line 266
    iput v4, v0, Landroidx/leanback/widget/picker/TimePicker;->t:I

    .line 267
    .line 268
    goto :goto_a

    .line 269
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 270
    .line 271
    const-string v2, "Invalid time picker format."

    .line 272
    .line 273
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v1

    .line 277
    :cond_10
    const/16 v8, 0x4d

    .line 278
    .line 279
    new-instance v6, Li1/d;

    .line 280
    .line 281
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 282
    .line 283
    .line 284
    iput-object v6, v0, Landroidx/leanback/widget/picker/TimePicker;->p:Li1/d;

    .line 285
    .line 286
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    iget-object v6, v0, Landroidx/leanback/widget/picker/TimePicker;->p:Li1/d;

    .line 290
    .line 291
    iget-object v10, v7, La0/f;->c:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v10, [Ljava/lang/String;

    .line 294
    .line 295
    iput-object v10, v6, Li1/d;->d:[Ljava/lang/CharSequence;

    .line 296
    .line 297
    iput v4, v0, Landroidx/leanback/widget/picker/TimePicker;->s:I

    .line 298
    .line 299
    goto :goto_a

    .line 300
    :cond_11
    const/16 v8, 0x4d

    .line 301
    .line 302
    new-instance v6, Li1/d;

    .line 303
    .line 304
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 305
    .line 306
    .line 307
    iput-object v6, v0, Landroidx/leanback/widget/picker/TimePicker;->r:Li1/d;

    .line 308
    .line 309
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    iget-object v6, v0, Landroidx/leanback/widget/picker/TimePicker;->r:Li1/d;

    .line 313
    .line 314
    iget-object v10, v7, La0/f;->e:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v10, [Ljava/lang/String;

    .line 317
    .line 318
    iput-object v10, v6, Li1/d;->d:[Ljava/lang/CharSequence;

    .line 319
    .line 320
    iput v4, v0, Landroidx/leanback/widget/picker/TimePicker;->u:I

    .line 321
    .line 322
    iget v10, v6, Li1/d;->b:I

    .line 323
    .line 324
    if-eqz v10, :cond_12

    .line 325
    .line 326
    iput v9, v6, Li1/d;->b:I

    .line 327
    .line 328
    :cond_12
    iget v10, v6, Li1/d;->c:I

    .line 329
    .line 330
    if-eq v5, v10, :cond_13

    .line 331
    .line 332
    iput v5, v6, Li1/d;->c:I

    .line 333
    .line 334
    :cond_13
    :goto_a
    add-int/2addr v4, v5

    .line 335
    goto :goto_9

    .line 336
    :cond_14
    invoke-virtual {v0, v3}, Landroidx/leanback/widget/picker/Picker;->setColumns(Ljava/util/List;)V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 341
    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string v3, "Separators size: "

    .line 345
    .line 346
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v3, " must equal the size of timeFieldsPattern: "

    .line 357
    .line 358
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v3, " + 1"

    .line 369
    .line 370
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v1

    .line 381
    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
        0x6ds
        0x4ds
        0x61s
    .end array-data
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->p:Li1/d;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/leanback/widget/picker/TimePicker;->w:Z

    .line 4
    .line 5
    xor-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iget v3, v0, Li1/d;->b:I

    .line 8
    .line 9
    if-eq v2, v3, :cond_0

    .line 10
    .line 11
    iput v2, v0, Li1/d;->b:I

    .line 12
    .line 13
    :cond_0
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x17

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0xc

    .line 19
    .line 20
    :goto_0
    iget v2, v0, Li1/d;->c:I

    .line 21
    .line 22
    if-eq v1, v2, :cond_2

    .line 23
    .line 24
    iput v1, v0, Li1/d;->c:I

    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->q:Li1/d;

    .line 27
    .line 28
    iget v1, v0, Li1/d;->b:I

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    iput v2, v0, Li1/d;->b:I

    .line 34
    .line 35
    :cond_3
    iget v1, v0, Li1/d;->c:I

    .line 36
    .line 37
    const/16 v3, 0x3b

    .line 38
    .line 39
    if-eq v3, v1, :cond_4

    .line 40
    .line 41
    iput v3, v0, Li1/d;->c:I

    .line 42
    .line 43
    :cond_4
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->r:Li1/d;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    iget v1, v0, Li1/d;->b:I

    .line 48
    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    iput v2, v0, Li1/d;->b:I

    .line 52
    .line 53
    :cond_5
    iget v1, v0, Li1/d;->c:I

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-eq v2, v1, :cond_6

    .line 57
    .line 58
    iput v2, v0, Li1/d;->c:I

    .line 59
    .line 60
    :cond_6
    return-void
.end method

.method public setHour(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    const/16 v0, 0x17

    .line 4
    .line 5
    if-gt p1, v0, :cond_3

    .line 6
    .line 7
    iput p1, p0, Landroidx/leanback/widget/picker/TimePicker;->x:I

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->w:Z

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    const/16 v1, 0xc

    .line 14
    .line 15
    if-lt p1, v1, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->z:I

    .line 19
    .line 20
    if-le p1, v1, :cond_1

    .line 21
    .line 22
    sub-int/2addr p1, v1

    .line 23
    iput p1, p0, Landroidx/leanback/widget/picker/TimePicker;->x:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->z:I

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->x:I

    .line 32
    .line 33
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->u:I

    .line 36
    .line 37
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->z:I

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/picker/Picker;->c(II)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->s:I

    .line 43
    .line 44
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->x:I

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/picker/Picker;->c(II)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string v1, "hour: "

    .line 53
    .line 54
    const-string v2, " is not in [0-23] range in"

    .line 55
    .line 56
    invoke-static {p1, v1, v2}, Lea/q;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method public setIs24Hour(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->w:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getHour()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getMinute()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->w:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->i()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->j()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/picker/TimePicker;->setHour(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/picker/TimePicker;->setMinute(I)V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->w:Z

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->u:I

    .line 33
    .line 34
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->z:I

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/picker/Picker;->c(II)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public setMinute(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x3b

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Landroidx/leanback/widget/picker/TimePicker;->y:I

    .line 8
    .line 9
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->t:I

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/picker/Picker;->c(II)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v1, "minute: "

    .line 18
    .line 19
    const-string v2, " is not in [0-59] range."

    .line 20
    .line 21
    invoke-static {p1, v1, v2}, Lea/q;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method
