.class public final Lcom/tencent/bugly/proguard/l;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x80

    .line 4
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/bugly/proguard/l;->b:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a(DI)V
    .locals 1

    const/16 v0, 0xa

    .line 26
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/4 v0, 0x5

    .line 27
    invoke-direct {p0, v0, p3}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 28
    iget-object p3, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a(FI)V
    .locals 1

    const/4 v0, 0x6

    .line 23
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/4 v0, 0x4

    .line 24
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 25
    iget-object p2, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 5
    iput-object p1, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private a([DI)V
    .locals 4

    const/16 v0, 0x8

    .line 75
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 v0, 0x9

    .line 76
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 77
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 78
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-wide v2, p1, v1

    .line 79
    invoke-direct {p0, v2, v3, v0}, Lcom/tencent/bugly/proguard/l;->a(DI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([FI)V
    .locals 3

    const/16 v0, 0x8

    .line 70
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 v0, 0x9

    .line 71
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 72
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 73
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p1, v1

    .line 74
    invoke-direct {p0, v2, v0}, Lcom/tencent/bugly/proguard/l;->a(FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([II)V
    .locals 3

    const/16 v0, 0x8

    .line 60
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 v0, 0x9

    .line 61
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 62
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 63
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p1, v1

    .line 64
    invoke-virtual {p0, v2, v0}, Lcom/tencent/bugly/proguard/l;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([JI)V
    .locals 4

    const/16 v0, 0x8

    .line 65
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 v0, 0x9

    .line 66
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 67
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 68
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-wide v2, p1, v1

    .line 69
    invoke-virtual {p0, v2, v3, v0}, Lcom/tencent/bugly/proguard/l;->a(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([Ljava/lang/Object;I)V
    .locals 3

    const/16 v0, 0x8

    .line 80
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 v0, 0x9

    .line 81
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 82
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 83
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 84
    invoke-virtual {p0, v2, v0}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([SI)V
    .locals 3

    const/16 v0, 0x8

    .line 55
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 v0, 0x9

    .line 56
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 57
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 58
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-short v2, p1, v1

    .line 59
    invoke-virtual {p0, v2, v0}, Lcom/tencent/bugly/proguard/l;->a(SI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a([ZI)V
    .locals 3

    const/16 v0, 0x8

    .line 45
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 v0, 0x9

    .line 46
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 47
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 48
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-boolean v2, p1, v1

    .line 49
    invoke-virtual {p0, v2, v0}, Lcom/tencent/bugly/proguard/l;->a(ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(BI)V
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    if-ge p2, v0, :cond_0

    .line 4
    .line 5
    shl-int/lit8 p2, p2, 0x4

    .line 6
    .line 7
    or-int/2addr p1, p2

    .line 8
    int-to-byte p1, p1

    .line 9
    iget-object p2, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/16 v0, 0x100

    .line 16
    .line 17
    if-ge p2, v0, :cond_1

    .line 18
    .line 19
    or-int/lit16 p1, p1, 0xf0

    .line 20
    .line 21
    int-to-byte p1, p1

    .line 22
    iget-object v0, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    int-to-byte p2, p2

    .line 30
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance p1, Lcom/tencent/bugly/proguard/j;

    .line 35
    .line 36
    const-string v0, "tag is too large: "

    .line 37
    .line 38
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/j;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/tencent/bugly/proguard/l;->b:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public final a(BI)V
    .locals 1

    const/4 v0, 0x3

    .line 7
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    if-nez p1, :cond_0

    const/16 p1, 0xc

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 10
    iget-object p2, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(II)V
    .locals 1

    const/4 v0, 0x6

    .line 15
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 v0, -0x8000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    int-to-short p1, p1

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(SI)V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 17
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 18
    iget-object p2, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(JI)V
    .locals 3

    const/16 v0, 0xa

    .line 19
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const-wide/32 v0, -0x80000000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    .line 20
    invoke-virtual {p0, p2, p3}, Lcom/tencent/bugly/proguard/l;->a(II)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 21
    invoke-direct {p0, v0, p3}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 22
    iget-object p3, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/m;I)V
    .locals 2

    const/4 v0, 0x2

    .line 90
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 v1, 0xa

    .line 91
    invoke-direct {p0, v1, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 92
    invoke-virtual {p1, p0}, Lcom/tencent/bugly/proguard/m;->a(Lcom/tencent/bugly/proguard/l;)V

    .line 93
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 p1, 0xb

    const/4 p2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    return-void
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 2

    .line 95
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(BI)V

    return-void

    .line 97
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(ZI)V

    return-void

    .line 99
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 100
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(SI)V

    return-void

    .line 101
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 102
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(II)V

    return-void

    .line 103
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 104
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/bugly/proguard/l;->a(JI)V

    return-void

    .line 105
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 106
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(FI)V

    return-void

    .line 107
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 108
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/bugly/proguard/l;->a(DI)V

    return-void

    .line 109
    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 110
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    return-void

    .line 111
    :cond_7
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 112
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Map;I)V

    return-void

    .line 113
    :cond_8
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 114
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Collection;I)V

    return-void

    .line 115
    :cond_9
    instance-of v0, p1, Lcom/tencent/bugly/proguard/m;

    if-eqz v0, :cond_a

    .line 116
    check-cast p1, Lcom/tencent/bugly/proguard/m;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/proguard/m;I)V

    return-void

    .line 117
    :cond_a
    instance-of v0, p1, [B

    if-eqz v0, :cond_b

    .line 118
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a([BI)V

    return-void

    .line 119
    :cond_b
    instance-of v0, p1, [Z

    if-eqz v0, :cond_c

    .line 120
    check-cast p1, [Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a([ZI)V

    return-void

    .line 121
    :cond_c
    instance-of v0, p1, [S

    if-eqz v0, :cond_d

    .line 122
    check-cast p1, [S

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a([SI)V

    return-void

    .line 123
    :cond_d
    instance-of v0, p1, [I

    if-eqz v0, :cond_e

    .line 124
    check-cast p1, [I

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a([II)V

    return-void

    .line 125
    :cond_e
    instance-of v0, p1, [J

    if-eqz v0, :cond_f

    .line 126
    check-cast p1, [J

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a([JI)V

    return-void

    .line 127
    :cond_f
    instance-of v0, p1, [F

    if-eqz v0, :cond_10

    .line 128
    check-cast p1, [F

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a([FI)V

    return-void

    .line 129
    :cond_10
    instance-of v0, p1, [D

    if-eqz v0, :cond_11

    .line 130
    check-cast p1, [D

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a([DI)V

    return-void

    .line 131
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 132
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a([Ljava/lang/Object;I)V

    return-void

    .line 133
    :cond_12
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_13

    .line 134
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Collection;I)V

    return-void

    .line 135
    :cond_13
    new-instance p2, Lcom/tencent/bugly/proguard/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "write object error: unsupport type. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/j;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 31
    :goto_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    .line 32
    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x7

    .line 33
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 34
    iget-object p2, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 35
    iget-object p2, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    const/4 v0, 0x6

    .line 36
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 37
    iget-object p2, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    array-length v0, p1

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 38
    iget-object p2, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(Ljava/util/Collection;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;I)V"
        }
    .end annotation

    const/16 v0, 0x8

    .line 85
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 v0, 0x9

    .line 86
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->a(II)V

    if-eqz p1, :cond_1

    .line 88
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;I)V"
        }
    .end annotation

    const/16 v0, 0x8

    .line 39
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    .line 40
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->a(II)V

    if-eqz p1, :cond_1

    .line 42
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/Object;I)V

    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(SI)V
    .locals 1

    const/4 v0, 0x4

    .line 11
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    int-to-byte p1, p1

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(BI)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 14
    iget-object p2, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(ZI)V
    .locals 0

    int-to-byte p1, p1

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/l;->a(BI)V

    return-void
.end method

.method public final a([BI)V
    .locals 1

    .line 50
    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/l;->a(I)V

    const/16 v0, 0xd

    .line 51
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    const/4 p2, 0x0

    .line 52
    invoke-direct {p0, p2, p2}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 53
    array-length v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 54
    iget-object p2, p0, Lcom/tencent/bugly/proguard/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
