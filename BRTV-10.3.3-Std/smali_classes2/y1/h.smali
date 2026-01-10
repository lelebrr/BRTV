.class public final Ly1/h;
.super Ly1/z;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Ly1/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ly1/a0;Lp/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ly1/h;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ly1/h;->c:Ljava/lang/Object;

    iput-object p2, p0, Ly1/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget v0, p0, Ly1/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Ly1/h;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ly1/m;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-interface {v0, v1}, Ly1/m;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 2

    .line 1
    iget v0, p0, Ly1/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Ly1/h;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ly1/m;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ly1/m;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroidx/transition/Transition;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Ly1/h;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ly1/h;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ly1/a0;

    .line 11
    .line 12
    iget-object v0, v0, Ly1/a0;->b:Landroid/view/ViewGroup;

    .line 13
    .line 14
    iget-object v1, p0, Ly1/h;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lp/e;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->u(Ly1/y;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->u(Ly1/y;)V

    .line 32
    .line 33
    .line 34
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    iget-object v2, p0, Ly1/h;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Landroid/view/View;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    const/16 v4, 0x1c

    .line 42
    .line 43
    if-ne p1, v4, :cond_1

    .line 44
    .line 45
    sget-boolean p1, Ls2/c;->h:Z

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    :try_start_0
    invoke-static {}, Ls2/c;->d()V

    .line 50
    .line 51
    .line 52
    sget-object p1, Ls2/c;->c:Ljava/lang/Class;

    .line 53
    .line 54
    const-string v4, "removeGhost"

    .line 55
    .line 56
    new-array v5, v1, [Ljava/lang/Class;

    .line 57
    .line 58
    const-class v6, Landroid/view/View;

    .line 59
    .line 60
    aput-object v6, v5, v0

    .line 61
    .line 62
    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sput-object p1, Ls2/c;->g:Ljava/lang/reflect/Method;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    const-string v4, "GhostViewApi21"

    .line 74
    .line 75
    const-string v5, "Failed to retrieve removeGhost method"

    .line 76
    .line 77
    invoke-static {v4, v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :goto_0
    sput-boolean v1, Ls2/c;->h:Z

    .line 81
    .line 82
    :cond_0
    sget-object p1, Ls2/c;->g:Ljava/lang/reflect/Method;

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v2, v1, v0

    .line 89
    .line 90
    invoke-virtual {p1, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_1
    move-exception p1

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_1
    sget p1, Ly1/o;->g:I

    .line 106
    .line 107
    const p1, 0x7f0b01ad

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ly1/o;

    .line 115
    .line 116
    if-eqz p1, :cond_2

    .line 117
    .line 118
    iget v0, p1, Ly1/o;->d:I

    .line 119
    .line 120
    sub-int/2addr v0, v1

    .line 121
    iput v0, p1, Ly1/o;->d:I

    .line 122
    .line 123
    if-gtz v0, :cond_2

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Ly1/n;

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    :catch_2
    :cond_2
    :goto_1
    const p1, 0x7f0b0435

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, p1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    const p1, 0x7f0b0335

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, p1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
