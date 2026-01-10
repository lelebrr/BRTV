.class public final Lg2/h;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lg2/g;


# instance fields
.field public final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg2/h;->a:Ljava/io/File;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(La9/d;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p1, Lg2/m;

    .line 2
    .line 3
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 4
    .line 5
    iget-object v1, p0, Lg2/h;->a:Ljava/io/File;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v0, v1, v2, v3, v4}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 15
    .line 16
    new-instance v3, Ld2/m;

    .line 17
    .line 18
    invoke-direct {v3, v0, v2, v4, v4}, Ld2/m;-><init>(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Ljava/io/Closeable;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "getName(...)"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 v2, 0x2e

    .line 35
    .line 36
    const-string v4, ""

    .line 37
    .line 38
    invoke-static {v2, v1, v4}, Lr9/f;->k0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Ld2/f;->c:Ld2/f;

    .line 47
    .line 48
    invoke-direct {p1, v3, v0, v1}, Lg2/m;-><init>(Ld2/n;Ljava/lang/String;Ld2/f;)V

    .line 49
    .line 50
    .line 51
    return-object p1
.end method
