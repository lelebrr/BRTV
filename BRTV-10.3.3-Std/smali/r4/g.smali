.class public Lr4/g;
.super Landroidx/fragment/app/m;
.source "MyApplication"


# instance fields
.field public k0:Z

.field public l0:Ljava/util/ArrayList;

.field public m0:Ljava/util/ArrayList;

.field public n0:[J

.field public o0:Landroid/app/AlertDialog;

.field public p0:Lr4/f;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static T(Ljava/util/ArrayList;[JI)I
    .locals 8

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_1
    array-length v3, p1

    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    aget-wide v3, p1, v2

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Lcom/google/android/gms/cast/MediaTrack;

    .line 24
    .line 25
    iget-wide v5, v5, Lcom/google/android/gms/cast/MediaTrack;->a:J

    .line 26
    .line 27
    cmp-long v7, v3, v5

    .line 28
    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return p2
.end method


# virtual methods
.method public final R()Landroid/app/Dialog;
    .locals 14

    .line 1
    iget-object v0, p0, Lr4/g;->l0:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lr4/g;->n0:[J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lr4/g;->T(Ljava/util/ArrayList;[JI)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lr4/g;->m0:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v3, p0, Lr4/g;->n0:[J

    .line 13
    .line 14
    const/4 v4, -0x1

    .line 15
    invoke-static {v1, v3, v4}, Lr4/g;->T(Ljava/util/ArrayList;[JI)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    new-instance v3, Lr4/s;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v5, p0, Lr4/g;->l0:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v3, v4, v5, v0}, Lr4/s;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;I)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lr4/s;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget-object v5, p0, Lr4/g;->m0:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0, v4, v5, v1}, Lr4/s;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const v5, 0x7f0e0023

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const v5, 0x7f0b0413

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Landroid/widget/ListView;

    .line 74
    .line 75
    const v8, 0x7f0b006f

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Landroid/widget/ListView;

    .line 83
    .line 84
    const v10, 0x7f0b03f0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    check-cast v10, Landroid/widget/TabHost;

    .line 92
    .line 93
    invoke-virtual {v10}, Landroid/widget/TabHost;->setup()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    const/4 v12, 0x4

    .line 101
    if-nez v11, :cond_0

    .line 102
    .line 103
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    .line 109
    .line 110
    const-string v7, "textTab"

    .line 111
    .line 112
    invoke-virtual {v10, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v7, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 117
    .line 118
    .line 119
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    const v13, 0x7f120087

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    new-array v13, v2, [Ljava/lang/Object;

    .line 133
    .line 134
    invoke-static {v5, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v7, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 142
    .line 143
    .line 144
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    const/4 v7, 0x1

    .line 149
    if-gt v5, v7, :cond_1

    .line 150
    .line 151
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    .line 157
    .line 158
    const-string v5, "audioTab"

    .line 159
    .line 160
    invoke-virtual {v10, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v5, v8}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 165
    .line 166
    .line 167
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 168
    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    const v9, 0x7f120081

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    new-array v9, v2, [Ljava/lang/Object;

    .line 181
    .line 182
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v5, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 190
    .line 191
    .line 192
    :goto_1
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    const v8, 0x7f120086

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    new-array v8, v2, [Ljava/lang/Object;

    .line 210
    .line 211
    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    new-instance v8, Lr4/q;

    .line 216
    .line 217
    invoke-direct {v8, p0, v3, v0}, Lr4/q;-><init>(Lr4/g;Lr4/s;Lr4/s;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    const v4, 0x7f120082

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    new-array v2, v2, [Ljava/lang/Object;

    .line 236
    .line 237
    invoke-static {v5, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    new-instance v3, Lka/x;

    .line 242
    .line 243
    const/4 v4, 0x1

    .line 244
    invoke-direct {v3, v4, p0}, Lka/x;-><init>(ILandroidx/fragment/app/s;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lr4/g;->o0:Landroid/app/AlertDialog;

    .line 251
    .line 252
    if-eqz v0, :cond_2

    .line 253
    .line 254
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 255
    .line 256
    .line 257
    iput-object v6, p0, Lr4/g;->o0:Landroid/app/AlertDialog;

    .line 258
    .line 259
    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    iput-object v0, p0, Lr4/g;->o0:Landroid/app/AlertDialog;

    .line 264
    .line 265
    return-object v0
.end method

.method public final s(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/m;->s(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lr4/g;->k0:Z

    .line 8
    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v2, v0, Lr4/g;->m0:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v2, v0, Lr4/g;->l0:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    new-array v3, v2, [J

    .line 25
    .line 26
    iput-object v3, v0, Lr4/g;->n0:[J

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Lq4/a;->b(Landroid/content/Context;)Lq4/a;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lq4/a;->a()Lq4/f;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lq4/f;->c()Lq4/b;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_9

    .line 45
    .line 46
    invoke-virtual {v3}, Lq4/e;->a()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_0

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_0
    invoke-virtual {v3}, Lq4/b;->f()Lr4/f;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iput-object v3, v0, Lr4/g;->p0:Lr4/f;

    .line 59
    .line 60
    if-eqz v3, :cond_9

    .line 61
    .line 62
    invoke-virtual {v3}, Lr4/f;->i()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_9

    .line 67
    .line 68
    iget-object v3, v0, Lr4/g;->p0:Lr4/f;

    .line 69
    .line 70
    invoke-virtual {v3}, Lr4/f;->e()Lcom/google/android/gms/cast/MediaInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_9

    .line 75
    .line 76
    iget-object v3, v0, Lr4/g;->p0:Lr4/f;

    .line 77
    .line 78
    invoke-virtual {v3}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    iget-object v4, v4, Lcom/google/android/gms/cast/MediaStatus;->k:[J

    .line 85
    .line 86
    iput-object v4, v0, Lr4/g;->n0:[J

    .line 87
    .line 88
    :cond_1
    invoke-virtual {v3}, Lr4/f;->e()Lcom/google/android/gms/cast/MediaInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-nez v3, :cond_2

    .line 93
    .line 94
    iput-boolean v2, v0, Lr4/g;->k0:Z

    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    iget-object v3, v3, Lcom/google/android/gms/cast/MediaInfo;->f:Ljava/util/ArrayList;

    .line 98
    .line 99
    if-nez v3, :cond_3

    .line 100
    .line 101
    iput-boolean v2, v0, Lr4/g;->k0:Z

    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_5

    .line 118
    .line 119
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Lcom/google/android/gms/cast/MediaTrack;

    .line 124
    .line 125
    iget v7, v6, Lcom/google/android/gms/cast/MediaTrack;->b:I

    .line 126
    .line 127
    const/4 v8, 0x2

    .line 128
    if-ne v7, v8, :cond_4

    .line 129
    .line 130
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    iput-object v4, v0, Lr4/g;->m0:Ljava/util/ArrayList;

    .line 135
    .line 136
    new-instance v4, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_7

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    check-cast v5, Lcom/google/android/gms/cast/MediaTrack;

    .line 156
    .line 157
    iget v6, v5, Lcom/google/android/gms/cast/MediaTrack;->b:I

    .line 158
    .line 159
    if-ne v6, v1, :cond_6

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    iput-object v4, v0, Lr4/g;->l0:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_8

    .line 172
    .line 173
    iget-object v1, v0, Lr4/g;->l0:Ljava/util/ArrayList;

    .line 174
    .line 175
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 176
    .line 177
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    const v5, 0x7f120085

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    new-array v5, v2, [Ljava/lang/Object;

    .line 189
    .line 190
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    new-instance v3, Lcom/google/android/gms/cast/MediaTrack;

    .line 195
    .line 196
    const/4 v15, 0x0

    .line 197
    const/16 v16, 0x0

    .line 198
    .line 199
    const-wide/16 v7, -0x1

    .line 200
    .line 201
    const/4 v9, 0x1

    .line 202
    const-string v10, ""

    .line 203
    .line 204
    const/4 v11, 0x0

    .line 205
    const/4 v13, 0x0

    .line 206
    const/4 v14, 0x2

    .line 207
    move-object v6, v3

    .line 208
    invoke-direct/range {v6 .. v16}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lorg/json/JSONObject;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_8
    return-void

    .line 215
    :cond_9
    :goto_2
    iput-boolean v2, v0, Lr4/g;->k0:Z

    .line 216
    .line 217
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->f0:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/fragment/app/s;->B:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/m;->v()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
