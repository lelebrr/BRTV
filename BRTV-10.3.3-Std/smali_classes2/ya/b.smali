.class public final Lya/b;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final b:Lya/b;


# instance fields
.field public final a:[La2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [La2/a;

    .line 3
    .line 4
    new-instance v1, Lya/b;

    .line 5
    .line 6
    invoke-direct {v1, v0}, Lya/b;-><init>([La2/a;)V

    .line 7
    .line 8
    .line 9
    sput-object v1, Lya/b;->b:Lya/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>([La2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lya/b;->a:[La2/a;

    .line 5
    .line 6
    return-void
.end method
