.class public La1/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ld4/b;
.implements Lj0/d;
.implements Lj3/a;
.implements Ll2/g;
.implements Ln7/m;
.implements Lz4/k;


# static fields
.field public static e:La1/b;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, La1/b;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La1/b;->c:Ljava/lang/Object;

    return-void

    .line 24
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    .line 25
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La1/b;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    .line 26
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La1/b;->d:Ljava/lang/Object;

    return-void

    .line 27
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, La1/b;->c:Ljava/lang/Object;

    .line 30
    new-instance p1, La6/a;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, La6/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, La1/b;->d:Ljava/lang/Object;

    return-void

    .line 31
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p1, Landroidx/leanback/widget/z;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/leanback/widget/z;-><init>(I)V

    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 33
    new-instance p1, Landroidx/leanback/widget/z;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/leanback/widget/z;-><init>(I)V

    iput-object p1, p0, La1/b;->c:Ljava/lang/Object;

    .line 34
    iput-object p1, p0, La1/b;->d:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xf -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, La1/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La0/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La1/b;->a:I

    const/4 v0, 0x0

    .line 94
    iput v0, p0, La1/b;->a:I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 97
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, La1/b;->c:Ljava/lang/Object;

    .line 98
    new-instance p1, La1/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, La1/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, La1/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La4/j;Lx3/b;Lcom/google/android/gms/internal/cast/k2;La4/t;)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, La1/b;->a:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 37
    iput-object p2, p0, La1/b;->c:Ljava/lang/Object;

    .line 38
    iput-object p4, p0, La1/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, La1/b;->a:I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, La1/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, La1/b;->a:I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroidx/appcompat/app/u0;

    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 68
    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 69
    iput-object p2, p0, La1/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Lr2/l;)V
    .locals 2

    const/16 v0, 0x16

    iput v0, p0, La1/b;->a:I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 72
    iput-object p2, p0, La1/b;->c:Ljava/lang/Object;

    .line 73
    new-instance p2, Lcom/google/android/gms/internal/cast/q0;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Lcom/google/android/gms/internal/cast/q0;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, La1/b;->d:Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 75
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Ly2/f;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, La1/b;->a:I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Lr3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iput-object p3, p0, La1/b;->b:Ljava/lang/Object;

    .line 124
    invoke-static {p2, v0}, Lr3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p2, p0, La1/b;->c:Ljava/lang/Object;

    .line 126
    new-instance p2, Lcom/bumptech/glide/load/data/i;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/data/i;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, La1/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    const/16 v0, 0xb

    iput v0, p0, La1/b;->a:I

    const-string v0, "owner"

    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->e()Landroidx/lifecycle/z0;

    move-result-object v0

    .line 79
    invoke-interface {p1}, Landroidx/lifecycle/j;->c()Landroidx/lifecycle/y0;

    move-result-object v1

    .line 80
    invoke-interface {p1}, Landroidx/lifecycle/j;->d()Ld7/c2;

    move-result-object p1

    .line 81
    invoke-direct {p0, v0, v1, p1}, La1/b;-><init>(Landroidx/lifecycle/z0;Landroidx/lifecycle/y0;Ld7/c2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/m;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, La1/b;->a:I

    const/16 v0, 0x8

    .line 43
    iput v0, p0, La1/b;->a:I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroidx/leanback/widget/e0;

    .line 46
    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    .line 47
    iput-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 48
    invoke-virtual {p0, p1}, La1/b;->H(Landroidx/leanback/widget/l0;)V

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La1/b;->d:Ljava/lang/Object;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleService;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, La1/b;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroidx/lifecycle/y;

    invoke-direct {v0, p1}, Landroidx/lifecycle/y;-><init>(Landroidx/lifecycle/w;)V

    iput-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 20
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, La1/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/z0;Landroidx/lifecycle/y0;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, La1/b;->a:I

    const-string v0, "store"

    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lj1/a;->b:Lj1/a;

    .line 52
    invoke-direct {p0, p1, p2, v0}, La1/b;-><init>(Landroidx/lifecycle/z0;Landroidx/lifecycle/y0;Ld7/c2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/z0;Landroidx/lifecycle/y0;Ld7/c2;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, La1/b;->a:I

    const-string v0, "store"

    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 41
    iput-object p2, p0, La1/b;->c:Ljava/lang/Object;

    .line 42
    iput-object p3, p0, La1/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc2/l;Lr2/l;)V
    .locals 2

    const/16 v0, 0x17

    iput v0, p0, La1/b;->a:I

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, La1/b;->c:Ljava/lang/Object;

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_3

    sget-boolean v1, Lr2/a;->a:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eq p1, p2, :cond_2

    const/16 p2, 0x1b

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Lorg/bitspark/android/utils/b;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lorg/bitspark/android/utils/b;-><init>(Z)V

    goto :goto_2

    .line 13
    :cond_2
    :goto_0
    new-instance p1, Lr2/k;

    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto :goto_2

    .line 15
    :cond_3
    sget-boolean p1, Lr2/a;->a:Z

    .line 16
    :goto_1
    new-instance p1, Lorg/bitspark/android/utils/b;

    invoke-direct {p1, v0}, Lorg/bitspark/android/utils/b;-><init>(Z)V

    .line 17
    :goto_2
    iput-object p1, p0, La1/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/internal/cast/j0;)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, La1/b;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CastDevice parameter cannot be null"

    invoke-static {p1, v0}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    iput-object p2, p0, La1/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x18

    iput v2, p0, La1/b;->a:I

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/b;->c:Ljava/lang/Object;

    iput-object p2, p0, La1/b;->d:Ljava/lang/Object;

    .line 100
    const-string p1, "newInstance"

    const-class p2, Ljava/io/ObjectStreamClass;

    const-class v3, Ljava/lang/Class;

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "sun.misc.Unsafe"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 101
    const-string v6, "theUnsafe"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 102
    invoke-virtual {v6, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 103
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 104
    const-string v7, "allocateInstance"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v3, v8, v2

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 105
    new-instance v7, Ln7/n;

    invoke-direct {v7, v5, v6}, Ln7/n;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    :try_start_1
    const-string v5, "getConstructorId"

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v3, v6, v2

    .line 107
    invoke-virtual {p2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 108
    invoke-virtual {v5, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 109
    new-array v6, v1, [Ljava/lang/Object;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v2

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 110
    new-array v5, v0, [Ljava/lang/Class;

    aput-object v3, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 111
    invoke-virtual {p2, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 113
    new-instance v7, Ln7/o;

    invoke-direct {v7, p2, v4}, Ln7/o;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 114
    :catch_1
    :try_start_2
    const-class p2, Ljava/io/ObjectInputStream;

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v3, v0, v2

    aput-object v3, v0, v1

    .line 115
    invoke-virtual {p2, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 117
    new-instance v7, Ln7/p;

    invoke-direct {v7, p1}, Ln7/p;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 118
    :catch_2
    new-instance v7, Ln7/q;

    .line 119
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 120
    :goto_0
    iput-object v7, p0, La1/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, La1/b;->a:I

    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    iput-object p2, p0, La1/b;->c:Ljava/lang/Object;

    iput-object p3, p0, La1/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0xe

    iput v0, p0, La1/b;->a:I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, La1/b;

    const/16 v1, 0xd

    const/4 v2, 0x0

    .line 84
    invoke-direct {v0, v1, v2}, La1/b;-><init>(IZ)V

    .line 85
    iput-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 86
    iput-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 87
    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lqa/m;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, La1/b;->a:I

    const/16 v0, 0x8

    .line 53
    iput v0, p0, La1/b;->a:I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroidx/leanback/widget/e0;

    .line 56
    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    .line 57
    iput-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 58
    new-instance v0, Landroidx/leanback/widget/a1;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/a1;-><init>(Lqa/m;)V

    invoke-virtual {p0, v0}, La1/b;->H(Landroidx/leanback/widget/l0;)V

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La1/b;->d:Ljava/lang/Object;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lr3/k;Ljava/util/ArrayList;Ly2/f;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, La1/b;->a:I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Lr3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iput-object p3, p0, La1/b;->c:Ljava/lang/Object;

    .line 91
    invoke-static {p2, v0}, Lr3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p2, p0, La1/b;->d:Ljava/lang/Object;

    .line 93
    new-instance p2, Lcom/bumptech/glide/load/data/i;

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/data/i;-><init>(Ljava/io/InputStream;Ly2/f;)V

    iput-object p2, p0, La1/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr4/f;)V
    .locals 4

    const/16 v0, 0x1d

    iput v0, p0, La1/b;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/b;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    sget-object v0, Lv4/a;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    mul-long v0, v0, v2

    .line 7
    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, La1/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public static B(Landroid/content/Context;Landroid/util/AttributeSet;[I)La1/b;
    .locals 1

    .line 1
    new-instance v0, La1/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p0, p1}, La1/b;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static C(Landroid/content/Context;Landroid/util/AttributeSet;[II)La1/b;
    .locals 2

    .line 1
    new-instance v0, La1/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {v0, p0, p1}, La1/b;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private final I()V
    .locals 0

    .line 1
    return-void
.end method

.method private final J()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final c(La1/b;Landroid/net/Network;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_3

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    invoke-static {v4, p1}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    move v4, p2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v5, p0, La1/b;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v5, Landroid/net/ConnectivityManager;

    .line 28
    .line 29
    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    const/16 v5, 0xc

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v4, 0x0

    .line 46
    :goto_1
    if-eqz v4, :cond_2

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    :goto_2
    iget-object p0, p0, La1/b;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lr2/l;

    .line 56
    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object p1, p0, Lr2/l;->a:Ljava/lang/ref/WeakReference;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lc2/l;

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iput-boolean v2, p0, Lr2/l;->e:Z

    .line 69
    .line 70
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_4

    .line 75
    :cond_4
    const/4 p1, 0x0

    .line 76
    :goto_3
    if-nez p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Lr2/l;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    :cond_5
    monitor-exit p0

    .line 82
    return-void

    .line 83
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p1
.end method

.method public static k(Lm2/i;Ljava/lang/Throwable;)Lm2/e;
    .locals 4

    .line 1
    new-instance v0, Lm2/e;

    .line 2
    .line 3
    instance-of v1, p1, Lm2/l;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lm2/i;->D:Lm2/c;

    .line 8
    .line 9
    iget-object v1, v1, Lm2/c;->l:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p0, v2, v2, v1}, Lr2/d;->b(Lm2/i;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lm2/i;->D:Lm2/c;

    .line 19
    .line 20
    iget-object v1, v1, Lm2/c;->k:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    iget-object v2, p0, Lm2/i;->B:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    iget-object v3, p0, Lm2/i;->A:Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-static {p0, v2, v3, v1}, Lr2/d;->b(Lm2/i;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lm2/i;->D:Lm2/c;

    .line 32
    .line 33
    iget-object v1, v1, Lm2/c;->k:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    iget-object v2, p0, Lm2/i;->B:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    iget-object v3, p0, Lm2/i;->A:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-static {p0, v2, v3, v1}, Lr2/d;->b(Lm2/i;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_1
    :goto_0
    invoke-direct {v0, v1, p0, p1}, Lm2/e;-><init>(Landroid/graphics/drawable/Drawable;Lm2/i;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public static y(Lm2/i;Landroid/graphics/Bitmap$Config;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Ln5/d;->A(Landroid/graphics/Bitmap$Config;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-boolean p1, p0, Lm2/i;->k:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    iget-object p0, p0, Lm2/i;->c:Lo2/a;

    .line 16
    .line 17
    instance-of p1, p0, Lo2/a;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lo2/a;->b:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    return v0
.end method


# virtual methods
.method public A(Landroidx/fragment/app/p0;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 2
    .line 3
    iget-boolean v0, p1, Landroidx/fragment/app/s;->B:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/fragment/app/l0;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->c(Landroidx/fragment/app/s;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/HashMap;

    .line 17
    .line 18
    iget-object v1, p1, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/fragment/app/p0;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-string v0, "FragmentManager"

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Removed fragment from active set "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public D(Lm2/i;Ln2/h;)Lm2/m;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v4, p2

    .line 4
    .line 5
    iget-object v1, v0, Lm2/i;->f:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, v0, Lm2/i;->d:Landroid/graphics/Bitmap$Config;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    sget-object v1, Lr2/f;->a:[Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    invoke-static {v1, v2}, Lx8/i;->B([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object/from16 v15, p0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    invoke-static {v2}, Ln5/d;->A(Landroid/graphics/Bitmap$Config;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    move-object/from16 v15, p0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    invoke-static {v0, v2}, La1/b;->y(Lm2/i;Landroid/graphics/Bitmap$Config;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    move-object/from16 v15, p0

    .line 43
    .line 44
    iget-object v1, v15, La1/b;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lr2/i;

    .line 47
    .line 48
    invoke-interface {v1, v4}, Lr2/i;->a(Ln2/h;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    :goto_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 56
    .line 57
    move-object v2, v1

    .line 58
    :goto_2
    iget-object v1, v4, Ln2/h;->a:Lr4/b;

    .line 59
    .line 60
    sget-object v3, Ln2/b;->c:Ln2/b;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_5

    .line 67
    .line 68
    iget-object v1, v4, Ln2/h;->b:Lr4/b;

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    iget-object v1, v0, Lm2/i;->w:Ln2/g;

    .line 78
    .line 79
    :goto_3
    move-object v5, v1

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    :goto_4
    sget-object v1, Ln2/g;->b:Ln2/g;

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :goto_5
    iget-boolean v1, v0, Lm2/i;->l:Z

    .line 85
    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    iget-object v1, v0, Lm2/i;->f:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 97
    .line 98
    if-eq v2, v1, :cond_6

    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    const/4 v7, 0x1

    .line 102
    goto :goto_6

    .line 103
    :cond_6
    const/4 v1, 0x0

    .line 104
    const/4 v7, 0x0

    .line 105
    :goto_6
    new-instance v16, Lm2/m;

    .line 106
    .line 107
    invoke-static/range {p1 .. p1}, Lr2/d;->a(Lm2/i;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    iget-object v11, v0, Lm2/i;->i:Lm2/r;

    .line 112
    .line 113
    iget-object v12, v0, Lm2/i;->x:Lm2/o;

    .line 114
    .line 115
    iget-object v14, v0, Lm2/i;->o:Lm2/b;

    .line 116
    .line 117
    iget-object v13, v0, Lm2/i;->p:Lm2/b;

    .line 118
    .line 119
    iget-object v1, v0, Lm2/i;->a:Landroid/content/Context;

    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    iget-boolean v8, v0, Lm2/i;->m:Z

    .line 123
    .line 124
    const/4 v9, 0x0

    .line 125
    iget-object v10, v0, Lm2/i;->h:Lokhttp3/Headers;

    .line 126
    .line 127
    iget-object v0, v0, Lm2/i;->n:Lm2/b;

    .line 128
    .line 129
    move-object/from16 v17, v0

    .line 130
    .line 131
    move-object/from16 v0, v16

    .line 132
    .line 133
    move-object/from16 v4, p2

    .line 134
    .line 135
    move-object/from16 v18, v13

    .line 136
    .line 137
    move-object/from16 v13, v17

    .line 138
    .line 139
    move-object/from16 v15, v18

    .line 140
    .line 141
    invoke-direct/range {v0 .. v15}, Lm2/m;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Ln2/h;Ln2/g;ZZZLjava/lang/String;Lokhttp3/Headers;Lm2/r;Lm2/o;Lm2/b;Lm2/b;Lm2/b;)V

    .line 142
    .line 143
    .line 144
    return-object v16
.end method

.method public E(Landroidx/lifecycle/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/lifecycle/u0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/u0;->run()V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Landroidx/lifecycle/u0;

    .line 11
    .line 12
    iget-object v1, p0, La1/b;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroidx/lifecycle/y;

    .line 15
    .line 16
    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/n;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object p1, p0, La1/b;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null backendName"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public H(Landroidx/leanback/widget/l0;)V
    .locals 2

    .line 1
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/l0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    iput-object p1, p0, La1/b;->c:Ljava/lang/Object;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Landroidx/leanback/widget/e0;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/leanback/widget/e0;->a()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public K(Lm2/m;)Lm2/m;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v0, Lm2/m;->b:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    iget-object v3, v0, Lm2/m;->o:Lm2/b;

    .line 8
    .line 9
    invoke-static {v2}, Ln5/d;->A(Landroid/graphics/Bitmap$Config;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    iget-object v4, v1, La1/b;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v4, Lr2/i;

    .line 19
    .line 20
    invoke-interface {v4}, Lr2/i;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 28
    .line 29
    move-object v8, v2

    .line 30
    const/4 v4, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 33
    move-object v8, v2

    .line 34
    :goto_1
    iget-object v2, v0, Lm2/m;->o:Lm2/b;

    .line 35
    .line 36
    iget-boolean v2, v2, Lm2/b;->a:Z

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, v1, La1/b;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lr2/l;

    .line 43
    .line 44
    monitor-enter v2

    .line 45
    :try_start_0
    invoke-virtual {v2}, Lr2/l;->a()V

    .line 46
    .line 47
    .line 48
    iget-boolean v6, v2, Lr2/l;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    monitor-exit v2

    .line 51
    if-nez v6, :cond_2

    .line 52
    .line 53
    sget-object v3, Lm2/b;->d:Lm2/b;

    .line 54
    .line 55
    move-object/from16 v21, v3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw v0

    .line 61
    :cond_2
    move-object/from16 v21, v3

    .line 62
    .line 63
    move v5, v4

    .line 64
    :goto_2
    if-eqz v5, :cond_3

    .line 65
    .line 66
    iget-object v7, v0, Lm2/m;->a:Landroid/content/Context;

    .line 67
    .line 68
    iget-object v9, v0, Lm2/m;->c:Landroid/graphics/ColorSpace;

    .line 69
    .line 70
    iget-object v10, v0, Lm2/m;->d:Ln2/h;

    .line 71
    .line 72
    iget-object v11, v0, Lm2/m;->e:Ln2/g;

    .line 73
    .line 74
    iget-boolean v12, v0, Lm2/m;->f:Z

    .line 75
    .line 76
    iget-boolean v13, v0, Lm2/m;->g:Z

    .line 77
    .line 78
    iget-boolean v14, v0, Lm2/m;->h:Z

    .line 79
    .line 80
    iget-object v15, v0, Lm2/m;->i:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v2, v0, Lm2/m;->j:Lokhttp3/Headers;

    .line 83
    .line 84
    iget-object v3, v0, Lm2/m;->k:Lm2/r;

    .line 85
    .line 86
    iget-object v4, v0, Lm2/m;->l:Lm2/o;

    .line 87
    .line 88
    iget-object v5, v0, Lm2/m;->m:Lm2/b;

    .line 89
    .line 90
    iget-object v0, v0, Lm2/m;->n:Lm2/b;

    .line 91
    .line 92
    new-instance v22, Lm2/m;

    .line 93
    .line 94
    move-object/from16 v6, v22

    .line 95
    .line 96
    move-object/from16 v16, v2

    .line 97
    .line 98
    move-object/from16 v17, v3

    .line 99
    .line 100
    move-object/from16 v18, v4

    .line 101
    .line 102
    move-object/from16 v19, v5

    .line 103
    .line 104
    move-object/from16 v20, v0

    .line 105
    .line 106
    invoke-direct/range {v6 .. v21}, Lm2/m;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Ln2/h;Ln2/g;ZZZLjava/lang/String;Lokhttp3/Headers;Lm2/r;Lm2/o;Lm2/b;Lm2/b;Lm2/b;)V

    .line 107
    .line 108
    .line 109
    return-object v22

    .line 110
    :cond_3
    return-object v0
.end method

.method public L(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p3, p0, La1/b;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p3, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, La1/b;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroidx/fragment/app/g;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/app/c0;->d()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public b()Z
    .locals 7

    .line 1
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    if-ge v4, v2, :cond_1

    .line 13
    .line 14
    aget-object v5, v1, v4

    .line 15
    .line 16
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    const/16 v6, 0xc

    .line 23
    .line 24
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    return v3
.end method

.method public d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, La1/b;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, La1/b;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, La1/b;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, La1/b;

    .line 12
    .line 13
    iput-object v0, v1, La1/b;->d:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p1, v0, La1/b;->c:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p2, v0, La1/b;->b:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public e(Lx2/x;Lv2/h;)Lx2/x;
    .locals 2

    .line 1
    invoke-interface {p1}, Lx2/x;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ly2/a;

    .line 20
    .line 21
    invoke-static {p1, v0}, Le3/d;->b(Landroid/graphics/Bitmap;Ly2/a;)Le3/d;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lc6/b;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lc6/b;->e(Lx2/x;Lv2/h;)Lx2/x;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    instance-of v0, v0, Li3/d;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lj3/d;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Lj3/d;->e(Lx2/x;Lv2/h;)Lx2/x;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public f(Landroidx/fragment/app/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, La1/b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p1, Landroidx/fragment/app/s;->l:Z

    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Fragment already added: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public g([ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    new-instance v0, Lu6/e;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lu6/e;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, La1/b;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, La6/a;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, La1/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ld4/c;

    .line 9
    .line 10
    iget-object v0, v0, Ld4/c;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/content/Context;

    .line 13
    .line 14
    iget-object v1, p0, La1/b;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lv8/a;

    .line 17
    .line 18
    invoke-interface {v1}, Lv8/a;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Li4/d;

    .line 23
    .line 24
    iget-object v2, p0, La1/b;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lx4/e;

    .line 27
    .line 28
    invoke-virtual {v2}, Lx4/e;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lh4/b;

    .line 33
    .line 34
    new-instance v3, Lh4/d;

    .line 35
    .line 36
    invoke-direct {v3, v0, v1, v2}, Lh4/d;-><init>(Landroid/content/Context;Li4/d;Lh4/b;)V

    .line 37
    .line 38
    .line 39
    return-object v3

    .line 40
    :pswitch_0
    new-instance v5, Lu6/e;

    .line 41
    .line 42
    const/16 v0, 0x13

    .line 43
    .line 44
    invoke-direct {v5, v0}, Lu6/e;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance v6, Lx4/e;

    .line 48
    .line 49
    const/16 v0, 0x12

    .line 50
    .line 51
    invoke-direct {v6, v0}, Lx4/e;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lc2/b;

    .line 57
    .line 58
    invoke-virtual {v0}, Lc2/b;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move-object v7, v0

    .line 63
    check-cast v7, Lg4/b;

    .line 64
    .line 65
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Landroidx/appcompat/widget/z3;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/appcompat/widget/z3;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v8, v0

    .line 74
    check-cast v8, Lh4/i;

    .line 75
    .line 76
    iget-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, La0/f;

    .line 79
    .line 80
    invoke-virtual {v0}, La0/f;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    move-object v9, v0

    .line 85
    check-cast v9, Lh4/j;

    .line 86
    .line 87
    new-instance v0, La4/t;

    .line 88
    .line 89
    move-object v4, v0

    .line 90
    invoke-direct/range {v4 .. v9}, La4/t;-><init>(Lk4/a;Lk4/a;Lg4/b;Lh4/i;Lh4/j;)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public h()La4/j;
    .locals 4

    .line 1
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, " backendName"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, La1/b;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lx3/c;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, " priority"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    new-instance v0, La4/j;

    .line 31
    .line 32
    iget-object v1, p0, La1/b;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, p0, La1/b;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, [B

    .line 39
    .line 40
    iget-object v3, p0, La1/b;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lx3/c;

    .line 43
    .line 44
    invoke-direct {v0, v1, v2, v3}, La4/j;-><init>(Ljava/lang/String;[BLx3/c;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v2, "Missing required properties:"

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1
.end method

.method public i(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget v0, p0, La1/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/i;->d()Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :pswitch_0
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/bumptech/glide/load/data/i;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Le3/w;

    .line 31
    .line 32
    invoke-virtual {v0}, Le3/w;->reset()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :pswitch_1
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    invoke-static {v0}, Lr3/a;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ld2/i;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Ld2/i;-><init>(Ljava/nio/ByteBuffer;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j(Le4/a;Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    .line 1
    new-instance v0, Lk7/e;

    .line 2
    .line 3
    iget-object v1, p0, La1/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v2, p0, La1/b;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object v3, p0, La1/b;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lj7/a;

    .line 14
    .line 15
    invoke-direct {v0, p2, v2, v1, v3}, Lk7/e;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;Lj7/a;)V

    .line 16
    .line 17
    .line 18
    const-class p2, Le4/a;

    .line 19
    .line 20
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lh7/d;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v1, p1, v0}, Lh7/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Lh7/b;

    .line 33
    .line 34
    const-string v0, "No encoder for "

    .line 35
    .line 36
    invoke-static {p2, v0}, La/e;->q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public l(Ljava/lang/String;)Landroidx/fragment/app/s;
    .locals 1

    .line 1
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/fragment/app/p0;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public m(Ljava/lang/String;)Landroidx/fragment/app/s;
    .locals 3

    .line 1
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/p0;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, v1, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 28
    .line 29
    iget-object v2, v1, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/s;->u:Landroidx/fragment/app/k0;

    .line 39
    .line 40
    iget-object v1, v1, Landroidx/fragment/app/j0;->c:La1/b;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, La1/b;->m(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    if-eqz v1, :cond_0

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method public n(Ljava/lang/Class;)Landroidx/lifecycle/v0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, p1, v0}, La1/b;->p(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/v0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public o()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ln7/d;

    .line 4
    .line 5
    iget-object v1, p0, La1/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/Class;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ln7/d;->i(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "Unable to invoke no-args constructor for "

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, La1/b;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Ljava/lang/reflect/Type;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, ". Registering an InstanceCreator with Gson for this type may fix this problem."

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method

.method public p(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/v0;
    .locals 5

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/lifecycle/z0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Landroidx/lifecycle/z0;->a:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/lifecycle/v0;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, La1/b;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Landroidx/lifecycle/y0;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    instance-of p1, v3, Landroidx/lifecycle/s0;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    check-cast v3, Landroidx/lifecycle/s0;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 39
    :goto_0
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-static {v1}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v3, Landroidx/lifecycle/s0;->d:Landroidx/lifecycle/p;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p2, v3, Landroidx/lifecycle/s0;->e:Landroidx/appcompat/widget/v;

    .line 49
    .line 50
    invoke-static {p2}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v1, p2, p1}, Landroidx/lifecycle/o0;->a(Landroidx/lifecycle/v0;Landroidx/appcompat/widget/v;Landroidx/lifecycle/p;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const-string p1, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    .line 57
    .line 58
    invoke-static {v1, p1}, Lj9/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    new-instance v1, Lj1/b;

    .line 63
    .line 64
    iget-object v2, p0, La1/b;->d:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Ld7/c2;

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lj1/b;-><init>(Ld7/c2;)V

    .line 69
    .line 70
    .line 71
    sget-object v2, Landroidx/lifecycle/w0;->c:Landroidx/lifecycle/w0;

    .line 72
    .line 73
    iget-object v4, v1, Ld7/c2;->a:Ljava/io/Serializable;

    .line 74
    .line 75
    check-cast v4, Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    invoke-interface {v4, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :try_start_0
    invoke-interface {v3, p1, v1}, Landroidx/lifecycle/y0;->b(Ljava/lang/Class;Lj1/b;)Landroidx/lifecycle/v0;

    .line 81
    .line 82
    .line 83
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_1

    .line 85
    :catch_0
    invoke-interface {v3, p1}, Landroidx/lifecycle/y0;->a(Ljava/lang/Class;)Landroidx/lifecycle/v0;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_1
    const-string v1, "viewModel"

    .line 90
    .line 91
    invoke-static {p1, v1}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Landroidx/lifecycle/v0;

    .line 99
    .line 100
    if-eqz p2, :cond_3

    .line 101
    .line 102
    invoke-virtual {p2}, Landroidx/lifecycle/v0;->b()V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-object p1
.end method

.method public q()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, La1/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/fragment/app/p0;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget v3, p0, La1/b;->a:I

    .line 5
    .line 6
    check-cast p1, Lv4/w;

    .line 7
    .line 8
    check-cast p2, Lw5/d;

    .line 9
    .line 10
    packed-switch v3, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, La1/b;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Lp4/o;

    .line 16
    .line 17
    iget v3, v3, Lp4/o;->E:I

    .line 18
    .line 19
    if-eq v3, v1, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    const-string v4, "Not active connection"

    .line 25
    .line 26
    invoke-static {v4, v3}, Lb5/l;->g(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, La1/b;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lp4/b;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v3, p1, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v3, Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 38
    .line 39
    invoke-direct {v3, v0, v0, v2, v1}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lv4/d;

    .line 47
    .line 48
    new-instance v0, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 49
    .line 50
    invoke-direct {v0, v3}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object v2, p0, La1/b;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 65
    .line 66
    .line 67
    const/16 v0, 0xc

    .line 68
    .line 69
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V

    .line 70
    .line 71
    .line 72
    :cond_1
    const/4 p1, 0x0

    .line 73
    invoke-virtual {p2, p1}, Lw5/d;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_0
    sget-object v3, Lp4/o;->F:Lv4/b;

    .line 78
    .line 79
    iget-object v3, p0, La1/b;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v3, Lp4/o;

    .line 82
    .line 83
    invoke-virtual {v3}, Lp4/o;->j()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    const-string v5, "Not connected to device"

    .line 88
    .line 89
    invoke-static {v5, v4}, Lb5/l;->g(Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    iget-object v4, p1, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    .line 93
    .line 94
    new-instance v4, Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 95
    .line 96
    invoke-direct {v4, v0, v0, v2, v1}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lv4/d;

    .line 104
    .line 105
    new-instance v0, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 106
    .line 107
    invoke-direct {v0, v4}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v2, p0, La1/b;->c:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v2, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, La1/b;->d:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v2, Lcom/google/android/gms/cast/LaunchOptions;

    .line 124
    .line 125
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 129
    .line 130
    .line 131
    const/16 v0, 0xd

    .line 132
    .line 133
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V

    .line 134
    .line 135
    .line 136
    iget-object p1, v3, Lp4/o;->q:Ljava/lang/Object;

    .line 137
    .line 138
    monitor-enter p1

    .line 139
    :try_start_0
    iget-object v0, v3, Lp4/o;->n:Lw5/d;

    .line 140
    .line 141
    if-eqz v0, :cond_2

    .line 142
    .line 143
    const/16 v0, 0x9ad

    .line 144
    .line 145
    invoke-virtual {v3, v0}, Lp4/o;->h(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catchall_0
    move-exception p2

    .line 150
    goto :goto_2

    .line 151
    :cond_2
    :goto_1
    iput-object p2, v3, Lp4/o;->n:Lw5/d;

    .line 152
    .line 153
    monitor-exit p1

    .line 154
    return-void

    .line 155
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    throw p2

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public s(I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 1
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, La1/b;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2, v1}, Lu7/d;->k(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public shutdown()V
    .locals 2

    .line 1
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4
    .line 5
    iget-object v1, p0, La1/b;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/google/android/gms/internal/cast/q0;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public t(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, La1/b;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/bumptech/glide/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, La1/b;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const/16 v2, 0x20

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, La1/b;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x7b

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, La1/b;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, La1/b;

    .line 34
    .line 35
    iget-object v2, v2, La1/b;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, La1/b;

    .line 38
    .line 39
    const-string v3, ""

    .line 40
    .line 41
    :goto_0
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v4, v2, La1/b;->c:Ljava/lang/Object;

    .line 44
    .line 45
    instance-of v5, v2, Lb7/l;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v3, v2, La1/b;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const/16 v3, 0x3d

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_0
    if-eqz v4, :cond_1

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    new-array v3, v0, [Ljava/lang/Object;

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    aput-object v4, v3, v5

    .line 80
    .line 81
    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    sub-int/2addr v4, v0

    .line 90
    invoke-virtual {v1, v3, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :goto_1
    iget-object v2, v2, La1/b;->d:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, La1/b;

    .line 100
    .line 101
    const-string v3, ", "

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    const/16 v0, 0x7d

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public u(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/content/res/TypedArray;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Landroidx/appcompat/widget/w;->a()Landroidx/appcompat/widget/w;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, La1/b;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroid/content/Context;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/w;->a:Landroidx/appcompat/widget/l2;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-virtual {v2, v1, p1, v3}, Landroidx/appcompat/widget/l2;->g(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public v(IILandroidx/appcompat/widget/q0;)Landroid/graphics/Typeface;
    .locals 9

    .line 1
    iget-object v0, p0, La1/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/4 p1, 0x0

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroid/util/TypedValue;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Landroid/util/TypedValue;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v4, v0

    .line 30
    check-cast v4, Landroid/util/TypedValue;

    .line 31
    .line 32
    sget-object v0, Le0/n;->a:Ljava/lang/ThreadLocal;

    .line 33
    .line 34
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v2, v0

    .line 37
    check-cast v2, Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v8, 0x0

    .line 47
    const/4 v7, 0x1

    .line 48
    move v5, p2

    .line 49
    move-object v6, p3

    .line 50
    invoke-static/range {v2 .. v8}, Le0/n;->c(Landroid/content/Context;ILandroid/util/TypedValue;ILe0/b;ZZ)Landroid/graphics/Typeface;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    return-object p1
.end method

.method public w()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v2, p0, La1/b;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method

.method public x()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 10

    .line 1
    iget v0, p0, La1/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La1/b;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 9
    .line 10
    iget-object v1, p0, La1/b;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ly2/f;

    .line 13
    .line 14
    iget-object v2, p0, La1/b;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-ge v4, v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lv2/d;

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    :try_start_0
    new-instance v7, Le3/w;

    .line 33
    .line 34
    new-instance v8, Ljava/io/FileInputStream;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/i;->d()Landroid/os/ParcelFileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v7, v8, v1}, Le3/w;-><init>(Ljava/io/InputStream;Ly2/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-interface {v5, v7}, Lv2/d;->d(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 51
    .line 52
    .line 53
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-virtual {v7}, Le3/w;->b()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/i;->d()Landroid/os/ParcelFileDescriptor;

    .line 58
    .line 59
    .line 60
    sget-object v6, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 61
    .line 62
    if-eq v5, v6, :cond_0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    move-object v6, v7

    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v1

    .line 72
    :goto_1
    if-eqz v6, :cond_1

    .line 73
    .line 74
    invoke-virtual {v6}, Le3/w;->b()V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/i;->d()Landroid/os/ParcelFileDescriptor;

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_2
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 82
    .line 83
    :goto_2
    return-object v5

    .line 84
    :pswitch_0
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/bumptech/glide/load/data/i;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Le3/w;

    .line 91
    .line 92
    invoke-virtual {v0}, Le3/w;->reset()V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, La1/b;->d:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v1, Ljava/util/ArrayList;

    .line 98
    .line 99
    iget-object v2, p0, La1/b;->c:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Ly2/f;

    .line 102
    .line 103
    invoke-static {v1, v0, v2}, Lu7/d;->p(Ljava/util/ArrayList;Ljava/io/InputStream;Ly2/f;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :pswitch_1
    iget-object v0, p0, La1/b;->b:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    invoke-static {v0}, Lr3/a;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, La1/b;->c:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v1, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-static {v1, v0}, Lu7/d;->q(Ljava/util/ArrayList;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0

    .line 125
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public z(Landroidx/fragment/app/p0;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, La1/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/s;->f:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string p1, "FragmentManager"

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Added fragment to active set "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
