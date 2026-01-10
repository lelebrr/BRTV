.class public final Landroidx/appcompat/widget/r2;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/r2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/r2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/r2;->b:Ljava/lang/Object;

    .line 3
    .line 4
    iget v2, p0, Landroidx/appcompat/widget/r2;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v1, Lka/y;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p1, v1, Lka/y;->o0:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v1, Lka/y;->p0:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, v1, Lka/y;->o0:Landroid/widget/ImageView;

    .line 25
    .line 26
    const/4 p2, 0x4

    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v1, Lka/y;->p0:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :pswitch_0
    check-cast v1, Lka/r;

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, v1, Lka/r;->l0:Z

    .line 42
    .line 43
    iget-object p1, v1, Lka/r;->e0:Landroid/view/View;

    .line 44
    .line 45
    sget p2, Lorg/bitspark/android/R$drawable;->kb_menu_item_bg_focused:I

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, v1, Lka/r;->d0:Landroid/widget/EditText;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    iget-object p1, v1, Lka/r;->d0:Landroid/widget/EditText;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v1, p1}, Lka/r;->Q(Lka/r;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    sget-object p1, Lka/r;->t0:Landroidx/mediarouter/app/c;

    .line 81
    .line 82
    const/4 p2, 0x2

    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    .line 85
    .line 86
    const/16 p1, -0x3e8

    .line 87
    .line 88
    iput p1, v1, Lka/r;->m0:I

    .line 89
    .line 90
    new-instance p1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p1}, Lka/r;->d0(Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    iget-object p1, v1, Lka/r;->e0:Landroid/view/View;

    .line 100
    .line 101
    const p2, 0x7f06031c

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    .line 106
    .line 107
    :goto_1
    return-void

    .line 108
    :pswitch_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 109
    .line 110
    .line 111
    if-eqz p2, :cond_3

    .line 112
    .line 113
    check-cast v1, Lfa/m0;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    :cond_3
    return-void

    .line 119
    :pswitch_2
    check-cast v1, Lfa/u;

    .line 120
    .line 121
    if-eqz p2, :cond_4

    .line 122
    .line 123
    iput v0, v1, Lfa/u;->c:I

    .line 124
    .line 125
    :cond_4
    sget-object p1, Lfa/u;->e:Ljava/lang/String;

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v2, "f05zT6z/y8N/TnMN75SJjScQHQrgvIGLcg==\n"

    .line 133
    .line 134
    const-string v3, "UmNeYoHS5u4=\n"

    .line 135
    .line 136
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p2, "B9u8EAPDHlZC0qYBCstd\n"

    .line 147
    .line 148
    const-string v2, "J7bvdW+mfSI=\n"

    .line 149
    .line 150
    invoke-static {p2, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget p2, v1, Lfa/u;->b:I

    .line 158
    .line 159
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 167
    .line 168
    invoke-static {p1, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget p1, v1, Lfa/u;->b:I

    .line 172
    .line 173
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_3
    check-cast v1, Lfa/p;

    .line 178
    .line 179
    if-eqz p2, :cond_5

    .line 180
    .line 181
    iput v0, v1, Lfa/p;->b:I

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_5
    const/4 p1, -0x1

    .line 185
    iput p1, v1, Lfa/p;->b:I

    .line 186
    .line 187
    :goto_2
    iget p1, v1, Lfa/p;->a:I

    .line 188
    .line 189
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :pswitch_4
    check-cast v1, Lcom/google/android/material/textfield/m;

    .line 194
    .line 195
    iget-object p1, v1, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 196
    .line 197
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    .line 198
    .line 199
    .line 200
    if-nez p2, :cond_6

    .line 201
    .line 202
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/m;->i(Z)V

    .line 203
    .line 204
    .line 205
    iput-boolean v0, v1, Lcom/google/android/material/textfield/m;->l:Z

    .line 206
    .line 207
    :cond_6
    return-void

    .line 208
    :pswitch_5
    check-cast v1, Lcom/google/android/material/textfield/e;

    .line 209
    .line 210
    invoke-static {v1}, Lcom/google/android/material/textfield/e;->d(Lcom/google/android/material/textfield/e;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/e;->e(Z)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_6
    check-cast v1, Landroidx/appcompat/widget/SearchView;

    .line 219
    .line 220
    iget-object p1, v1, Landroidx/appcompat/widget/SearchView;->K:Landroid/view/View$OnFocusChangeListener;

    .line 221
    .line 222
    if-eqz p1, :cond_7

    .line 223
    .line 224
    invoke-interface {p1, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 225
    .line 226
    .line 227
    :cond_7
    return-void

    .line 228
    nop

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
