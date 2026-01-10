.class public final Lea/p0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb2/j;


# instance fields
.field public final synthetic a:Lorg/bitspark/android/Spark;


# direct methods
.method public constructor <init>(Lorg/bitspark/android/Spark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lea/p0;->a:Lorg/bitspark/android/Spark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IF)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    .line 1
    const-string v0, "X3gE05ps\n"

    .line 2
    .line 3
    const-string v1, "HStJsvMCXRU=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "LBQ7Ev5XkUAvHwgH/Fb4BQ==\n"

    .line 15
    .line 16
    const-string v3, "Q3prc5kywiU=\n"

    .line 17
    .line 18
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget-object v2, Lea/g;->o:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lea/g;->o:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lea/c;

    .line 58
    .line 59
    iget-object v0, p0, Lea/p0;->a:Lorg/bitspark/android/Spark;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    sget-object v1, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 65
    .line 66
    iget-boolean v1, v1, Lorg/bitspark/android/utils/o;->e:Z

    .line 67
    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    iget-object v1, v0, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 71
    .line 72
    invoke-virtual {v1}, Lta/a;->f()V

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const/4 v1, 0x0

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 81
    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :pswitch_0
    iget-object p1, v0, Lorg/bitspark/android/Spark;->H:Landroid/widget/RadioButton;

    .line 86
    .line 87
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 88
    .line 89
    .line 90
    iget-object p1, v0, Lorg/bitspark/android/Spark;->z:Lorg/bitspark/android/view/AutoLayoutRadioGroup;

    .line 91
    .line 92
    const v2, 0x7f0b0366

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, v0, Lorg/bitspark/android/Spark;->O:Lfa/y;

    .line 99
    .line 100
    invoke-virtual {p1}, Lb2/a;->d()V

    .line 101
    .line 102
    .line 103
    iput-boolean v1, v0, Lorg/bitspark/android/Spark;->K0:Z

    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :pswitch_1
    iget-object p1, v0, Lorg/bitspark/android/Spark;->G:Landroid/widget/RadioButton;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 110
    .line 111
    .line 112
    iget-object p1, v0, Lorg/bitspark/android/Spark;->z:Lorg/bitspark/android/view/AutoLayoutRadioGroup;

    .line 113
    .line 114
    const v2, 0x7f0b0368

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, v0, Lorg/bitspark/android/Spark;->O:Lfa/y;

    .line 121
    .line 122
    invoke-virtual {p1}, Lb2/a;->d()V

    .line 123
    .line 124
    .line 125
    iput-boolean v1, v0, Lorg/bitspark/android/Spark;->K0:Z

    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :pswitch_2
    iget-object p1, v0, Lorg/bitspark/android/Spark;->F:Landroid/widget/RadioButton;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 132
    .line 133
    .line 134
    iget-object p1, v0, Lorg/bitspark/android/Spark;->z:Lorg/bitspark/android/view/AutoLayoutRadioGroup;

    .line 135
    .line 136
    const v2, 0x7f0b0364

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 140
    .line 141
    .line 142
    iget-object p1, v0, Lorg/bitspark/android/Spark;->O:Lfa/y;

    .line 143
    .line 144
    invoke-virtual {p1}, Lb2/a;->d()V

    .line 145
    .line 146
    .line 147
    iput-boolean v1, v0, Lorg/bitspark/android/Spark;->K0:Z

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :pswitch_3
    iget-object p1, v0, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 151
    .line 152
    if-eqz p1, :cond_1

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_1

    .line 159
    .line 160
    iget-object p1, v0, Lorg/bitspark/android/Spark;->E:Landroid/widget/RadioButton;

    .line 161
    .line 162
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 163
    .line 164
    .line 165
    :cond_1
    iget-object p1, v0, Lorg/bitspark/android/Spark;->z:Lorg/bitspark/android/view/AutoLayoutRadioGroup;

    .line 166
    .line 167
    const v2, 0x7f0b0369

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 171
    .line 172
    .line 173
    iget-object p1, v0, Lorg/bitspark/android/Spark;->O:Lfa/y;

    .line 174
    .line 175
    invoke-virtual {p1}, Lb2/a;->d()V

    .line 176
    .line 177
    .line 178
    iput-boolean v1, v0, Lorg/bitspark/android/Spark;->K0:Z

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :pswitch_4
    iget-object p1, v0, Lorg/bitspark/android/Spark;->D:Landroid/widget/RadioButton;

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 184
    .line 185
    .line 186
    iget-object p1, v0, Lorg/bitspark/android/Spark;->z:Lorg/bitspark/android/view/AutoLayoutRadioGroup;

    .line 187
    .line 188
    const v2, 0x7f0b0365

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 192
    .line 193
    .line 194
    iget-object p1, v0, Lorg/bitspark/android/Spark;->O:Lfa/y;

    .line 195
    .line 196
    invoke-virtual {p1}, Lb2/a;->d()V

    .line 197
    .line 198
    .line 199
    iput-boolean v1, v0, Lorg/bitspark/android/Spark;->K0:Z

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :pswitch_5
    iget-object p1, v0, Lorg/bitspark/android/Spark;->C:Landroid/widget/RadioButton;

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 205
    .line 206
    .line 207
    iget-object p1, v0, Lorg/bitspark/android/Spark;->z:Lorg/bitspark/android/view/AutoLayoutRadioGroup;

    .line 208
    .line 209
    const v2, 0x7f0b036a

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 213
    .line 214
    .line 215
    iget-object p1, v0, Lorg/bitspark/android/Spark;->O:Lfa/y;

    .line 216
    .line 217
    invoke-virtual {p1}, Lb2/a;->d()V

    .line 218
    .line 219
    .line 220
    iput-boolean v1, v0, Lorg/bitspark/android/Spark;->K0:Z

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :pswitch_6
    iget-object p1, v0, Lorg/bitspark/android/Spark;->B:Landroid/widget/RadioButton;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 226
    .line 227
    .line 228
    iget-object p1, v0, Lorg/bitspark/android/Spark;->z:Lorg/bitspark/android/view/AutoLayoutRadioGroup;

    .line 229
    .line 230
    const v1, 0x7f0b0367

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 234
    .line 235
    .line 236
    iget-object p1, v0, Lorg/bitspark/android/Spark;->O:Lfa/y;

    .line 237
    .line 238
    invoke-virtual {p1}, Lb2/a;->d()V

    .line 239
    .line 240
    .line 241
    const/4 p1, 0x1

    .line 242
    iput-boolean p1, v0, Lorg/bitspark/android/Spark;->K0:Z

    .line 243
    .line 244
    :goto_0
    return-void

    .line 245
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
