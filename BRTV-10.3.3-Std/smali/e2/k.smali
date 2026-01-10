.class public final Le2/k;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Le2/b;


# instance fields
.field public final a:Lokio/FileSystem;

.field public final b:Le2/h;


# direct methods
.method public constructor <init>(JLokio/FileSystem;Lokio/Path;Lz9/c;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Le2/k;->a:Lokio/FileSystem;

    .line 5
    .line 6
    new-instance v6, Le2/h;

    .line 7
    .line 8
    move-object v0, v6

    .line 9
    move-wide v1, p1

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    move-object v5, p5

    .line 13
    invoke-direct/range {v0 .. v5}, Le2/h;-><init>(JLokio/FileSystem;Lokio/Path;Lz9/c;)V

    .line 14
    .line 15
    .line 16
    iput-object v6, p0, Le2/k;->b:Le2/h;

    .line 17
    .line 18
    return-void
.end method
