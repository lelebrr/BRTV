.class public final Lk2/d;
.super Lp/k;
.source "MyApplication"


# instance fields
.field public final synthetic g:La7/f;


# direct methods
.method public constructor <init>(ILa7/f;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lk2/d;->g:La7/f;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lp/k;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcoil/memory/MemoryCache$Key;

    .line 2
    .line 3
    check-cast p2, Lk2/c;

    .line 4
    .line 5
    check-cast p3, Lk2/c;

    .line 6
    .line 7
    iget-object p3, p0, Lk2/d;->g:La7/f;

    .line 8
    .line 9
    iget-object p3, p3, La7/f;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p3, Lc6/b;

    .line 12
    .line 13
    iget-object v0, p2, Lk2/c;->a:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    iget-object v1, p2, Lk2/c;->b:Ljava/util/Map;

    .line 16
    .line 17
    iget p2, p2, Lk2/c;->c:I

    .line 18
    .line 19
    invoke-virtual {p3, p1, v0, v1, p2}, Lc6/b;->b(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcoil/memory/MemoryCache$Key;

    .line 2
    .line 3
    check-cast p2, Lk2/c;

    .line 4
    .line 5
    iget p1, p2, Lk2/c;->c:I

    .line 6
    .line 7
    return p1
.end method
