.class public final Ll2/a;
.super Lj9/j;
.source "MyApplication"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic a:Ll2/c;


# direct methods
.method public constructor <init>(Ll2/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll2/a;->a:Ll2/c;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lj9/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/CacheControl;->Companion:Lokhttp3/CacheControl$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Ll2/a;->a:Ll2/c;

    .line 4
    .line 5
    iget-object v1, v1, Ll2/c;->f:Lokhttp3/Headers;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lokhttp3/CacheControl$Companion;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
