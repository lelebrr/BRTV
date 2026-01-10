.class public final La4/k;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb1/h;
.implements Lr3/g;


# instance fields
.field public final synthetic a:I

.field public b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, La4/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, La4/k;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, La4/k;->b:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    iput p2, p0, La4/k;->a:I

    iput-object p1, p0, La4/k;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La2/a;)V
    .locals 9

    .line 1
    new-instance v7, Lb1/a;

    .line 2
    .line 3
    const-string v0, "EmojiCompatInitializer"

    .line 4
    .line 5
    invoke-direct {v7, v0}, Lb1/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 13
    .line 14
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 15
    .line 16
    .line 17
    const-wide/16 v3, 0xf

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    move-object v0, v8

    .line 22
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroidx/media3/common/util/i;

    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    invoke-direct {v0, p0, p1, v8, v1}, Landroidx/media3/common/util/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public b()La4/l;
    .locals 13

    .line 1
    iget-object v0, p0, La4/k;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, La4/l;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, La4/o;->a:Lu6/e;

    .line 11
    .line 12
    invoke-static {v2}, Ld4/a;->a(Ld4/b;)Lv8/a;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, v1, La4/l;->a:Lv8/a;

    .line 17
    .line 18
    new-instance v2, Ld4/c;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Ld4/c;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, v1, La4/l;->b:Ld4/c;

    .line 24
    .line 25
    new-instance v0, Lb4/e;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v0, v2, v3}, Lb4/e;-><init>(Ld4/c;I)V

    .line 29
    .line 30
    .line 31
    new-instance v3, La7/f;

    .line 32
    .line 33
    const/16 v4, 0x8

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-direct {v3, v4, v2, v0, v5}, La7/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Ld4/a;->a(Ld4/b;)Lv8/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, v1, La4/l;->c:Lv8/a;

    .line 44
    .line 45
    iget-object v0, v1, La4/l;->b:Ld4/c;

    .line 46
    .line 47
    new-instance v2, Lb4/e;

    .line 48
    .line 49
    const/4 v3, 0x2

    .line 50
    invoke-direct {v2, v0, v3}, Lb4/e;-><init>(Ld4/c;I)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lb4/e;

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    invoke-direct {v3, v0, v4}, Lb4/e;-><init>(Ld4/c;I)V

    .line 57
    .line 58
    .line 59
    new-instance v0, La7/f;

    .line 60
    .line 61
    const/16 v4, 0x17

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-direct {v0, v4, v2, v3, v5}, La7/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Ld4/a;->a(Ld4/b;)Lv8/a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, v1, La4/l;->d:Lv8/a;

    .line 72
    .line 73
    new-instance v2, Lx4/e;

    .line 74
    .line 75
    const/16 v3, 0xd

    .line 76
    .line 77
    invoke-direct {v2, v3}, Lx4/e;-><init>(I)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v1, La4/l;->b:Ld4/c;

    .line 81
    .line 82
    new-instance v4, La1/b;

    .line 83
    .line 84
    const/16 v5, 0x13

    .line 85
    .line 86
    invoke-direct {v4, v3, v0, v2, v5}, La1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v1, La4/l;->a:Lv8/a;

    .line 90
    .line 91
    iget-object v5, v1, La4/l;->c:Lv8/a;

    .line 92
    .line 93
    new-instance v12, Lc2/b;

    .line 94
    .line 95
    move-object v6, v12

    .line 96
    move-object v7, v2

    .line 97
    move-object v8, v5

    .line 98
    move-object v9, v4

    .line 99
    move-object v10, v0

    .line 100
    move-object v11, v0

    .line 101
    invoke-direct/range {v6 .. v11}, Lc2/b;-><init>(Lv8/a;Lv8/a;La1/b;Lv8/a;Lv8/a;)V

    .line 102
    .line 103
    .line 104
    new-instance v6, Landroidx/appcompat/widget/z3;

    .line 105
    .line 106
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v3, v6, Landroidx/appcompat/widget/z3;->a:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object v5, v6, Landroidx/appcompat/widget/z3;->b:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object v0, v6, Landroidx/appcompat/widget/z3;->c:Ljava/lang/Object;

    .line 114
    .line 115
    iput-object v4, v6, Landroidx/appcompat/widget/z3;->d:Ljava/lang/Object;

    .line 116
    .line 117
    iput-object v2, v6, Landroidx/appcompat/widget/z3;->e:Ljava/lang/Object;

    .line 118
    .line 119
    iput-object v0, v6, Landroidx/appcompat/widget/z3;->f:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object v0, v6, Landroidx/appcompat/widget/z3;->g:Ljava/lang/Object;

    .line 122
    .line 123
    new-instance v3, La0/f;

    .line 124
    .line 125
    invoke-direct {v3, v2, v0, v4, v0}, La0/f;-><init>(Lv8/a;Lv8/a;La1/b;Lv8/a;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, La1/b;

    .line 129
    .line 130
    const/4 v2, 0x3

    .line 131
    invoke-direct {v0, v12, v6, v3, v2}, La1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Ld4/a;->a(Ld4/b;)Lv8/a;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, v1, La4/l;->e:Lv8/a;

    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-class v2, Landroid/content/Context;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, " must be set"

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, La4/k;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "connectivity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    return-object v0
.end method
