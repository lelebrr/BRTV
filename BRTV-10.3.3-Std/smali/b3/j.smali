.class public final Lb3/j;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb3/v;


# instance fields
.field public final a:Lb3/c;


# direct methods
.method public constructor <init>(Lb3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb3/j;->a:Lb3/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lb3/b0;)Lb3/u;
    .locals 2

    .line 1
    new-instance p1, Lb3/d;

    .line 2
    .line 3
    iget-object v0, p0, Lb3/j;->a:Lb3/c;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {p1, v1, v0}, Lb3/d;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method
