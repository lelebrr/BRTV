.class public final Lq4/h;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final b:Lv4/b;


# instance fields
.field public final a:Lq4/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "DiscoveryManager"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lq4/h;->b:Lv4/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lq4/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq4/h;->a:Lq4/o;

    .line 5
    .line 6
    return-void
.end method
