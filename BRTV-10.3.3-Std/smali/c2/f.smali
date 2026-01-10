.class public final Lc2/f;
.super Lj9/j;
.source "MyApplication"

# interfaces
.implements Li9/a;


# static fields
.field public static final a:Lc2/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc2/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lj9/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lc2/f;->a:Lc2/f;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
