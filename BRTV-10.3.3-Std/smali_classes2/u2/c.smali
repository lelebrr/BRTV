.class public final Lu2/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb3/u;


# instance fields
.field public final a:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu2/c;->a:Lokhttp3/OkHttpClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILv2/h;)Lb3/t;
    .locals 0

    .line 1
    check-cast p1, Lb3/k;

    .line 2
    .line 3
    new-instance p2, Lb3/t;

    .line 4
    .line 5
    new-instance p3, Lu2/a;

    .line 6
    .line 7
    iget-object p4, p0, Lu2/c;->a:Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    invoke-direct {p3, p4, p1}, Lu2/a;-><init>(Lokhttp3/OkHttpClient;Lb3/k;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p1, p3}, Lb3/t;-><init>(Lv2/e;Lcom/bumptech/glide/load/data/e;)V

    .line 13
    .line 14
    .line 15
    return-object p2
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lb3/k;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method
