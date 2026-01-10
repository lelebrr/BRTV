.class public final Ld3/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final a:Le3/v;

.field public final b:I

.field public final c:I

.field public final d:Lv2/a;

.field public final e:Le3/n;

.field public final f:Z

.field public final g:Lv2/i;


# direct methods
.method public constructor <init>(IILv2/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Le3/v;->a()Le3/v;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Ld3/b;->a:Le3/v;

    .line 9
    .line 10
    iput p1, p0, Ld3/b;->b:I

    .line 11
    .line 12
    iput p2, p0, Ld3/b;->c:I

    .line 13
    .line 14
    sget-object p1, Le3/p;->f:Lv2/g;

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lv2/a;

    .line 21
    .line 22
    iput-object p1, p0, Ld3/b;->d:Lv2/a;

    .line 23
    .line 24
    sget-object p1, Le3/n;->g:Lv2/g;

    .line 25
    .line 26
    invoke-virtual {p3, p1}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Le3/n;

    .line 31
    .line 32
    iput-object p1, p0, Ld3/b;->e:Le3/n;

    .line 33
    .line 34
    sget-object p1, Le3/p;->i:Lv2/g;

    .line 35
    .line 36
    invoke-virtual {p3, p1}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p3, p1}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    iput-boolean p1, p0, Ld3/b;->f:Z

    .line 58
    .line 59
    sget-object p1, Le3/p;->g:Lv2/g;

    .line 60
    .line 61
    invoke-virtual {p3, p1}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lv2/i;

    .line 66
    .line 67
    iput-object p1, p0, Ld3/b;->g:Lv2/i;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 6

    .line 1
    iget-object p3, p0, Ld3/b;->a:Le3/v;

    .line 2
    .line 3
    iget v0, p0, Ld3/b;->b:I

    .line 4
    .line 5
    iget v1, p0, Ld3/b;->c:I

    .line 6
    .line 7
    iget-boolean v2, p0, Ld3/b;->f:Z

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p3, v0, v1, v2, v3}, Le3/v;->c(IIZZ)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Landroid/support/v4/media/session/b;->r(Landroid/graphics/ImageDecoder;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/b;->B(Landroid/graphics/ImageDecoder;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p3, p0, Ld3/b;->d:Lv2/a;

    .line 24
    .line 25
    sget-object v0, Lv2/a;->b:Lv2/a;

    .line 26
    .line 27
    if-ne p3, v0, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Landroid/support/v4/media/session/b;->D(Landroid/graphics/ImageDecoder;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    new-instance p3, Ld3/a;

    .line 33
    .line 34
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p3}, Landroid/support/v4/media/session/b;->u(Landroid/graphics/ImageDecoder;Ld3/a;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Landroid/support/v4/media/session/b;->q(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iget v0, p0, Ld3/b;->b:I

    .line 45
    .line 46
    const/high16 v1, -0x80000000

    .line 47
    .line 48
    if-ne v0, v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :cond_2
    iget v2, p0, Ld3/b;->c:I

    .line 55
    .line 56
    if-ne v2, v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :cond_3
    iget-object v1, p0, Ld3/b;->e:Le3/n;

    .line 63
    .line 64
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {v1, v3, v4, v0, v2}, Le3/n;->b(IIII)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    int-to-float v1, v1

    .line 81
    mul-float v1, v1, v0

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    int-to-float v2, v2

    .line 92
    mul-float v2, v2, v0

    .line 93
    .line 94
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const-string v3, "ImageDecoder"

    .line 99
    .line 100
    const/4 v4, 0x2

    .line 101
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_4

    .line 106
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v5, "Resizing from ["

    .line 110
    .line 111
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v5, "x"

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p3, "] to ["

    .line 134
    .line 135
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p3, "] scaleFactor: "

    .line 148
    .line 149
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    invoke-static {v3, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    :cond_4
    invoke-static {p1, v1, v2}, Landroid/support/v4/media/session/b;->s(Landroid/graphics/ImageDecoder;II)V

    .line 163
    .line 164
    .line 165
    iget-object p3, p0, Ld3/b;->g:Lv2/i;

    .line 166
    .line 167
    if-eqz p3, :cond_7

    .line 168
    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 170
    .line 171
    const/16 v1, 0x1c

    .line 172
    .line 173
    if-lt v0, v1, :cond_6

    .line 174
    .line 175
    sget-object v0, Lv2/i;->a:Lv2/i;

    .line 176
    .line 177
    if-ne p3, v0, :cond_5

    .line 178
    .line 179
    invoke-static {p2}, Landroid/support/v4/media/session/b;->f(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    if-eqz p3, :cond_5

    .line 184
    .line 185
    invoke-static {p2}, Landroid/support/v4/media/session/b;->f(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/c;->w(Landroid/graphics/ColorSpace;)Z

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    if-eqz p2, :cond_5

    .line 194
    .line 195
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->f()Landroid/graphics/ColorSpace$Named;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    goto :goto_1

    .line 200
    :cond_5
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->z()Landroid/graphics/ColorSpace$Named;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    :goto_1
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/c;->h(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-static {p1, p2}, Landroid/support/v4/media/session/b;->t(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_6
    const/16 p2, 0x1a

    .line 213
    .line 214
    if-lt v0, p2, :cond_7

    .line 215
    .line 216
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->z()Landroid/graphics/ColorSpace$Named;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/c;->h(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-static {p1, p2}, Landroid/support/v4/media/session/b;->t(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    .line 225
    .line 226
    .line 227
    :cond_7
    :goto_2
    return-void
.end method
