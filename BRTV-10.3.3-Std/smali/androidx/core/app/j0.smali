.class public final Landroidx/core/app/j0;
.super Landroidx/core/app/k0;
.source "MyApplication"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public c:Landroidx/core/app/b1;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/app/k0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/core/app/j0;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/core/app/j0;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final addCompatExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/core/app/k0;->addCompatExtras(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/app/j0;->c:Landroidx/core/app/b1;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/core/app/b1;->a:Ljava/lang/CharSequence;

    .line 7
    .line 8
    const-string v1, "android.selfDisplayName"

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/core/app/j0;->c:Landroidx/core/app/b1;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/core/app/b1;->b()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "android.messagingStyleUser"

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "android.hiddenConversationTitle"

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/core/app/j0;->d:Ljava/lang/CharSequence;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/core/app/j0;->d:Ljava/lang/CharSequence;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/core/app/j0;->e:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const-string v0, "android.conversationTitle"

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/core/app/j0;->d:Ljava/lang/CharSequence;

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Landroidx/core/app/j0;->a:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    invoke-static {v0}, Landroidx/core/app/i0;->a(Ljava/util/ArrayList;)[Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "android.messages"

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Landroidx/core/app/j0;->b:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    invoke-static {v0}, Landroidx/core/app/i0;->a(Ljava/util/ArrayList;)[Landroid/os/Bundle;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "android.messages.historic"

    .line 80
    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v0, p0, Landroidx/core/app/j0;->e:Ljava/lang/Boolean;

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    const-string v1, "android.isGroupConversation"

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void
.end method

.method public final apply(Landroidx/core/app/n;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/core/app/u;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 16
    .line 17
    if-ge v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/core/app/j0;->e:Ljava/lang/Boolean;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/core/app/j0;->d:Ljava/lang/CharSequence;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/core/app/j0;->e:Ljava/lang/Boolean;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Landroidx/core/app/j0;->e:Ljava/lang/Boolean;

    .line 44
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    iget-object v4, p0, Landroidx/core/app/j0;->a:Ljava/util/ArrayList;

    .line 48
    .line 49
    const/16 v5, 0x18

    .line 50
    .line 51
    if-lt v0, v5, :cond_8

    .line 52
    .line 53
    if-lt v0, v1, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/core/app/j0;->c:Landroidx/core/app/b1;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Landroidx/core/app/a1;->b(Landroidx/core/app/b1;)Landroid/app/Person;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Landroidx/core/app/f0;->a(Landroid/app/Person;)Landroid/app/Notification$MessagingStyle;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v0, p0, Landroidx/core/app/j0;->c:Landroidx/core/app/b1;

    .line 70
    .line 71
    iget-object v0, v0, Landroidx/core/app/b1;->a:Ljava/lang/CharSequence;

    .line 72
    .line 73
    invoke-static {v0}, Landroidx/core/app/d0;->b(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Landroidx/core/app/i0;

    .line 92
    .line 93
    invoke-static {v0}, Landroid/support/v4/media/b;->a(Ljava/lang/Object;)Landroid/app/Notification$MessagingStyle;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v3}, Landroidx/core/app/i0;->c()Landroid/app/Notification$MessagingStyle$Message;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v4, v3}, Landroidx/core/app/d0;->a(Landroid/app/Notification$MessagingStyle;Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    .line 107
    const/16 v3, 0x1a

    .line 108
    .line 109
    if-lt v2, v3, :cond_4

    .line 110
    .line 111
    iget-object v2, p0, Landroidx/core/app/j0;->b:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_4

    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Landroidx/core/app/i0;

    .line 128
    .line 129
    invoke-static {v0}, Landroid/support/v4/media/b;->a(Ljava/lang/Object;)Landroid/app/Notification$MessagingStyle;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v3}, Landroidx/core/app/i0;->c()Landroid/app/Notification$MessagingStyle$Message;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v4, v3}, Landroidx/core/app/e0;->a(Landroid/app/Notification$MessagingStyle;Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    iget-object v2, p0, Landroidx/core/app/j0;->e:Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-nez v2, :cond_5

    .line 148
    .line 149
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 150
    .line 151
    if-lt v2, v1, :cond_6

    .line 152
    .line 153
    :cond_5
    invoke-static {v0}, Landroid/support/v4/media/b;->a(Ljava/lang/Object;)Landroid/app/Notification$MessagingStyle;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iget-object v3, p0, Landroidx/core/app/j0;->d:Ljava/lang/CharSequence;

    .line 158
    .line 159
    invoke-static {v2, v3}, Landroidx/core/app/d0;->c(Landroid/app/Notification$MessagingStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 160
    .line 161
    .line 162
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 163
    .line 164
    if-lt v2, v1, :cond_7

    .line 165
    .line 166
    invoke-static {v0}, Landroid/support/v4/media/b;->a(Ljava/lang/Object;)Landroid/app/Notification$MessagingStyle;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget-object v2, p0, Landroidx/core/app/j0;->e:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-static {v1, v2}, Landroidx/core/app/f0;->b(Landroid/app/Notification$MessagingStyle;Z)Landroid/app/Notification$MessagingStyle;

    .line 177
    .line 178
    .line 179
    :cond_7
    check-cast p1, Landroidx/core/app/t0;

    .line 180
    .line 181
    iget-object p1, p1, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 182
    .line 183
    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_d

    .line 187
    .line 188
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    sub-int/2addr v0, v3

    .line 193
    :goto_4
    const/4 v1, 0x0

    .line 194
    if-ltz v0, :cond_a

    .line 195
    .line 196
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, Landroidx/core/app/i0;

    .line 201
    .line 202
    iget-object v6, v5, Landroidx/core/app/i0;->c:Landroidx/core/app/b1;

    .line 203
    .line 204
    if-eqz v6, :cond_9

    .line 205
    .line 206
    iget-object v6, v6, Landroidx/core/app/b1;->a:Ljava/lang/CharSequence;

    .line 207
    .line 208
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-nez v6, :cond_9

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_9
    add-int/lit8 v0, v0, -0x1

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_b

    .line 223
    .line 224
    invoke-static {v3, v4}, Lea/q;->e(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    move-object v5, v0

    .line 229
    check-cast v5, Landroidx/core/app/i0;

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_b
    move-object v5, v1

    .line 233
    :goto_5
    iget-object v0, p0, Landroidx/core/app/j0;->d:Ljava/lang/CharSequence;

    .line 234
    .line 235
    if-eqz v0, :cond_c

    .line 236
    .line 237
    iget-object v0, p0, Landroidx/core/app/j0;->e:Ljava/lang/Boolean;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_c

    .line 244
    .line 245
    move-object v0, p1

    .line 246
    check-cast v0, Landroidx/core/app/t0;

    .line 247
    .line 248
    iget-object v6, p0, Landroidx/core/app/j0;->d:Ljava/lang/CharSequence;

    .line 249
    .line 250
    iget-object v0, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 251
    .line 252
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 253
    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_c
    if-eqz v5, :cond_d

    .line 257
    .line 258
    move-object v0, p1

    .line 259
    check-cast v0, Landroidx/core/app/t0;

    .line 260
    .line 261
    const-string v6, ""

    .line 262
    .line 263
    iget-object v0, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 264
    .line 265
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 266
    .line 267
    .line 268
    iget-object v6, v5, Landroidx/core/app/i0;->c:Landroidx/core/app/b1;

    .line 269
    .line 270
    if-eqz v6, :cond_d

    .line 271
    .line 272
    iget-object v6, v6, Landroidx/core/app/b1;->a:Ljava/lang/CharSequence;

    .line 273
    .line 274
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 275
    .line 276
    .line 277
    :cond_d
    :goto_6
    if-eqz v5, :cond_f

    .line 278
    .line 279
    move-object v0, p1

    .line 280
    check-cast v0, Landroidx/core/app/t0;

    .line 281
    .line 282
    iget-object v6, p0, Landroidx/core/app/j0;->d:Ljava/lang/CharSequence;

    .line 283
    .line 284
    if-eqz v6, :cond_e

    .line 285
    .line 286
    invoke-virtual {p0, v5}, Landroidx/core/app/j0;->c(Landroidx/core/app/i0;)Landroid/text/SpannableStringBuilder;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    goto :goto_7

    .line 291
    :cond_e
    iget-object v5, v5, Landroidx/core/app/i0;->a:Ljava/lang/CharSequence;

    .line 292
    .line 293
    :goto_7
    iget-object v0, v0, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 294
    .line 295
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 296
    .line 297
    .line 298
    :cond_f
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 299
    .line 300
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    iget-object v5, p0, Landroidx/core/app/j0;->d:Ljava/lang/CharSequence;

    .line 304
    .line 305
    if-nez v5, :cond_12

    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    sub-int/2addr v5, v3

    .line 312
    :goto_8
    if-ltz v5, :cond_11

    .line 313
    .line 314
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    check-cast v6, Landroidx/core/app/i0;

    .line 319
    .line 320
    iget-object v6, v6, Landroidx/core/app/i0;->c:Landroidx/core/app/b1;

    .line 321
    .line 322
    if-eqz v6, :cond_10

    .line 323
    .line 324
    iget-object v6, v6, Landroidx/core/app/b1;->a:Ljava/lang/CharSequence;

    .line 325
    .line 326
    if-nez v6, :cond_10

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_10
    add-int/lit8 v5, v5, -0x1

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_11
    const/4 v5, 0x0

    .line 333
    goto :goto_a

    .line 334
    :cond_12
    :goto_9
    const/4 v5, 0x1

    .line 335
    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    sub-int/2addr v6, v3

    .line 340
    :goto_b
    if-ltz v6, :cond_15

    .line 341
    .line 342
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    check-cast v7, Landroidx/core/app/i0;

    .line 347
    .line 348
    if-eqz v5, :cond_13

    .line 349
    .line 350
    invoke-virtual {p0, v7}, Landroidx/core/app/j0;->c(Landroidx/core/app/i0;)Landroid/text/SpannableStringBuilder;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    goto :goto_c

    .line 355
    :cond_13
    iget-object v7, v7, Landroidx/core/app/i0;->a:Ljava/lang/CharSequence;

    .line 356
    .line 357
    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    sub-int/2addr v8, v3

    .line 362
    if-eq v6, v8, :cond_14

    .line 363
    .line 364
    const-string v8, "\n"

    .line 365
    .line 366
    invoke-virtual {v0, v2, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 367
    .line 368
    .line 369
    :cond_14
    invoke-virtual {v0, v2, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 370
    .line 371
    .line 372
    add-int/lit8 v6, v6, -0x1

    .line 373
    .line 374
    goto :goto_b

    .line 375
    :cond_15
    check-cast p1, Landroidx/core/app/t0;

    .line 376
    .line 377
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 378
    .line 379
    iget-object p1, p1, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 380
    .line 381
    invoke-direct {v2, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 389
    .line 390
    .line 391
    :goto_d
    return-void
.end method

.method public final c(Landroidx/core/app/i0;)Landroid/text/SpannableStringBuilder;
    .locals 12

    .line 1
    invoke-static {}, Ll0/b;->c()Ll0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p1, Landroidx/core/app/i0;->c:Landroidx/core/app/b1;

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    move-object v2, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v2, v2, Landroidx/core/app/b1;->a:Ljava/lang/CharSequence;

    .line 19
    .line 20
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/high16 v5, -0x1000000

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/core/app/j0;->c:Landroidx/core/app/b1;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/core/app/b1;->a:Ljava/lang/CharSequence;

    .line 31
    .line 32
    iget-object v4, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 33
    .line 34
    iget v4, v4, Landroidx/core/app/u;->v:I

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    move v5, v4

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object v4, Ll0/j;->a:Landroidx/appcompat/app/r0;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ll0/b;->d(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 49
    .line 50
    .line 51
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    .line 52
    .line 53
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    const/4 v9, 0x0

    .line 61
    move-object v6, v4

    .line 62
    invoke-direct/range {v6 .. v11}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    sub-int/2addr v5, v2

    .line 74
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/16 v6, 0x21

    .line 79
    .line 80
    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p1, Landroidx/core/app/i0;->a:Ljava/lang/CharSequence;

    .line 84
    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move-object v3, p1

    .line 89
    :goto_1
    const-string p1, "  "

    .line 90
    .line 91
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0, v3}, Ll0/b;->d(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    .line 101
    .line 102
    return-object v1
.end method

.method public final clearCompatExtraKeys(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/core/app/k0;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.messagingStyleUser"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "android.selfDisplayName"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "android.conversationTitle"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "android.hiddenConversationTitle"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "android.messages"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "android.messages.historic"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "android.isGroupConversation"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "androidx.core.app.NotificationCompat$MessagingStyle"

    .line 2
    .line 3
    return-object v0
.end method

.method public final restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/core/app/k0;->restoreFromCompatExtras(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/app/j0;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    const-string v1, "android.messagingStyleUser"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroidx/core/app/b1;->a(Landroid/os/Bundle;)Landroidx/core/app/b1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Landroidx/core/app/j0;->c:Landroidx/core/app/b1;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "android.selfDisplayName"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Landroidx/core/app/b1;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, v2, Landroidx/core/app/b1;->a:Ljava/lang/CharSequence;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, v2, Landroidx/core/app/b1;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 43
    .line 44
    iput-object v1, v2, Landroidx/core/app/b1;->c:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v1, v2, Landroidx/core/app/b1;->d:Ljava/lang/String;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iput-boolean v1, v2, Landroidx/core/app/b1;->e:Z

    .line 50
    .line 51
    iput-boolean v1, v2, Landroidx/core/app/b1;->f:Z

    .line 52
    .line 53
    iput-object v2, p0, Landroidx/core/app/j0;->c:Landroidx/core/app/b1;

    .line 54
    .line 55
    :goto_0
    const-string v1, "android.conversationTitle"

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Landroidx/core/app/j0;->d:Ljava/lang/CharSequence;

    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    const-string v1, "android.hiddenConversationTitle"

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, p0, Landroidx/core/app/j0;->d:Ljava/lang/CharSequence;

    .line 72
    .line 73
    :cond_1
    const-string v1, "android.messages"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-static {v1}, Landroidx/core/app/i0;->b([Landroid/os/Parcelable;)Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    .line 87
    .line 88
    :cond_2
    const-string v0, "android.messages.historic"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    iget-object v1, p0, Landroidx/core/app/j0;->b:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-static {v0}, Landroidx/core/app/i0;->b([Landroid/os/Parcelable;)Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    .line 104
    .line 105
    :cond_3
    const-string v0, "android.isGroupConversation"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, p0, Landroidx/core/app/j0;->e:Ljava/lang/Boolean;

    .line 122
    .line 123
    :cond_4
    return-void
.end method
