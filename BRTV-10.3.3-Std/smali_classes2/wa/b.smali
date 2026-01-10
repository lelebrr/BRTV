.class public final Lwa/b;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Lwa/b;

.field public static final b:Lwa/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lwa/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwa/b;->a:Lwa/b;

    .line 7
    .line 8
    new-instance v0, Lwa/a;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lwa/b;->b:Lwa/a;

    .line 14
    .line 15
    return-void
.end method
