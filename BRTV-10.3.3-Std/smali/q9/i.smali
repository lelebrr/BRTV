.class public final Lq9/i;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lk9/a;


# instance fields
.field public final synthetic a:Lr9/c;


# direct methods
.method public constructor <init>(Lr9/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq9/i;->a:Lr9/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lq9/i;->a:Lr9/c;

    .line 2
    .line 3
    new-instance v1, Lr9/b;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lr9/b;-><init>(Lr9/c;)V

    .line 6
    .line 7
    .line 8
    return-object v1
.end method
