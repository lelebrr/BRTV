.class public final Lt9/o;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements La9/h;


# instance fields
.field public final a:Lj9/j;

.field public final b:La9/h;


# direct methods
.method public constructor <init>(La9/h;Li9/l;)V
    .locals 1

    .line 1
    const-string v0, "baseKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    check-cast p2, Lj9/j;

    .line 10
    .line 11
    iput-object p2, p0, Lt9/o;->a:Lj9/j;

    .line 12
    .line 13
    instance-of p2, p1, Lt9/o;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    check-cast p1, Lt9/o;

    .line 18
    .line 19
    iget-object p1, p1, Lt9/o;->b:La9/h;

    .line 20
    .line 21
    :cond_0
    iput-object p1, p0, Lt9/o;->b:La9/h;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lt9/p;)La9/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/o;->a:Lj9/j;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, La9/g;

    .line 8
    .line 9
    return-object p1
.end method
