.class public final Lsa/k;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Landroid/content/DialogInterface$OnClickListener;

.field public i:Landroid/content/DialogInterface$OnClickListener;

.field public j:Lka/s;

.field public k:Lfa/v;

.field public l:Lcom/dinuscxj/progressbar/CircleProgressBar;

.field public m:Landroid/widget/ImageView;

.field public n:Landroid/widget/Button;

.field public o:Landroid/widget/Button;

.field public p:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lsa/k;->g:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lsa/k;->k:Lfa/v;

    .line 9
    .line 10
    iput-object p1, p0, Lsa/k;->a:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lsa/e;
    .locals 6

    .line 1
    const-string v0, "mc6KD9rZcEqbyZ8B28hd\n"

    .line 2
    .line 3
    const-string v1, "9a/zYK+tLyM=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lsa/k;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/LayoutInflater;

    .line 16
    .line 17
    new-instance v2, Lsa/e;

    .line 18
    .line 19
    const v3, 0x7f130116

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    const v1, 0x7f0e0038

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    const/4 v3, -0x1

    .line 36
    const/4 v4, -0x2

    .line 37
    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0, v1}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    const v1, 0x7f0b041d

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v3, p0, Lsa/k;->b:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lsa/k;->d:Ljava/lang/String;

    .line 58
    .line 59
    const v3, 0x7f0b0352

    .line 60
    .line 61
    .line 62
    const/16 v4, 0x8

    .line 63
    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/widget/Button;

    .line 71
    .line 72
    iput-object v1, p0, Lsa/k;->n:Landroid/widget/Button;

    .line 73
    .line 74
    iget-object v3, p0, Lsa/k;->d:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lsa/k;->n:Landroid/widget/Button;

    .line 80
    .line 81
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lsa/k;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 85
    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    iget-object v1, p0, Lsa/k;->n:Landroid/widget/Button;

    .line 89
    .line 90
    new-instance v3, Lsa/j;

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    invoke-direct {v3, p0, v2, v5}, Lsa/j;-><init>(Lsa/k;Lsa/e;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    :cond_1
    :goto_0
    iget-object v1, p0, Lsa/k;->e:Ljava/lang/String;

    .line 108
    .line 109
    const v3, 0x7f0b031a

    .line 110
    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroid/widget/Button;

    .line 119
    .line 120
    iput-object v1, p0, Lsa/k;->o:Landroid/widget/Button;

    .line 121
    .line 122
    iget-object v3, p0, Lsa/k;->e:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lsa/k;->k:Lfa/v;

    .line 128
    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    iget-object v3, p0, Lsa/k;->o:Landroid/widget/Button;

    .line 132
    .line 133
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    iget-object v1, p0, Lsa/k;->o:Landroid/widget/Button;

    .line 138
    .line 139
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 140
    .line 141
    .line 142
    :goto_1
    iget-object v1, p0, Lsa/k;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 143
    .line 144
    if-eqz v1, :cond_4

    .line 145
    .line 146
    iget-object v1, p0, Lsa/k;->o:Landroid/widget/Button;

    .line 147
    .line 148
    new-instance v3, Lsa/j;

    .line 149
    .line 150
    const/4 v5, 0x1

    .line 151
    invoke-direct {v3, p0, v2, v5}, Lsa/j;-><init>(Lsa/k;Lsa/e;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    :cond_4
    :goto_2
    iget-object v1, p0, Lsa/k;->f:Ljava/lang/String;

    .line 166
    .line 167
    const v3, 0x7f0b00a4

    .line 168
    .line 169
    .line 170
    if-eqz v1, :cond_5

    .line 171
    .line 172
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Landroid/widget/Button;

    .line 177
    .line 178
    iput-object v1, p0, Lsa/k;->p:Landroid/widget/Button;

    .line 179
    .line 180
    const/4 v3, 0x0

    .line 181
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    iget-object v1, p0, Lsa/k;->p:Landroid/widget/Button;

    .line 185
    .line 186
    iget-object v3, p0, Lsa/k;->f:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lsa/k;->p:Landroid/widget/Button;

    .line 192
    .line 193
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Lsa/k;->j:Lka/s;

    .line 197
    .line 198
    if-eqz v1, :cond_6

    .line 199
    .line 200
    iget-object v1, p0, Lsa/k;->p:Landroid/widget/Button;

    .line 201
    .line 202
    new-instance v3, Lsa/j;

    .line 203
    .line 204
    const/4 v4, 0x2

    .line 205
    invoke-direct {v3, p0, v2, v4}, Lsa/j;-><init>(Lsa/k;Lsa/e;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    :cond_6
    :goto_3
    iget-object v1, p0, Lsa/k;->c:Ljava/lang/String;

    .line 220
    .line 221
    if-eqz v1, :cond_7

    .line 222
    .line 223
    const v1, 0x7f0b02ab

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    check-cast v1, Landroid/widget/TextView;

    .line 231
    .line 232
    iget-object v3, p0, Lsa/k;->c:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 242
    .line 243
    .line 244
    :cond_7
    const v1, 0x7f0b0122

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    check-cast v1, Lcom/dinuscxj/progressbar/CircleProgressBar;

    .line 252
    .line 253
    iput-object v1, p0, Lsa/k;->l:Lcom/dinuscxj/progressbar/CircleProgressBar;

    .line 254
    .line 255
    const v1, 0x7f0b0121

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Landroid/widget/ImageView;

    .line 263
    .line 264
    iput-object v1, p0, Lsa/k;->m:Landroid/widget/ImageView;

    .line 265
    .line 266
    iget v3, p0, Lsa/k;->g:I

    .line 267
    .line 268
    if-eqz v3, :cond_8

    .line 269
    .line 270
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    .line 272
    .line 273
    :cond_8
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 274
    .line 275
    .line 276
    return-object v2
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const p3, 0x7f0b031a

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne p1, p3, :cond_0

    .line 11
    .line 12
    if-ne p2, v1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lsa/k;->o:Landroid/widget/Button;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    const p3, 0x7f0b0352

    .line 21
    .line 22
    .line 23
    if-ne p1, p3, :cond_1

    .line 24
    .line 25
    if-ne p2, v1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lsa/k;->n:Landroid/widget/Button;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 30
    .line 31
    .line 32
    return v0

    .line 33
    :cond_1
    const p3, 0x7f0b00a4

    .line 34
    .line 35
    .line 36
    if-ne p1, p3, :cond_2

    .line 37
    .line 38
    if-ne p2, v1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lsa/k;->p:Landroid/widget/Button;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :cond_2
    const/4 p1, 0x0

    .line 47
    return p1
.end method
