.class public abstract Lcom/google/android/gms/internal/cast/r6;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field protected zza:I


# direct methods
.method public static b(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    instance-of v1, p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move-object v1, p1

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/cast/t7;

    .line 24
    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    move-object v1, p1

    .line 28
    check-cast v1, Lcom/google/android/gms/internal/cast/t7;

    .line 29
    .line 30
    move-object v2, p1

    .line 31
    check-cast v2, Lcom/google/android/gms/internal/cast/t7;

    .line 32
    .line 33
    iget v2, v2, Lcom/google/android/gms/internal/cast/t7;->c:I

    .line 34
    .line 35
    add-int/2addr v2, v0

    .line 36
    iget-object v0, v1, Lcom/google/android/gms/internal/cast/t7;->b:[Ljava/lang/Object;

    .line 37
    .line 38
    array-length v0, v0

    .line 39
    if-gt v2, v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v3, 0xa

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    :goto_0
    if-ge v0, v2, :cond_2

    .line 47
    .line 48
    mul-int/lit8 v0, v0, 0x3

    .line 49
    .line 50
    div-int/lit8 v0, v0, 0x2

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/t7;->b:[Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, v1, Lcom/google/android/gms/internal/cast/t7;->b:[Ljava/lang/Object;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    .line 74
    iput-object v0, v1, Lcom/google/android/gms/internal/cast/t7;->b:[Ljava/lang/Object;

    .line 75
    .line 76
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/4 v2, 0x0

    .line 85
    :goto_2
    if-ge v2, v1, :cond_7

    .line 86
    .line 87
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-nez v3, :cond_6

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    sub-int/2addr p0, v0

    .line 98
    const-string v1, "Element at index "

    .line 99
    .line 100
    const-string v2, " is null."

    .line 101
    .line 102
    invoke-static {p0, v1, v2}, Lea/q;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 111
    .line 112
    if-lt v1, v0, :cond_5

    .line 113
    .line 114
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 119
    .line 120
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    add-int/lit8 v2, v2, 0x1

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/cast/v7;)I
.end method
