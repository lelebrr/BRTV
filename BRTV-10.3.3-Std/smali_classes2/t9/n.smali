.class public final Lt9/n;
.super Lj9/j;
.source "MyApplication"

# interfaces
.implements Li9/l;


# static fields
.field public static final a:Lt9/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt9/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lj9/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lt9/n;->a:Lt9/n;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, La9/g;

    .line 2
    .line 3
    instance-of v0, p1, Lt9/p;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lt9/p;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return-object p1
.end method
