.class public final Lv7/b;
.super Lv7/a;
.source "MyApplication"


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv7/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-short p1, p0, Lv7/a;->a:S

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lv7/a;->b:I

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lv7/a;->c:I

    .line 11
    .line 12
    iput-object p2, p0, Lv7/b;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 10

    .line 1
    iget-object v0, p0, Lv7/b;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    iget v1, p0, Lv7/a;->b:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v1, v3, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x5

    .line 22
    if-ne v1, v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 26
    .line 27
    const-string v1, "opCode is not valid"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    :goto_0
    iget v1, p0, Lv7/a;->c:I

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    if-ne v1, v2, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 41
    .line 42
    const-string v1, "rd is not valid"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_3
    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 49
    .line 50
    const/16 v3, 0x200

    .line 51
    .line 52
    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Ljava/io/DataOutputStream;

    .line 56
    .line 57
    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    .line 59
    .line 60
    iget-short v4, p0, Lv7/a;->a:S

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 63
    .line 64
    .line 65
    iget v4, p0, Lv7/a;->b:I

    .line 66
    .line 67
    shl-int/lit8 v4, v4, 0x3

    .line 68
    .line 69
    iget v5, p0, Lv7/a;->c:I

    .line 70
    .line 71
    add-int/2addr v4, v5

    .line 72
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 73
    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 101
    .line 102
    .line 103
    const-string v5, "[.\u3002\uff0e\uff61]"

    .line 104
    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    array-length v5, v0

    .line 110
    const/4 v6, 0x0

    .line 111
    :goto_2
    if-ge v6, v5, :cond_5

    .line 112
    .line 113
    aget-object v7, v0, v6

    .line 114
    .line 115
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    const/16 v9, 0x3f

    .line 120
    .line 121
    if-gt v8, v9, :cond_4

    .line 122
    .line 123
    invoke-static {v7}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    array-length v8, v7

    .line 132
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 133
    .line 134
    .line 135
    array-length v8, v7

    .line 136
    invoke-virtual {v3, v7, v4, v8}, Ljava/io/DataOutputStream;->write([BII)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v6, v6, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 143
    .line 144
    const-string v1, "host part is too long"

    .line 145
    .line 146
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :cond_5
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    return-object v0

    .line 170
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 171
    .line 172
    const-string v1, "host can not empty"

    .line 173
    .line 174
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v0
.end method
