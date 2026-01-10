.class public final Lq9/j;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lq9/c;


# instance fields
.field public final a:Lq9/c;

.field public final b:Li9/l;


# direct methods
.method public constructor <init>(Lq9/c;Li9/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq9/j;->a:Lq9/c;

    .line 5
    .line 6
    iput-object p2, p0, Lq9/j;->b:Li9/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Ln0/x;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ln0/x;-><init>(Lq9/j;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
