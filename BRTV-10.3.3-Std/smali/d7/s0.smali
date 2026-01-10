.class public final Ld7/s0;
.super Ld7/s5;
.source "MyApplication"


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final d:Ljava/util/Iterator;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Ld7/s0;->a:I

    return-void
.end method

.method public constructor <init>(Ld7/d;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld7/s0;->c:I

    .line 3
    iput-object p1, p0, Ld7/s0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ld7/s0;-><init>()V

    .line 4
    iget-object p1, p1, Ld7/d;->c:Ljava/util/AbstractMap;

    check-cast p1, Ld7/u0;

    iget-object p1, p1, Ld7/u0;->d:Ld7/y0;

    iget-object p1, p1, Ld7/y0;->f:Ld7/l5;

    .line 5
    invoke-interface {p1}, Ld7/p4;->d()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ld7/s0;->d:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ld7/m5;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ld7/s0;->c:I

    .line 7
    iput-object p1, p0, Ld7/s0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ld7/s0;-><init>()V

    .line 8
    iget-object p1, p1, Ld7/m5;->a:Ld7/k2;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ld7/s0;->d:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lb7/n;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld7/s0;->c:I

    .line 6
    iput-object p1, p0, Ld7/s0;->d:Ljava/util/Iterator;

    iput-object p2, p0, Ld7/s0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ld7/s0;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 6

    .line 1
    iget v0, p0, Ld7/s0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lb7/b;->o(Z)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Ld7/s0;->a:I

    .line 15
    .line 16
    invoke-static {v0}, Lu/h;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_8

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    if-eq v0, v4, :cond_7

    .line 24
    .line 25
    iput v1, p0, Ld7/s0;->a:I

    .line 26
    .line 27
    iget v0, p0, Ld7/s0;->c:I

    .line 28
    .line 29
    packed-switch v0, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Ld7/s0;->d:Ljava/util/Iterator;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Ld7/s0;->e:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ld7/m5;

    .line 47
    .line 48
    iget-object v1, v1, Ld7/m5;->b:Ld7/k2;

    .line 49
    .line 50
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/4 v0, 0x3

    .line 58
    iput v0, p0, Ld7/s0;->a:I

    .line 59
    .line 60
    :goto_1
    const/4 v0, 0x0

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    :pswitch_0
    iget-object v0, p0, Ld7/s0;->d:Ljava/util/Iterator;

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Ld7/s0;->e:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Lb7/n;

    .line 77
    .line 78
    invoke-interface {v1, v0}, Lb7/n;->apply(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const/4 v0, 0x3

    .line 86
    iput v0, p0, Ld7/s0;->a:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    :pswitch_1
    iget-object v0, p0, Ld7/s0;->d:Ljava/util/Iterator;

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/util/Collection;

    .line 112
    .line 113
    new-instance v4, Ld7/x0;

    .line 114
    .line 115
    iget-object v5, p0, Ld7/s0;->e:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v5, Ld7/d;

    .line 118
    .line 119
    iget-object v5, v5, Ld7/d;->c:Ljava/util/AbstractMap;

    .line 120
    .line 121
    check-cast v5, Ld7/u0;

    .line 122
    .line 123
    iget-object v5, v5, Ld7/u0;->d:Ld7/y0;

    .line 124
    .line 125
    invoke-direct {v4, v5, v1}, Ld7/x0;-><init>(Ld7/y0;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v4}, Ld7/y0;->o(Ljava/util/Collection;Ld7/x0;)Ld7/e0;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ld7/e0;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-nez v4, :cond_5

    .line 137
    .line 138
    new-instance v4, Ld7/r1;

    .line 139
    .line 140
    invoke-direct {v4, v1, v0}, Ld7/r1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    move-object v0, v4

    .line 144
    goto :goto_2

    .line 145
    :cond_6
    const/4 v0, 0x3

    .line 146
    iput v0, p0, Ld7/s0;->a:I

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :goto_2
    iput-object v0, p0, Ld7/s0;->b:Ljava/lang/Object;

    .line 150
    .line 151
    iget v0, p0, Ld7/s0;->a:I

    .line 152
    .line 153
    const/4 v1, 0x3

    .line 154
    if-eq v0, v1, :cond_7

    .line 155
    .line 156
    iput v3, p0, Ld7/s0;->a:I

    .line 157
    .line 158
    const/4 v2, 0x1

    .line 159
    :cond_7
    return v2

    .line 160
    :cond_8
    return v3

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld7/s0;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Ld7/s0;->a:I

    .line 9
    .line 10
    iget-object v0, p0, Ld7/s0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Ld7/s0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method
