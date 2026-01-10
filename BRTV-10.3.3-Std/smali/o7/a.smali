.class public final Lo7/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ll7/s;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo7/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ll7/k;Ls7/a;)Ll7/r;
    .locals 2

    .line 1
    iget v0, p0, Lo7/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p2, Ls7/a;->a:Ljava/lang/Class;

    .line 7
    .line 8
    const-class v0, Ljava/sql/Timestamp;

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance p2, Ls7/a;

    .line 16
    .line 17
    const-class v0, Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {p2, v0}, Ls7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ll7/k;->c(Ls7/a;)Ll7/r;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Lr7/a;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Lr7/a;-><init>(Ll7/r;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p2, 0x0

    .line 33
    :goto_0
    return-object p2

    .line 34
    :pswitch_0
    iget-object p1, p2, Ls7/a;->a:Ljava/lang/Class;

    .line 35
    .line 36
    const-class p2, Ljava/sql/Time;

    .line 37
    .line 38
    if-ne p1, p2, :cond_1

    .line 39
    .line 40
    new-instance p1, Lr7/a;

    .line 41
    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-direct {p1, p2}, Lr7/a;-><init>(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    :goto_1
    return-object p1

    .line 49
    :pswitch_1
    iget-object p1, p2, Ls7/a;->a:Ljava/lang/Class;

    .line 50
    .line 51
    const-class p2, Ljava/sql/Date;

    .line 52
    .line 53
    if-ne p1, p2, :cond_2

    .line 54
    .line 55
    new-instance p1, Lr7/a;

    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-direct {p1, p2}, Lr7/a;-><init>(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/4 p1, 0x0

    .line 63
    :goto_2
    return-object p1

    .line 64
    :pswitch_2
    const-class p1, Ljava/lang/Enum;

    .line 65
    .line 66
    iget-object p2, p2, Ls7/a;->a:Ljava/lang/Class;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    if-ne p2, p1, :cond_3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    :cond_4
    new-instance p1, Lo7/b;

    .line 88
    .line 89
    invoke-direct {p1, p2}, Lo7/b;-><init>(Ljava/lang/Class;)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    :goto_3
    const/4 p1, 0x0

    .line 94
    :goto_4
    return-object p1

    .line 95
    :pswitch_3
    iget-object p2, p2, Ls7/a;->a:Ljava/lang/Class;

    .line 96
    .line 97
    const-class v0, Ljava/lang/Object;

    .line 98
    .line 99
    if-ne p2, v0, :cond_6

    .line 100
    .line 101
    new-instance p2, Lo7/h;

    .line 102
    .line 103
    invoke-direct {p2, p1}, Lo7/h;-><init>(Ll7/k;)V

    .line 104
    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_6
    const/4 p2, 0x0

    .line 108
    :goto_5
    return-object p2

    .line 109
    :pswitch_4
    const-class p1, Ljava/util/Date;

    .line 110
    .line 111
    iget-object p2, p2, Ls7/a;->a:Ljava/lang/Class;

    .line 112
    .line 113
    if-ne p2, p1, :cond_7

    .line 114
    .line 115
    new-instance p1, Lo7/d;

    .line 116
    .line 117
    invoke-direct {p1}, Lo7/d;-><init>()V

    .line 118
    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_7
    const/4 p1, 0x0

    .line 122
    :goto_6
    return-object p1

    .line 123
    :pswitch_5
    iget-object p2, p2, Ls7/a;->b:Ljava/lang/reflect/Type;

    .line 124
    .line 125
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    .line 126
    .line 127
    if-nez v0, :cond_9

    .line 128
    .line 129
    instance-of v1, p2, Ljava/lang/Class;

    .line 130
    .line 131
    if-eqz v1, :cond_8

    .line 132
    .line 133
    move-object v1, p2

    .line 134
    check-cast v1, Ljava/lang/Class;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_9

    .line 141
    .line 142
    :cond_8
    const/4 p1, 0x0

    .line 143
    goto :goto_8

    .line 144
    :cond_9
    if-eqz v0, :cond_a

    .line 145
    .line 146
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 147
    .line 148
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    goto :goto_7

    .line 153
    :cond_a
    check-cast p2, Ljava/lang/Class;

    .line 154
    .line 155
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    :goto_7
    new-instance v0, Ls7/a;

    .line 160
    .line 161
    invoke-direct {v0, p2}, Ls7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Ll7/k;->c(Ls7/a;)Ll7/r;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v1, Lo7/b;

    .line 169
    .line 170
    invoke-static {p2}, Ln7/d;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-direct {v1, p1, v0, p2}, Lo7/b;-><init>(Ll7/k;Ll7/r;Ljava/lang/Class;)V

    .line 175
    .line 176
    .line 177
    move-object p1, v1

    .line 178
    :goto_8
    return-object p1

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
