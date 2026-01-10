.class public final Lfa/t;
.super Lfa/u;
.source "MyApplication"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field public g:Ljava/util/List;

.field public h:Lfa/o0;

.field public final i:Lorg/bitspark/android/Constants$VIDEO_TYPE;

.field public final j:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ch1qL9fgRAteFWkv3eA=\n"

    .line 2
    .line 3
    const-string v1, "OnQZW7iSPUo=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/bitspark/android/Constants$VIDEO_TYPE;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lfa/u;-><init>(Lorg/bitspark/android/Constants$VIDEO_TYPE;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    const-string v1, "9u10bbvILZCooFQ=\n"

    .line 7
    .line 8
    const-string v2, "ks05IPboZdg=\n"

    .line 9
    .line 10
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lfa/t;->j:Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    iput-object p2, p0, Lfa/t;->i:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 24
    .line 25
    iput-object p1, p0, Lfa/t;->g:Ljava/util/List;

    .line 26
    .line 27
    new-instance p1, Lfa/r;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lfa/r;-><init>(Lfa/t;)V

    .line 30
    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    new-instance v0, Lfa/r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lfa/r;-><init>(Lfa/t;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/t;->g:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    check-cast p1, Lfa/s;

    .line 3
    .line 4
    iget v1, p0, Lfa/u;->b:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p2, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget v3, p0, Lfa/u;->c:I

    .line 15
    .line 16
    if-ltz v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v2, 0x0

    .line 20
    :goto_1
    iget-object v3, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lfa/t;->g:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lorg/bitspark/android/beans/HistoryBean;

    .line 32
    .line 33
    iget-object v3, p1, Lfa/s;->c:Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object v4, p0, Lfa/t;->j:Ljava/text/SimpleDateFormat;

    .line 36
    .line 37
    iget-object v5, v1, Lorg/bitspark/android/beans/HistoryBean;->date:Ljava/util/Date;

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p1, Lfa/s;->a:Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v4, v1, Lorg/bitspark/android/beans/HistoryBean;->name:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, v1, Lorg/bitspark/android/beans/HistoryBean;->type:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 54
    .line 55
    sget-object v4, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSLIVE:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 56
    .line 57
    if-ne v3, v4, :cond_4

    .line 58
    .line 59
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 64
    .line 65
    iget v4, v1, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 66
    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 78
    .line 79
    iget v4, v1, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 80
    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Lorg/bitspark/android/beans/ChannelBean;

    .line 90
    .line 91
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean;->getEpgSameAs()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-lez v3, :cond_2

    .line 96
    .line 97
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 98
    .line 99
    iget v1, v1, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lorg/bitspark/android/beans/ChannelBean;

    .line 110
    .line 111
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getEpgSameAs()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    goto :goto_2

    .line 116
    :cond_2
    iget v1, v1, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 117
    .line 118
    :goto_2
    iget-object v3, p1, Lfa/s;->b:Landroid/widget/TextView;

    .line 119
    .line 120
    invoke-static {v1}, Lga/h;->c(I)Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-nez v4, :cond_3

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 137
    .line 138
    invoke-virtual {v1}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    goto :goto_3

    .line 143
    :cond_3
    const-string v1, ""

    .line 144
    .line 145
    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_4
    iget-object v3, p1, Lfa/s;->b:Landroid/widget/TextView;

    .line 150
    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-wide v5, v1, Lorg/bitspark/android/beans/HistoryBean;->lastPosition:J

    .line 157
    .line 158
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    sget-boolean v6, Lorg/bitspark/android/utils/m;->b:Z

    .line 163
    .line 164
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 165
    .line 166
    const-string v7, "NlDoxWB2yA==\n"

    .line 167
    .line 168
    const-string v8, "fmqFqFoFu+U=\n"

    .line 169
    .line 170
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    sget-object v8, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 175
    .line 176
    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 177
    .line 178
    .line 179
    const-string v7, "PZdPPX6xRBg=\n"

    .line 180
    .line 181
    const-string v8, "etobFk6LdCg=\n"

    .line 182
    .line 183
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v5, " "

    .line 202
    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v1, v1, Lorg/bitspark/android/beans/HistoryBean;->subTitle:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    :goto_4
    if-eqz v2, :cond_5

    .line 219
    .line 220
    iget-object v1, p1, Lfa/s;->a:Landroid/widget/TextView;

    .line 221
    .line 222
    const/4 v2, -0x1

    .line 223
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    .line 225
    .line 226
    iget-object v1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 227
    .line 228
    sget v2, Lorg/bitspark/android/R$drawable;->history_focus_bg:I

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_5
    iget-object v1, p1, Lfa/s;->a:Landroid/widget/TextView;

    .line 235
    .line 236
    const v2, -0x50000001

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    .line 241
    .line 242
    iget-object v1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 243
    .line 244
    sget v2, Lorg/bitspark/android/R$drawable;->history_unfocus_bg:I

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    .line 248
    .line 249
    :goto_5
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 250
    .line 251
    new-instance v1, Lfa/q;

    .line 252
    .line 253
    invoke-direct {v1, p0, p2, v0}, Lfa/q;-><init>(Landroidx/recyclerview/widget/k0;II)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 1

    .line 1
    const p2, 0x7f0e0055

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p2, p1, v0}, La/e;->i(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lfa/s;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0b01ea

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v0, p2, Lfa/s;->a:Landroid/widget/TextView;

    .line 24
    .line 25
    const v0, 0x7f0b035a

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object v0, p2, Lfa/s;->b:Landroid/widget/TextView;

    .line 35
    .line 36
    const v0, 0x7f0b047f

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object p1, p2, Lfa/s;->c:Landroid/widget/TextView;

    .line 46
    .line 47
    return-object p2
.end method
