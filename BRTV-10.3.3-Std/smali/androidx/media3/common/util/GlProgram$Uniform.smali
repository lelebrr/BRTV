.class final Landroidx/media3/common/util/GlProgram$Uniform;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Uniform"
.end annotation


# instance fields
.field private final floatValue:[F

.field private final intValue:[I

.field private final location:I

.field public final name:Ljava/lang/String;

.field private texIdValue:I

.field private texMinFilter:I

.field private texUnitIndex:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    .line 9
    .line 10
    const/16 p1, 0x10

    .line 11
    .line 12
    new-array p1, p1, [F

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 15
    .line 16
    const/4 p1, 0x4

    .line 17
    new-array p1, p1, [I

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 20
    .line 21
    const/16 p1, 0x2601

    .line 22
    .line 23
    iput p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    .line 24
    .line 25
    return-void
.end method

.method public static create(II)Landroidx/media3/common/util/GlProgram$Uniform;
    .locals 15

    .line 1
    move v11, p0

    .line 2
    const/4 v0, 0x1

    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const v2, 0x8b87

    .line 6
    .line 7
    .line 8
    const/4 v12, 0x0

    .line 9
    invoke-static {p0, v2, v1, v12}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 10
    .line 11
    .line 12
    new-array v13, v0, [I

    .line 13
    .line 14
    aget v2, v1, v12

    .line 15
    .line 16
    new-array v14, v2, [B

    .line 17
    .line 18
    new-array v3, v0, [I

    .line 19
    .line 20
    new-array v5, v0, [I

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move v0, p0

    .line 27
    move/from16 v1, p1

    .line 28
    .line 29
    move-object v7, v13

    .line 30
    move-object v9, v14

    .line 31
    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v14}, Landroidx/media3/common/util/GlProgram;->access$000([B)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-direct {v0, v14, v12, v1}, Ljava/lang/String;-><init>([BII)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Landroidx/media3/common/util/GlProgram;->access$200(ILjava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    new-instance v2, Landroidx/media3/common/util/GlProgram$Uniform;

    .line 48
    .line 49
    aget v3, v13, v12

    .line 50
    .line 51
    invoke-direct {v2, v0, v1, v3}, Landroidx/media3/common/util/GlProgram$Uniform;-><init>(Ljava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    return-object v2
.end method


# virtual methods
.method public bind(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    .line 2
    .line 3
    const/16 v1, 0x1404

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_8

    .line 8
    .line 9
    const/16 v1, 0x1406

    .line 10
    .line 11
    if-eq v0, v1, :cond_7

    .line 12
    .line 13
    const v1, 0x8b5e    # 4.9996E-41f

    .line 14
    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const v4, 0x8be7

    .line 19
    .line 20
    .line 21
    if-eq v0, v4, :cond_0

    .line 22
    .line 23
    const v4, 0x8d66

    .line 24
    .line 25
    .line 26
    if-eq v0, v4, :cond_0

    .line 27
    .line 28
    packed-switch v0, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    packed-switch v0, :pswitch_data_1

    .line 32
    .line 33
    .line 34
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "Unexpected uniform type: "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :pswitch_0
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 59
    .line 60
    invoke-static {p1, v2, v3, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :pswitch_1
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 69
    .line 70
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 71
    .line 72
    invoke-static {p1, v2, v3, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :pswitch_2
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 83
    .line 84
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform4iv(II[II)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :pswitch_3
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 93
    .line 94
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 95
    .line 96
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform3iv(II[II)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :pswitch_4
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 105
    .line 106
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 107
    .line 108
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform2iv(II[II)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :pswitch_5
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 117
    .line 118
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 119
    .line 120
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_3

    .line 127
    .line 128
    :pswitch_6
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 129
    .line 130
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 131
    .line 132
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :pswitch_7
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 141
    .line 142
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 143
    .line 144
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 145
    .line 146
    .line 147
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_3

    .line 151
    .line 152
    :cond_0
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texIdValue:I

    .line 153
    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    const v0, 0x84c0

    .line 157
    .line 158
    .line 159
    iget v2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texUnitIndex:I

    .line 160
    .line 161
    add-int/2addr v2, v0

    .line 162
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 166
    .line 167
    .line 168
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    .line 169
    .line 170
    const/16 v2, 0xde1

    .line 171
    .line 172
    if-ne v0, v1, :cond_1

    .line 173
    .line 174
    const/16 v3, 0xde1

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_1
    const v3, 0x8d65

    .line 178
    .line 179
    .line 180
    :goto_0
    iget v4, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texIdValue:I

    .line 181
    .line 182
    if-eq v0, v1, :cond_3

    .line 183
    .line 184
    if-nez p1, :cond_2

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_2
    const/16 p1, 0x2600

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_3
    :goto_1
    const/16 p1, 0x2601

    .line 191
    .line 192
    :goto_2
    invoke-static {v3, v4, p1}, Landroidx/media3/common/util/GlUtil;->bindTexture(III)V

    .line 193
    .line 194
    .line 195
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    .line 196
    .line 197
    if-ne p1, v1, :cond_5

    .line 198
    .line 199
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    .line 200
    .line 201
    const/16 v0, 0x2703

    .line 202
    .line 203
    if-ne p1, v0, :cond_4

    .line 204
    .line 205
    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 206
    .line 207
    .line 208
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 209
    .line 210
    .line 211
    :cond_4
    const/16 p1, 0x2801

    .line 212
    .line 213
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    .line 214
    .line 215
    invoke-static {v2, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 216
    .line 217
    .line 218
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 219
    .line 220
    .line 221
    :cond_5
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 222
    .line 223
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texUnitIndex:I

    .line 224
    .line 225
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 226
    .line 227
    .line 228
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 233
    .line 234
    const-string v0, "No call to setSamplerTexId() before bind."

    .line 235
    .line 236
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1

    .line 240
    :cond_7
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 241
    .line 242
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 243
    .line 244
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 245
    .line 246
    .line 247
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_8
    iget p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 252
    .line 253
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 254
    .line 255
    invoke-static {p1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    .line 256
    .line 257
    .line 258
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 259
    .line 260
    .line 261
    :goto_3
    return-void

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0x8b50
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :pswitch_data_1
    .packed-switch 0x8b5b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFloat(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    return-void
.end method

.method public setFloats([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setInt(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    return-void
.end method

.method public setInts([I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSamplerTexId(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texIdValue:I

    .line 2
    .line 3
    iput p2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texUnitIndex:I

    .line 4
    .line 5
    return-void
.end method

.method public setTexMinFilter(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    .line 2
    .line 3
    return-void
.end method
