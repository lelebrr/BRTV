.class public final Lma/a;
.super Lt3/a;
.source "MyApplication"


# instance fields
.field public e:Lna/a;

.field public f:Lna/a;

.field public g:Lna/a;

.field public h:J

.field public i:J

.field public j:J

.field public k:Z

.field public l:Z

.field public m:Lfa/n0;

.field public n:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "WUNKI4e5KJ5TQlIRnL0o\n"

    .line 2
    .line 3
    const-string v1, "EiYzYejYWvo=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lt3/d;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Loa/a;

    .line 2
    .line 3
    iget-object v0, p1, Lt3/d;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getItemViewType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x7f0b043d

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v0, p2, Loa/a;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lpa/a;->a(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object p2, p2, Loa/a;->a:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "e7GxQckziSNzublJwTuBO2uhoVHZI5kzY6k=\n"

    .line 28
    .line 29
    const-string v2, "GtPSJaxV7ks=\n"

    .line 30
    .line 31
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :pswitch_0
    sget p2, Lorg/bitspark/android/R$drawable;->iv_commom_kb_space:I

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .line 68
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :pswitch_1
    iget-object p2, p2, Loa/a;->a:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_2
    iget-object p2, p2, Loa/a;->a:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_3
    iget-object p2, p2, Loa/a;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_4
    sget p2, Lorg/bitspark/android/R$drawable;->iv_commom_kb_lowercase:I

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/ImageView;

    .line 117
    .line 118
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    .line 120
    .line 121
    sget p2, Lorg/bitspark/android/R$drawable;->selector_keyboard_key_alphabet:I

    .line 122
    .line 123
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :pswitch_5
    sget p2, Lorg/bitspark/android/R$drawable;->iv_common_kb_delete_small:I

    .line 132
    .line 133
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroid/widget/ImageView;

    .line 138
    .line 139
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    new-instance v2, Lfa/j0;

    .line 151
    .line 152
    const/4 v3, 0x4

    .line 153
    invoke-direct {v2, p0, p1, v0, v3}, Lfa/j0;-><init>(Landroidx/recyclerview/widget/k0;Landroidx/recyclerview/widget/p1;II)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :pswitch_6
    sget p2, Lorg/bitspark/android/R$drawable;->iv_common_kb_delete_smaller:I

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroid/widget/ImageView;

    .line 167
    .line 168
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    new-instance v2, Lfa/j0;

    .line 180
    .line 181
    const/4 v3, 0x4

    .line 182
    invoke-direct {v2, p0, p1, v0, v3}, Lfa/j0;-><init>(Landroidx/recyclerview/widget/k0;Landroidx/recyclerview/widget/p1;II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_0
    iget-object p2, p2, Loa/a;->a:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/widget/TextView;

    .line 196
    .line 197
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    iget-object p2, p1, Lt3/d;->b:Landroid/view/View;

    .line 201
    .line 202
    check-cast p2, Landroid/widget/TextView;

    .line 203
    .line 204
    const/high16 v0, 0x41a00000    # 20.0f

    .line 205
    .line 206
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 207
    .line 208
    .line 209
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    new-instance v0, Lcom/google/android/material/textfield/l;

    .line 214
    .line 215
    const/4 v2, 0x1

    .line 216
    invoke-direct {v0, p0, v2, p1}, Lcom/google/android/material/textfield/l;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    new-instance v0, Lfa/f;

    .line 227
    .line 228
    invoke-direct {v0, p0, p1}, Lfa/f;-><init>(Lma/a;Lt3/d;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v1}, Lt3/d;->b(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    new-instance v0, Landroidx/mediarouter/app/z;

    .line 239
    .line 240
    const/4 v1, 0x3

    .line 241
    invoke-direct {v0, p0, v1, p1}, Landroidx/mediarouter/app/z;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    nop

    .line 249
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
