.class public final Landroidx/core/app/a0;
.super Landroidx/core/app/k0;
.source "MyApplication"


# instance fields
.field public a:I

.field public b:Landroidx/core/app/b1;

.field public c:Landroid/app/PendingIntent;

.field public d:Landroid/app/PendingIntent;

.field public e:Landroid/app/PendingIntent;

.field public f:Z

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Integer;

.field public i:Landroidx/core/graphics/drawable/IconCompat;

.field public j:Ljava/lang/CharSequence;


# virtual methods
.method public final addCompatExtras(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/core/app/k0;->addCompatExtras(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.callType"

    .line 5
    .line 6
    iget v1, p0, Landroidx/core/app/a0;->a:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.callIsVideo"

    .line 12
    .line 13
    iget-boolean v1, p0, Landroidx/core/app/a0;->f:Z

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/core/app/a0;->b:Landroidx/core/app/b1;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v2, 0x1c

    .line 25
    .line 26
    if-lt v1, v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroidx/core/app/a1;->b(Landroidx/core/app/b1;)Landroid/app/Person;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroidx/core/app/y;->b(Landroid/app/Person;)Landroid/os/Parcelable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "android.callPerson"

    .line 40
    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroidx/core/app/b1;->b()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "android.callPersonCompat"

    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/core/app/a0;->i:Landroidx/core/graphics/drawable/IconCompat;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v2, 0x17

    .line 61
    .line 62
    if-lt v1, v2, :cond_2

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 65
    .line 66
    iget-object v1, v1, Landroidx/core/app/u;->a:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->n(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroidx/core/app/x;->a(Landroid/graphics/drawable/Icon;)Landroid/os/Parcelable;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "android.verificationIcon"

    .line 77
    .line 78
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->m()Landroid/os/Bundle;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "android.verificationIconCompat"

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_1
    const-string v0, "android.verificationText"

    .line 92
    .line 93
    iget-object v1, p0, Landroidx/core/app/a0;->j:Ljava/lang/CharSequence;

    .line 94
    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "android.answerIntent"

    .line 99
    .line 100
    iget-object v1, p0, Landroidx/core/app/a0;->c:Landroid/app/PendingIntent;

    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "android.declineIntent"

    .line 106
    .line 107
    iget-object v1, p0, Landroidx/core/app/a0;->d:Landroid/app/PendingIntent;

    .line 108
    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    .line 111
    .line 112
    const-string v0, "android.hangUpIntent"

    .line 113
    .line 114
    iget-object v1, p0, Landroidx/core/app/a0;->e:Landroid/app/PendingIntent;

    .line 115
    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Landroidx/core/app/a0;->g:Ljava/lang/Integer;

    .line 120
    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    const-string v1, "android.answerColor"

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    :cond_4
    iget-object v0, p0, Landroidx/core/app/a0;->h:Ljava/lang/Integer;

    .line 133
    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    const-string v1, "android.declineColor"

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    :cond_5
    return-void
.end method

.method public final apply(Landroidx/core/app/n;)V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x0

    .line 9
    if-lt v0, v1, :cond_7

    .line 10
    .line 11
    iget v0, p0, Landroidx/core/app/a0;->a:I

    .line 12
    .line 13
    if-eq v0, v3, :cond_2

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    if-eq v0, v4, :cond_0

    .line 18
    .line 19
    const-string v0, "NotifCompat"

    .line 20
    .line 21
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Unrecognized call type in CallStyle: "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v2, p0, Landroidx/core/app/a0;->a:I

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Landroidx/core/app/a0;->b:Landroidx/core/app/b1;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Landroidx/core/app/a1;->b(Landroidx/core/app/b1;)Landroid/app/Person;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Landroidx/core/app/a0;->e:Landroid/app/PendingIntent;

    .line 61
    .line 62
    iget-object v2, p0, Landroidx/core/app/a0;->c:Landroid/app/PendingIntent;

    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Landroidx/core/app/z;->c(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Landroidx/core/app/a0;->b:Landroidx/core/app/b1;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Landroidx/core/app/a1;->b(Landroidx/core/app/b1;)Landroid/app/Person;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Landroidx/core/app/a0;->e:Landroid/app/PendingIntent;

    .line 79
    .line 80
    invoke-static {v0, v1}, Landroidx/core/app/z;->b(Landroid/app/Person;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Landroidx/core/app/a0;->b:Landroidx/core/app/b1;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Landroidx/core/app/a1;->b(Landroidx/core/app/b1;)Landroid/app/Person;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v1, p0, Landroidx/core/app/a0;->d:Landroid/app/PendingIntent;

    .line 95
    .line 96
    iget-object v2, p0, Landroidx/core/app/a0;->c:Landroid/app/PendingIntent;

    .line 97
    .line 98
    invoke-static {v0, v1, v2}, Landroidx/core/app/z;->a(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    :cond_3
    :goto_0
    if-eqz v5, :cond_11

    .line 103
    .line 104
    check-cast p1, Landroidx/core/app/t0;

    .line 105
    .line 106
    iget-object p1, p1, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 107
    .line 108
    invoke-static {v5, p1}, Landroidx/core/app/v;->i(Landroid/app/Notification$CallStyle;Landroid/app/Notification$Builder;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Landroidx/core/app/a0;->g:Ljava/lang/Integer;

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-static {v5, p1}, Landroidx/core/app/z;->d(Landroid/app/Notification$CallStyle;I)Landroid/app/Notification$CallStyle;

    .line 120
    .line 121
    .line 122
    :cond_4
    iget-object p1, p0, Landroidx/core/app/a0;->h:Ljava/lang/Integer;

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    invoke-static {v5, p1}, Landroidx/core/app/z;->f(Landroid/app/Notification$CallStyle;I)Landroid/app/Notification$CallStyle;

    .line 131
    .line 132
    .line 133
    :cond_5
    iget-object p1, p0, Landroidx/core/app/a0;->j:Ljava/lang/CharSequence;

    .line 134
    .line 135
    invoke-static {v5, p1}, Landroidx/core/app/z;->i(Landroid/app/Notification$CallStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$CallStyle;

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Landroidx/core/app/a0;->i:Landroidx/core/graphics/drawable/IconCompat;

    .line 139
    .line 140
    if-eqz p1, :cond_6

    .line 141
    .line 142
    iget-object v0, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 143
    .line 144
    iget-object v0, v0, Landroidx/core/app/u;->a:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->n(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {v5, p1}, Landroidx/core/app/z;->h(Landroid/app/Notification$CallStyle;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$CallStyle;

    .line 151
    .line 152
    .line 153
    :cond_6
    iget-boolean p1, p0, Landroidx/core/app/a0;->f:Z

    .line 154
    .line 155
    invoke-static {v5, p1}, Landroidx/core/app/z;->g(Landroid/app/Notification$CallStyle;Z)Landroid/app/Notification$CallStyle;

    .line 156
    .line 157
    .line 158
    goto/16 :goto_5

    .line 159
    .line 160
    :cond_7
    check-cast p1, Landroidx/core/app/t0;

    .line 161
    .line 162
    iget-object v1, p0, Landroidx/core/app/a0;->b:Landroidx/core/app/b1;

    .line 163
    .line 164
    if-eqz v1, :cond_8

    .line 165
    .line 166
    iget-object v1, v1, Landroidx/core/app/b1;->a:Ljava/lang/CharSequence;

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_8
    move-object v1, v5

    .line 170
    :goto_1
    iget-object p1, p1, Landroidx/core/app/t0;->b:Landroid/app/Notification$Builder;

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 176
    .line 177
    iget-object v1, v1, Landroidx/core/app/u;->u:Landroid/os/Bundle;

    .line 178
    .line 179
    if-eqz v1, :cond_9

    .line 180
    .line 181
    const-string v6, "android.text"

    .line 182
    .line 183
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_9

    .line 188
    .line 189
    iget-object v1, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 190
    .line 191
    iget-object v1, v1, Landroidx/core/app/u;->u:Landroid/os/Bundle;

    .line 192
    .line 193
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    goto :goto_2

    .line 198
    :cond_9
    move-object v1, v5

    .line 199
    :goto_2
    if-nez v1, :cond_d

    .line 200
    .line 201
    iget v1, p0, Landroidx/core/app/a0;->a:I

    .line 202
    .line 203
    if-eq v1, v3, :cond_c

    .line 204
    .line 205
    if-eq v1, v2, :cond_b

    .line 206
    .line 207
    if-eq v1, v4, :cond_a

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_a
    iget-object v1, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 211
    .line 212
    iget-object v1, v1, Landroidx/core/app/u;->a:Landroid/content/Context;

    .line 213
    .line 214
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    const v2, 0x7f12005b

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    goto :goto_3

    .line 226
    :cond_b
    iget-object v1, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 227
    .line 228
    iget-object v1, v1, Landroidx/core/app/u;->a:Landroid/content/Context;

    .line 229
    .line 230
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const v2, 0x7f12005a

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    goto :goto_3

    .line 242
    :cond_c
    iget-object v1, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 243
    .line 244
    iget-object v1, v1, Landroidx/core/app/u;->a:Landroid/content/Context;

    .line 245
    .line 246
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    const v2, 0x7f120059

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    :goto_3
    move-object v1, v5

    .line 258
    :cond_d
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Landroidx/core/app/a0;->b:Landroidx/core/app/b1;

    .line 262
    .line 263
    if-eqz v1, :cond_10

    .line 264
    .line 265
    const/16 v2, 0x17

    .line 266
    .line 267
    if-lt v0, v2, :cond_e

    .line 268
    .line 269
    iget-object v1, v1, Landroidx/core/app/b1;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 270
    .line 271
    if-eqz v1, :cond_e

    .line 272
    .line 273
    iget-object v2, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 274
    .line 275
    iget-object v2, v2, Landroidx/core/app/u;->a:Landroid/content/Context;

    .line 276
    .line 277
    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->n(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-static {p1, v1}, Landroidx/core/app/x;->c(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)V

    .line 282
    .line 283
    .line 284
    :cond_e
    const/16 v1, 0x1c

    .line 285
    .line 286
    if-lt v0, v1, :cond_f

    .line 287
    .line 288
    iget-object v0, p0, Landroidx/core/app/a0;->b:Landroidx/core/app/b1;

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    invoke-static {v0}, Landroidx/core/app/a1;->b(Landroidx/core/app/b1;)Landroid/app/Person;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {p1, v0}, Landroidx/core/app/y;->a(Landroid/app/Notification$Builder;Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 298
    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_f
    iget-object v0, p0, Landroidx/core/app/a0;->b:Landroidx/core/app/b1;

    .line 302
    .line 303
    iget-object v0, v0, Landroidx/core/app/b1;->c:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {p1, v0}, Landroidx/core/app/w;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 306
    .line 307
    .line 308
    :cond_10
    :goto_4
    const-string v0, "call"

    .line 309
    .line 310
    invoke-static {p1, v0}, Landroidx/core/app/w;->b(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 311
    .line 312
    .line 313
    :cond_11
    :goto_5
    return-void
.end method

.method public final c(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/p;
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    iget-object p3, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 4
    .line 5
    iget-object p3, p3, Landroidx/core/app/u;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p3, p4}, Lu7/d;->i(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    :cond_0
    new-instance p4, Landroid/text/SpannableStringBuilder;

    .line 16
    .line 17
    invoke-direct {p4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/core/app/u;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 33
    .line 34
    .line 35
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    invoke-direct {p2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    const/16 v0, 0x12

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p4, p2, v1, p3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Landroidx/core/app/o;

    .line 55
    .line 56
    iget-object p3, p0, Landroidx/core/app/k0;->mBuilder:Landroidx/core/app/u;

    .line 57
    .line 58
    iget-object p3, p3, Landroidx/core/app/u;->a:Landroid/content/Context;

    .line 59
    .line 60
    sget-object v0, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-static {v0, p3, p1}, Landroidx/core/graphics/drawable/IconCompat;->e(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p3, Landroid/os/Bundle;

    .line 78
    .line 79
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p2, p1, p4, p5, p3}, Landroidx/core/app/o;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Landroidx/core/app/o;->a()Landroidx/core/app/p;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const/4 p2, 0x1

    .line 90
    iget-object p3, p1, Landroidx/core/app/p;->a:Landroid/os/Bundle;

    .line 91
    .line 92
    const-string p4, "key_action_priority"

    .line 93
    .line 94
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    return-object p1
.end method

.method public final displayCustomViewInline()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "androidx.core.app.NotificationCompat$CallStyle"

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
    const-string v0, "android.callType"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroidx/core/app/a0;->a:I

    .line 11
    .line 12
    const-string v0, "android.callIsVideo"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, Landroidx/core/app/a0;->f:Z

    .line 19
    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v1, 0x1c

    .line 23
    .line 24
    if-lt v0, v1, :cond_0

    .line 25
    .line 26
    const-string v1, "android.callPerson"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Landroid/support/v4/media/session/b;->d(Landroid/os/Parcelable;)Landroid/app/Person;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Landroidx/core/app/a1;->a(Landroid/app/Person;)Landroidx/core/app/b1;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Landroidx/core/app/a0;->b:Landroidx/core/app/b1;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v1, "android.callPersonCompat"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Landroidx/core/app/b1;->a(Landroid/os/Bundle;)Landroidx/core/app/b1;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Landroidx/core/app/a0;->b:Landroidx/core/app/b1;

    .line 66
    .line 67
    :cond_1
    :goto_0
    const/16 v1, 0x17

    .line 68
    .line 69
    if-lt v0, v1, :cond_2

    .line 70
    .line 71
    const-string v0, "android.verificationIcon"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/support/v4/media/a;->g(Landroid/os/Parcelable;)Landroid/graphics/drawable/Icon;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Landroidx/core/app/a0;->i:Landroidx/core/graphics/drawable/IconCompat;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const-string v0, "android.verificationIconCompat"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Landroidx/core/app/a0;->i:Landroidx/core/graphics/drawable/IconCompat;

    .line 111
    .line 112
    :cond_3
    :goto_1
    const-string v0, "android.verificationText"

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Landroidx/core/app/a0;->j:Ljava/lang/CharSequence;

    .line 119
    .line 120
    const-string v0, "android.answerIntent"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroid/app/PendingIntent;

    .line 127
    .line 128
    iput-object v0, p0, Landroidx/core/app/a0;->c:Landroid/app/PendingIntent;

    .line 129
    .line 130
    const-string v0, "android.declineIntent"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/app/PendingIntent;

    .line 137
    .line 138
    iput-object v0, p0, Landroidx/core/app/a0;->d:Landroid/app/PendingIntent;

    .line 139
    .line 140
    const-string v0, "android.hangUpIntent"

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Landroid/app/PendingIntent;

    .line 147
    .line 148
    iput-object v0, p0, Landroidx/core/app/a0;->e:Landroid/app/PendingIntent;

    .line 149
    .line 150
    const-string v0, "android.answerColor"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    const/4 v2, 0x0

    .line 157
    if-eqz v1, :cond_4

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    goto :goto_2

    .line 168
    :cond_4
    move-object v0, v2

    .line 169
    :goto_2
    iput-object v0, p0, Landroidx/core/app/a0;->g:Ljava/lang/Integer;

    .line 170
    .line 171
    const-string v0, "android.declineColor"

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_5

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    :cond_5
    iput-object v2, p0, Landroidx/core/app/a0;->h:Ljava/lang/Integer;

    .line 188
    .line 189
    return-void
.end method
