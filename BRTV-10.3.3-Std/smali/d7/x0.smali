.class public final Ld7/x0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb7/n;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final synthetic b:Ld7/y0;


# direct methods
.method public constructor <init>(Ld7/y0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld7/x0;->b:Ld7/y0;

    .line 5
    .line 6
    iput-object p2, p0, Ld7/x0;->a:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/x0;->b:Ld7/y0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ld7/r1;

    .line 7
    .line 8
    iget-object v2, p0, Ld7/x0;->a:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v1, v2, p1}, Ld7/r1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, v0, Ld7/y0;->g:Lb7/o;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lb7/o;->apply(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method
