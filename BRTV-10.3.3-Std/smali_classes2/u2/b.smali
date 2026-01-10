.class public final Lu2/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb3/v;


# static fields
.field public static volatile b:Lokhttp3/OkHttpClient;


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
    iput-object p1, p0, Lu2/b;->a:Lokhttp3/OkHttpClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lb3/b0;)Lb3/u;
    .locals 1

    .line 1
    new-instance p1, Lu2/c;

    .line 2
    .line 3
    iget-object v0, p0, Lu2/b;->a:Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lu2/c;-><init>(Lokhttp3/OkHttpClient;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
