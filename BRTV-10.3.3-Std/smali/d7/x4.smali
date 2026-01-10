.class public final Ld7/x4;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb7/n;


# instance fields
.field public final synthetic a:Ld7/y4;


# direct methods
.method public constructor <init>(Ld7/y4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld7/x4;->a:Ld7/y4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Ld7/w4;

    .line 2
    .line 3
    iget-object v0, p0, Ld7/x4;->a:Ld7/y4;

    .line 4
    .line 5
    iget-object v0, v0, Ld7/y4;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p1}, Ld7/w4;->b()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Lb7/n;->apply(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method
