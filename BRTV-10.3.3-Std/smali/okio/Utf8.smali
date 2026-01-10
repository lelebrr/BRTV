.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final HIGH_SURROGATE_HEADER:I = 0xd7c0

.field public static final LOG_SURROGATE_HEADER:I = 0xdc00

.field public static final MASK_2BYTES:I = 0xf80

.field public static final MASK_3BYTES:I = -0x1e080

.field public static final MASK_4BYTES:I = 0x381f80

.field public static final REPLACEMENT_BYTE:B = 0x3ft

.field public static final REPLACEMENT_CHARACTER:C = '\ufffd'

.field public static final REPLACEMENT_CODE_POINT:I = 0xfffd


# direct methods
.method public static final isIsoControl(I)Z
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x7f

    .line 9
    .line 10
    if-gt v0, p0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0xa0

    .line 13
    .line 14
    if-ge p0, v0, :cond_1

    .line 15
    .line 16
    :goto_0
    const/4 p0, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    :goto_1
    return p0
.end method

.method public static final isUtf8Continuation(B)Z
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0xc0

    .line 2
    .line 3
    const/16 v0, 0x80

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static final process2Utf8Bytes([BIILi9/l;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Li9/l;",
            ")I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yield"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v0, p1, 0x1

    .line 12
    .line 13
    const v1, 0xfffd

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-gt p2, v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p3, v1}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    aget-byte p1, p0, p1

    .line 28
    .line 29
    aget-byte p0, p0, v0

    .line 30
    .line 31
    and-int/lit16 p2, p0, 0xc0

    .line 32
    .line 33
    const/16 v0, 0x80

    .line 34
    .line 35
    if-ne p2, v0, :cond_2

    .line 36
    .line 37
    xor-int/lit16 p0, p0, 0xf80

    .line 38
    .line 39
    shl-int/lit8 p1, p1, 0x6

    .line 40
    .line 41
    xor-int/2addr p0, p1

    .line 42
    if-ge p0, v0, :cond_1

    .line 43
    .line 44
    invoke-interface {p3, v1}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p3, p0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :goto_0
    const/4 p0, 0x2

    .line 56
    return p0

    .line 57
    :cond_2
    invoke-interface {p3, v1}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return v2
.end method

.method public static final process3Utf8Bytes([BIILi9/l;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Li9/l;",
            ")I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yield"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v0, p1, 0x2

    .line 12
    .line 13
    const/16 v1, 0x80

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const v3, 0xfffd

    .line 17
    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x2

    .line 24
    if-gt p2, v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p3, v3}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    add-int/2addr p1, v2

    .line 30
    if-le p2, p1, :cond_0

    .line 31
    .line 32
    aget-byte p0, p0, p1

    .line 33
    .line 34
    and-int/lit16 p0, p0, 0xc0

    .line 35
    .line 36
    if-ne p0, v1, :cond_0

    .line 37
    .line 38
    return v4

    .line 39
    :cond_0
    return v2

    .line 40
    :cond_1
    aget-byte p2, p0, p1

    .line 41
    .line 42
    add-int/2addr p1, v2

    .line 43
    aget-byte p1, p0, p1

    .line 44
    .line 45
    and-int/lit16 v5, p1, 0xc0

    .line 46
    .line 47
    if-ne v5, v1, :cond_5

    .line 48
    .line 49
    aget-byte p0, p0, v0

    .line 50
    .line 51
    and-int/lit16 v0, p0, 0xc0

    .line 52
    .line 53
    if-ne v0, v1, :cond_4

    .line 54
    .line 55
    const v0, -0x1e080

    .line 56
    .line 57
    .line 58
    xor-int/2addr p0, v0

    .line 59
    shl-int/lit8 p1, p1, 0x6

    .line 60
    .line 61
    xor-int/2addr p0, p1

    .line 62
    shl-int/lit8 p1, p2, 0xc

    .line 63
    .line 64
    xor-int/2addr p0, p1

    .line 65
    const/16 p1, 0x800

    .line 66
    .line 67
    if-ge p0, p1, :cond_2

    .line 68
    .line 69
    invoke-interface {p3, v3}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const p1, 0xd800

    .line 74
    .line 75
    .line 76
    if-gt p1, p0, :cond_3

    .line 77
    .line 78
    const p1, 0xe000

    .line 79
    .line 80
    .line 81
    if-ge p0, p1, :cond_3

    .line 82
    .line 83
    invoke-interface {p3, v3}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-interface {p3, p0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :goto_0
    const/4 p0, 0x3

    .line 95
    return p0

    .line 96
    :cond_4
    invoke-interface {p3, v3}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    return v4

    .line 100
    :cond_5
    invoke-interface {p3, v3}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    return v2
.end method

.method public static final process4Utf8Bytes([BIILi9/l;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Li9/l;",
            ")I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yield"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v0, p1, 0x3

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x1

    .line 15
    const/16 v3, 0x80

    .line 16
    .line 17
    const v4, 0xfffd

    .line 18
    .line 19
    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x3

    .line 25
    if-gt p2, v0, :cond_2

    .line 26
    .line 27
    invoke-interface {p3, v4}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    add-int/lit8 p3, p1, 0x1

    .line 31
    .line 32
    if-le p2, p3, :cond_1

    .line 33
    .line 34
    aget-byte p3, p0, p3

    .line 35
    .line 36
    and-int/lit16 p3, p3, 0xc0

    .line 37
    .line 38
    if-ne p3, v3, :cond_1

    .line 39
    .line 40
    add-int/2addr p1, v1

    .line 41
    if-le p2, p1, :cond_0

    .line 42
    .line 43
    aget-byte p0, p0, p1

    .line 44
    .line 45
    and-int/lit16 p0, p0, 0xc0

    .line 46
    .line 47
    if-ne p0, v3, :cond_0

    .line 48
    .line 49
    return v5

    .line 50
    :cond_0
    return v1

    .line 51
    :cond_1
    return v2

    .line 52
    :cond_2
    aget-byte p2, p0, p1

    .line 53
    .line 54
    add-int/lit8 v6, p1, 0x1

    .line 55
    .line 56
    aget-byte v6, p0, v6

    .line 57
    .line 58
    and-int/lit16 v7, v6, 0xc0

    .line 59
    .line 60
    if-ne v7, v3, :cond_8

    .line 61
    .line 62
    add-int/2addr p1, v1

    .line 63
    aget-byte p1, p0, p1

    .line 64
    .line 65
    and-int/lit16 v2, p1, 0xc0

    .line 66
    .line 67
    if-ne v2, v3, :cond_7

    .line 68
    .line 69
    aget-byte p0, p0, v0

    .line 70
    .line 71
    and-int/lit16 v0, p0, 0xc0

    .line 72
    .line 73
    if-ne v0, v3, :cond_6

    .line 74
    .line 75
    const v0, 0x381f80

    .line 76
    .line 77
    .line 78
    xor-int/2addr p0, v0

    .line 79
    shl-int/lit8 p1, p1, 0x6

    .line 80
    .line 81
    xor-int/2addr p0, p1

    .line 82
    shl-int/lit8 p1, v6, 0xc

    .line 83
    .line 84
    xor-int/2addr p0, p1

    .line 85
    shl-int/lit8 p1, p2, 0x12

    .line 86
    .line 87
    xor-int/2addr p0, p1

    .line 88
    const p1, 0x10ffff

    .line 89
    .line 90
    .line 91
    if-le p0, p1, :cond_3

    .line 92
    .line 93
    invoke-interface {p3, v4}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const p1, 0xd800

    .line 98
    .line 99
    .line 100
    if-gt p1, p0, :cond_4

    .line 101
    .line 102
    const p1, 0xe000

    .line 103
    .line 104
    .line 105
    if-ge p0, p1, :cond_4

    .line 106
    .line 107
    invoke-interface {p3, v4}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    const/high16 p1, 0x10000

    .line 112
    .line 113
    if-ge p0, p1, :cond_5

    .line 114
    .line 115
    invoke-interface {p3, v4}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-interface {p3, p0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :goto_0
    const/4 p0, 0x4

    .line 127
    return p0

    .line 128
    :cond_6
    invoke-interface {p3, v4}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    return v5

    .line 132
    :cond_7
    invoke-interface {p3, v4}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    return v1

    .line 136
    :cond_8
    invoke-interface {p3, v4}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    return v2
.end method

.method public static final processUtf16Chars([BIILi9/l;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Li9/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yield"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_17

    .line 12
    .line 13
    aget-byte v0, p0, p1

    .line 14
    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    int-to-char v0, v0

    .line 18
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    :goto_1
    if-ge p1, p2, :cond_0

    .line 28
    .line 29
    aget-byte v0, p0, p1

    .line 30
    .line 31
    if-ltz v0, :cond_0

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    int-to-char v0, v0

    .line 36
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    shr-int/lit8 v1, v0, 0x5

    .line 45
    .line 46
    const/4 v2, -0x2

    .line 47
    const/4 v3, 0x2

    .line 48
    const/16 v4, 0x80

    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    const v6, 0xfffd

    .line 52
    .line 53
    .line 54
    if-ne v1, v2, :cond_7

    .line 55
    .line 56
    add-int/lit8 v1, p1, 0x1

    .line 57
    .line 58
    if-gt p2, v1, :cond_4

    .line 59
    .line 60
    :cond_2
    int-to-char v0, v6

    .line 61
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    aget-byte v1, p0, v1

    .line 71
    .line 72
    and-int/lit16 v2, v1, 0xc0

    .line 73
    .line 74
    if-ne v2, v4, :cond_2

    .line 75
    .line 76
    xor-int/lit16 v1, v1, 0xf80

    .line 77
    .line 78
    shl-int/lit8 v0, v0, 0x6

    .line 79
    .line 80
    xor-int/2addr v0, v1

    .line 81
    if-ge v0, v4, :cond_5

    .line 82
    .line 83
    int-to-char v0, v6

    .line 84
    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_5
    int-to-char v0, v0

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    :goto_4
    add-int/2addr p1, v3

    .line 95
    goto :goto_0

    .line 96
    :cond_7
    shr-int/lit8 v1, v0, 0x4

    .line 97
    .line 98
    const v7, 0xe000

    .line 99
    .line 100
    .line 101
    const v8, 0xd800

    .line 102
    .line 103
    .line 104
    const/4 v9, 0x3

    .line 105
    if-ne v1, v2, :cond_d

    .line 106
    .line 107
    add-int/lit8 v1, p1, 0x2

    .line 108
    .line 109
    if-gt p2, v1, :cond_8

    .line 110
    .line 111
    int-to-char v0, v6

    .line 112
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    add-int/lit8 v0, p1, 0x1

    .line 120
    .line 121
    if-le p2, v0, :cond_3

    .line 122
    .line 123
    aget-byte v0, p0, v0

    .line 124
    .line 125
    and-int/lit16 v0, v0, 0xc0

    .line 126
    .line 127
    if-ne v0, v4, :cond_3

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_8
    add-int/lit8 v2, p1, 0x1

    .line 131
    .line 132
    aget-byte v2, p0, v2

    .line 133
    .line 134
    and-int/lit16 v10, v2, 0xc0

    .line 135
    .line 136
    if-ne v10, v4, :cond_c

    .line 137
    .line 138
    aget-byte v1, p0, v1

    .line 139
    .line 140
    and-int/lit16 v5, v1, 0xc0

    .line 141
    .line 142
    if-ne v5, v4, :cond_b

    .line 143
    .line 144
    const v3, -0x1e080

    .line 145
    .line 146
    .line 147
    xor-int/2addr v1, v3

    .line 148
    shl-int/lit8 v2, v2, 0x6

    .line 149
    .line 150
    xor-int/2addr v1, v2

    .line 151
    shl-int/lit8 v0, v0, 0xc

    .line 152
    .line 153
    xor-int/2addr v0, v1

    .line 154
    const/16 v1, 0x800

    .line 155
    .line 156
    if-ge v0, v1, :cond_9

    .line 157
    .line 158
    :goto_5
    int-to-char v0, v6

    .line 159
    :goto_6
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_9
    if-gt v8, v0, :cond_a

    .line 168
    .line 169
    if-ge v0, v7, :cond_a

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_a
    int-to-char v0, v0

    .line 173
    goto :goto_6

    .line 174
    :goto_7
    const/4 v3, 0x3

    .line 175
    goto :goto_4

    .line 176
    :cond_b
    int-to-char v0, v6

    .line 177
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_c
    int-to-char v0, v6

    .line 186
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_d
    shr-int/lit8 v1, v0, 0x3

    .line 195
    .line 196
    if-ne v1, v2, :cond_16

    .line 197
    .line 198
    add-int/lit8 v1, p1, 0x3

    .line 199
    .line 200
    if-gt p2, v1, :cond_e

    .line 201
    .line 202
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    add-int/lit8 v0, p1, 0x1

    .line 210
    .line 211
    if-le p2, v0, :cond_3

    .line 212
    .line 213
    aget-byte v0, p0, v0

    .line 214
    .line 215
    and-int/lit16 v0, v0, 0xc0

    .line 216
    .line 217
    if-ne v0, v4, :cond_3

    .line 218
    .line 219
    add-int/lit8 v0, p1, 0x2

    .line 220
    .line 221
    if-le p2, v0, :cond_6

    .line 222
    .line 223
    aget-byte v0, p0, v0

    .line 224
    .line 225
    and-int/lit16 v0, v0, 0xc0

    .line 226
    .line 227
    if-ne v0, v4, :cond_6

    .line 228
    .line 229
    :goto_8
    goto :goto_7

    .line 230
    :cond_e
    add-int/lit8 v2, p1, 0x1

    .line 231
    .line 232
    aget-byte v2, p0, v2

    .line 233
    .line 234
    and-int/lit16 v10, v2, 0xc0

    .line 235
    .line 236
    if-ne v10, v4, :cond_15

    .line 237
    .line 238
    add-int/lit8 v5, p1, 0x2

    .line 239
    .line 240
    aget-byte v5, p0, v5

    .line 241
    .line 242
    and-int/lit16 v10, v5, 0xc0

    .line 243
    .line 244
    if-ne v10, v4, :cond_14

    .line 245
    .line 246
    aget-byte v1, p0, v1

    .line 247
    .line 248
    and-int/lit16 v3, v1, 0xc0

    .line 249
    .line 250
    if-ne v3, v4, :cond_13

    .line 251
    .line 252
    const v3, 0x381f80

    .line 253
    .line 254
    .line 255
    xor-int/2addr v1, v3

    .line 256
    shl-int/lit8 v3, v5, 0x6

    .line 257
    .line 258
    xor-int/2addr v1, v3

    .line 259
    shl-int/lit8 v2, v2, 0xc

    .line 260
    .line 261
    xor-int/2addr v1, v2

    .line 262
    shl-int/lit8 v0, v0, 0x12

    .line 263
    .line 264
    xor-int/2addr v0, v1

    .line 265
    const v1, 0x10ffff

    .line 266
    .line 267
    .line 268
    if-le v0, v1, :cond_10

    .line 269
    .line 270
    :cond_f
    :goto_9
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    goto :goto_a

    .line 278
    :cond_10
    if-gt v8, v0, :cond_11

    .line 279
    .line 280
    if-ge v0, v7, :cond_11

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_11
    const/high16 v1, 0x10000

    .line 284
    .line 285
    if-ge v0, v1, :cond_12

    .line 286
    .line 287
    goto :goto_9

    .line 288
    :cond_12
    if-eq v0, v6, :cond_f

    .line 289
    .line 290
    ushr-int/lit8 v1, v0, 0xa

    .line 291
    .line 292
    const v2, 0xd7c0

    .line 293
    .line 294
    .line 295
    add-int/2addr v1, v2

    .line 296
    int-to-char v1, v1

    .line 297
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-interface {p3, v1}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    and-int/lit16 v0, v0, 0x3ff

    .line 305
    .line 306
    const v1, 0xdc00

    .line 307
    .line 308
    .line 309
    add-int/2addr v0, v1

    .line 310
    int-to-char v0, v0

    .line 311
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    :goto_a
    const/4 v3, 0x4

    .line 319
    goto/16 :goto_4

    .line 320
    .line 321
    :cond_13
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_14
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    goto/16 :goto_4

    .line 337
    .line 338
    :cond_15
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    goto/16 :goto_2

    .line 346
    .line 347
    :cond_16
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    add-int/lit8 p1, p1, 0x1

    .line 355
    .line 356
    goto/16 :goto_0

    .line 357
    .line 358
    :cond_17
    return-void
.end method

.method public static final processUtf8Bytes(Ljava/lang/String;IILi9/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Li9/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yield"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_5

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x80

    .line 18
    .line 19
    invoke-static {v0, v1}, Lj9/i;->h(II)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-gez v2, :cond_1

    .line 24
    .line 25
    int-to-byte v0, v0

    .line 26
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    :goto_1
    if-ge p1, p2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0, v1}, Lj9/i;->h(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-gez v0, :cond_0

    .line 46
    .line 47
    add-int/lit8 v0, p1, 0x1

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    int-to-byte p1, p1

    .line 54
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p3, p1}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move p1, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/16 v2, 0x800

    .line 64
    .line 65
    invoke-static {v0, v2}, Lj9/i;->h(II)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-gez v2, :cond_2

    .line 70
    .line 71
    shr-int/lit8 v2, v0, 0x6

    .line 72
    .line 73
    or-int/lit16 v2, v2, 0xc0

    .line 74
    .line 75
    int-to-byte v2, v2

    .line 76
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-interface {p3, v2}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    and-int/lit8 v0, v0, 0x3f

    .line 84
    .line 85
    or-int/2addr v0, v1

    .line 86
    int-to-byte v0, v0

    .line 87
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const v2, 0xd800

    .line 98
    .line 99
    .line 100
    const/16 v3, 0x3f

    .line 101
    .line 102
    if-gt v2, v0, :cond_4

    .line 103
    .line 104
    const v2, 0xe000

    .line 105
    .line 106
    .line 107
    if-ge v0, v2, :cond_4

    .line 108
    .line 109
    const v4, 0xdbff

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v4}, Lj9/i;->h(II)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-gtz v4, :cond_3

    .line 117
    .line 118
    add-int/lit8 v4, p1, 0x1

    .line 119
    .line 120
    if-le p2, v4, :cond_3

    .line 121
    .line 122
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    const v6, 0xdc00

    .line 127
    .line 128
    .line 129
    if-gt v6, v5, :cond_3

    .line 130
    .line 131
    if-ge v5, v2, :cond_3

    .line 132
    .line 133
    shl-int/lit8 v0, v0, 0xa

    .line 134
    .line 135
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    add-int/2addr v2, v0

    .line 140
    const v0, -0x35fdc00

    .line 141
    .line 142
    .line 143
    add-int/2addr v2, v0

    .line 144
    shr-int/lit8 v0, v2, 0x12

    .line 145
    .line 146
    or-int/lit16 v0, v0, 0xf0

    .line 147
    .line 148
    int-to-byte v0, v0

    .line 149
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    shr-int/lit8 v0, v2, 0xc

    .line 157
    .line 158
    and-int/2addr v0, v3

    .line 159
    or-int/2addr v0, v1

    .line 160
    int-to-byte v0, v0

    .line 161
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    shr-int/lit8 v0, v2, 0x6

    .line 169
    .line 170
    and-int/2addr v0, v3

    .line 171
    or-int/2addr v0, v1

    .line 172
    int-to-byte v0, v0

    .line 173
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    and-int/lit8 v0, v2, 0x3f

    .line 181
    .line 182
    or-int/2addr v0, v1

    .line 183
    int-to-byte v0, v0

    .line 184
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    add-int/lit8 p1, p1, 0x2

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_3
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_4
    shr-int/lit8 v2, v0, 0xc

    .line 204
    .line 205
    or-int/lit16 v2, v2, 0xe0

    .line 206
    .line 207
    int-to-byte v2, v2

    .line 208
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-interface {p3, v2}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    shr-int/lit8 v2, v0, 0x6

    .line 216
    .line 217
    and-int/2addr v2, v3

    .line 218
    or-int/2addr v2, v1

    .line 219
    int-to-byte v2, v2

    .line 220
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-interface {p3, v2}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    and-int/lit8 v0, v0, 0x3f

    .line 228
    .line 229
    or-int/2addr v0, v1

    .line 230
    int-to-byte v0, v0

    .line 231
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    goto/16 :goto_2

    .line 239
    .line 240
    :cond_5
    return-void
.end method

.method public static final processUtf8CodePoints([BIILi9/l;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Li9/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "yield"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_16

    .line 12
    .line 13
    aget-byte v0, p0, p1

    .line 14
    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    :goto_1
    if-ge p1, p2, :cond_0

    .line 27
    .line 28
    aget-byte v0, p0, p1

    .line 29
    .line 30
    if-ltz v0, :cond_0

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    shr-int/lit8 v1, v0, 0x5

    .line 43
    .line 44
    const/4 v2, -0x2

    .line 45
    const/4 v3, 0x2

    .line 46
    const/16 v4, 0x80

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    const v6, 0xfffd

    .line 50
    .line 51
    .line 52
    if-ne v1, v2, :cond_7

    .line 53
    .line 54
    add-int/lit8 v1, p1, 0x1

    .line 55
    .line 56
    if-gt p2, v1, :cond_4

    .line 57
    .line 58
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 66
    goto :goto_4

    .line 67
    :cond_4
    aget-byte v1, p0, v1

    .line 68
    .line 69
    and-int/lit16 v2, v1, 0xc0

    .line 70
    .line 71
    if-ne v2, v4, :cond_2

    .line 72
    .line 73
    xor-int/lit16 v1, v1, 0xf80

    .line 74
    .line 75
    shl-int/lit8 v0, v0, 0x6

    .line 76
    .line 77
    xor-int/2addr v0, v1

    .line 78
    if-ge v0, v4, :cond_5

    .line 79
    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_3
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_3

    .line 93
    :cond_6
    :goto_4
    add-int/2addr p1, v3

    .line 94
    goto :goto_0

    .line 95
    :cond_7
    shr-int/lit8 v1, v0, 0x4

    .line 96
    .line 97
    const v7, 0xe000

    .line 98
    .line 99
    .line 100
    const v8, 0xd800

    .line 101
    .line 102
    .line 103
    const/4 v9, 0x3

    .line 104
    if-ne v1, v2, :cond_d

    .line 105
    .line 106
    add-int/lit8 v1, p1, 0x2

    .line 107
    .line 108
    if-gt p2, v1, :cond_8

    .line 109
    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    add-int/lit8 v0, p1, 0x1

    .line 118
    .line 119
    if-le p2, v0, :cond_3

    .line 120
    .line 121
    aget-byte v0, p0, v0

    .line 122
    .line 123
    and-int/lit16 v0, v0, 0xc0

    .line 124
    .line 125
    if-ne v0, v4, :cond_3

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_8
    add-int/lit8 v2, p1, 0x1

    .line 129
    .line 130
    aget-byte v2, p0, v2

    .line 131
    .line 132
    and-int/lit16 v10, v2, 0xc0

    .line 133
    .line 134
    if-ne v10, v4, :cond_c

    .line 135
    .line 136
    aget-byte v1, p0, v1

    .line 137
    .line 138
    and-int/lit16 v5, v1, 0xc0

    .line 139
    .line 140
    if-ne v5, v4, :cond_b

    .line 141
    .line 142
    const v3, -0x1e080

    .line 143
    .line 144
    .line 145
    xor-int/2addr v1, v3

    .line 146
    shl-int/lit8 v2, v2, 0x6

    .line 147
    .line 148
    xor-int/2addr v1, v2

    .line 149
    shl-int/lit8 v0, v0, 0xc

    .line 150
    .line 151
    xor-int/2addr v0, v1

    .line 152
    const/16 v1, 0x800

    .line 153
    .line 154
    if-ge v0, v1, :cond_9

    .line 155
    .line 156
    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    :goto_6
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_9
    if-gt v8, v0, :cond_a

    .line 165
    .line 166
    if-ge v0, v7, :cond_a

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    goto :goto_6

    .line 174
    :goto_7
    const/4 v3, 0x3

    .line 175
    goto :goto_4

    .line 176
    :cond_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_d
    shr-int/lit8 v1, v0, 0x3

    .line 193
    .line 194
    if-ne v1, v2, :cond_15

    .line 195
    .line 196
    add-int/lit8 v1, p1, 0x3

    .line 197
    .line 198
    if-gt p2, v1, :cond_e

    .line 199
    .line 200
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    add-int/lit8 v0, p1, 0x1

    .line 208
    .line 209
    if-le p2, v0, :cond_3

    .line 210
    .line 211
    aget-byte v0, p0, v0

    .line 212
    .line 213
    and-int/lit16 v0, v0, 0xc0

    .line 214
    .line 215
    if-ne v0, v4, :cond_3

    .line 216
    .line 217
    add-int/lit8 v0, p1, 0x2

    .line 218
    .line 219
    if-le p2, v0, :cond_6

    .line 220
    .line 221
    aget-byte v0, p0, v0

    .line 222
    .line 223
    and-int/lit16 v0, v0, 0xc0

    .line 224
    .line 225
    if-ne v0, v4, :cond_6

    .line 226
    .line 227
    :goto_8
    goto :goto_7

    .line 228
    :cond_e
    add-int/lit8 v2, p1, 0x1

    .line 229
    .line 230
    aget-byte v2, p0, v2

    .line 231
    .line 232
    and-int/lit16 v10, v2, 0xc0

    .line 233
    .line 234
    if-ne v10, v4, :cond_14

    .line 235
    .line 236
    add-int/lit8 v5, p1, 0x2

    .line 237
    .line 238
    aget-byte v5, p0, v5

    .line 239
    .line 240
    and-int/lit16 v10, v5, 0xc0

    .line 241
    .line 242
    if-ne v10, v4, :cond_13

    .line 243
    .line 244
    aget-byte v1, p0, v1

    .line 245
    .line 246
    and-int/lit16 v3, v1, 0xc0

    .line 247
    .line 248
    if-ne v3, v4, :cond_12

    .line 249
    .line 250
    const v3, 0x381f80

    .line 251
    .line 252
    .line 253
    xor-int/2addr v1, v3

    .line 254
    shl-int/lit8 v3, v5, 0x6

    .line 255
    .line 256
    xor-int/2addr v1, v3

    .line 257
    shl-int/lit8 v2, v2, 0xc

    .line 258
    .line 259
    xor-int/2addr v1, v2

    .line 260
    shl-int/lit8 v0, v0, 0x12

    .line 261
    .line 262
    xor-int/2addr v0, v1

    .line 263
    const v1, 0x10ffff

    .line 264
    .line 265
    .line 266
    if-le v0, v1, :cond_f

    .line 267
    .line 268
    :goto_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    :goto_a
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    goto :goto_b

    .line 276
    :cond_f
    if-gt v8, v0, :cond_10

    .line 277
    .line 278
    if-ge v0, v7, :cond_10

    .line 279
    .line 280
    goto :goto_9

    .line 281
    :cond_10
    const/high16 v1, 0x10000

    .line 282
    .line 283
    if-ge v0, v1, :cond_11

    .line 284
    .line 285
    goto :goto_9

    .line 286
    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    goto :goto_a

    .line 291
    :goto_b
    const/4 v3, 0x4

    .line 292
    goto/16 :goto_4

    .line 293
    .line 294
    :cond_12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    goto/16 :goto_4

    .line 310
    .line 311
    :cond_14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    goto/16 :goto_2

    .line 319
    .line 320
    :cond_15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-interface {p3, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    add-int/lit8 p1, p1, 0x1

    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_16
    return-void
.end method

.method public static final size(Ljava/lang/String;)J
    .locals 3

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final size(Ljava/lang/String;I)J
    .locals 3

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final size(Ljava/lang/String;II)J
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_a

    if-lt p2, p1, :cond_9

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_8

    const-wide/16 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_7

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    if-ge v2, v3, :cond_0

    add-long/2addr v0, v4

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x800

    if-ge v2, v3, :cond_1

    const/4 v2, 0x2

    :goto_2
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1

    :cond_1
    const v3, 0xd800

    if-lt v2, v3, :cond_6

    const v3, 0xdfff

    if-le v2, v3, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v6, p1, 0x1

    if-ge v6, p2, :cond_3

    .line 5
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    const v8, 0xdbff

    if-gt v2, v8, :cond_5

    const v2, 0xdc00

    if-lt v7, v2, :cond_5

    if-le v7, v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_5
    :goto_4
    add-long/2addr v0, v4

    move p1, v6

    goto :goto_0

    :cond_6
    :goto_5
    const/4 v2, 0x3

    goto :goto_2

    :cond_7
    return-wide v0

    .line 6
    :cond_8
    const-string p1, "endIndex > string.length: "

    const-string v0, " > "

    .line 7
    invoke-static {p2, p1, v0}, La/e;->u(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_9
    const-string p0, "endIndex < beginIndex: "

    const-string v0, " < "

    .line 10
    invoke-static {p2, p1, p0, v0}, La/e;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_a
    const-string p0, "beginIndex < 0: "

    .line 13
    invoke-static {p1, p0}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic size$default(Ljava/lang/String;IIILjava/lang/Object;)J
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    :cond_1
    invoke-static {p0, p1, p2}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    return-wide p0
.end method
