.class public final La1/c;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final f:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lp/l;

.field public final b:Ljava/util/ArrayList;

.field public final c:La0/b;

.field public d:La1/b;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La1/c;->f:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp/l;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lp/l;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, La1/c;->a:Lp/l;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, La1/c;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, La0/b;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v0, v2, p0}, La0/b;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, La1/c;->c:La0/b;

    .line 26
    .line 27
    iput-boolean v1, p0, La1/c;->e:Z

    .line 28
    .line 29
    return-void
.end method
