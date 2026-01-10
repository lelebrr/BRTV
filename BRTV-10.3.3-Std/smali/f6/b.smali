.class public final Lf6/b;
.super Landroid/util/Property;
.source "MyApplication"


# static fields
.field public static final a:Lf6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lf6/b;

    .line 2
    .line 3
    const-class v1, Lf6/d;

    .line 4
    .line 5
    const-string v2, "circularReveal"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lf6/b;->a:Lf6/b;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lf6/e;

    .line 2
    .line 3
    invoke-interface {p1}, Lf6/e;->getRevealInfo()Lf6/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lf6/e;

    .line 2
    .line 3
    check-cast p2, Lf6/d;

    .line 4
    .line 5
    invoke-interface {p1, p2}, Lf6/e;->setRevealInfo(Lf6/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
