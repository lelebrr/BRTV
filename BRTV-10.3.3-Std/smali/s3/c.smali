.class public abstract Ls3/c;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Lq/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lq/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ls3/c;->a:Lq/b;

    .line 8
    .line 9
    return-void
.end method

.method public static a(ILs3/a;)Ls/g;
    .locals 2

    .line 1
    new-instance v0, Lm0/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lm0/d;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Ls3/c;->a:Lq/b;

    .line 7
    .line 8
    new-instance v1, Ls/g;

    .line 9
    .line 10
    invoke-direct {v1, v0, p1, p0}, Ls/g;-><init>(Lm0/d;Ls3/a;Lq/b;)V

    .line 11
    .line 12
    .line 13
    return-object v1
.end method
