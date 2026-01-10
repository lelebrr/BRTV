.class public final La0/f;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ld4/b;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, La0/f;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Lm0/c;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lm0/c;-><init>(I)V

    iput-object p1, p0, La0/f;->b:Ljava/lang/Object;

    .line 9
    new-instance p1, Lp/l;

    const/4 v0, 0x0

    .line 10
    invoke-direct {p1, v0}, Lp/l;-><init>(I)V

    .line 11
    iput-object p1, p0, La0/f;->c:Ljava/lang/Object;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La0/f;->d:Ljava/lang/Object;

    .line 13
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, La0/f;->e:Ljava/lang/Object;

    return-void

    .line 14
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance p1, Lp/e;

    const/4 v0, 0x0

    .line 16
    invoke-direct {p1, v0}, Lp/l;-><init>(I)V

    .line 17
    iput-object p1, p0, La0/f;->b:Ljava/lang/Object;

    .line 18
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, La0/f;->c:Ljava/lang/Object;

    .line 19
    new-instance p1, Lp/i;

    invoke-direct {p1}, Lp/i;-><init>()V

    iput-object p1, p0, La0/f;->d:Ljava/lang/Object;

    .line 20
    new-instance p1, Lp/e;

    .line 21
    invoke-direct {p1, v0}, Lp/l;-><init>(I)V

    .line 22
    iput-object p1, p0, La0/f;->e:Ljava/lang/Object;

    return-void

    .line 23
    :sswitch_1
    new-instance p1, Lcom/tencent/bugly/proguard/c0;

    const/4 v0, 0x2

    .line 24
    invoke-direct {p1, v0}, Lcom/tencent/bugly/proguard/c0;-><init>(I)V

    .line 25
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La0/f;->c:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, La0/f;->d:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, La0/f;->b:Ljava/lang/Object;

    .line 30
    new-instance v0, Ls4/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Ls4/h;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 31
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p1, Landroidx/leanback/widget/k1;

    invoke-direct {p1}, Landroidx/leanback/widget/k1;-><init>()V

    iput-object p1, p0, La0/f;->b:Ljava/lang/Object;

    .line 33
    new-instance v0, Landroidx/leanback/widget/k1;

    invoke-direct {v0}, Landroidx/leanback/widget/k1;-><init>()V

    iput-object v0, p0, La0/f;->c:Ljava/lang/Object;

    .line 34
    iput-object v0, p0, La0/f;->d:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, La0/f;->e:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, La0/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, La0/f;->a:I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, La0/f;->e:Ljava/lang/Object;

    .line 64
    iput-object p2, p0, La0/f;->b:Ljava/lang/Object;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La0/f;->d:Ljava/lang/Object;

    .line 66
    new-instance p1, Lp/l;

    const/4 p2, 0x0

    .line 67
    invoke-direct {p1, p2}, Lp/l;-><init>(I)V

    .line 68
    iput-object p1, p0, La0/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Lc1/b;)V
    .locals 5

    const/4 v0, 0x2

    iput v0, p0, La0/f;->a:I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, La0/f;->e:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, La0/f;->b:Ljava/lang/Object;

    .line 46
    new-instance p1, Lb1/q;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lb1/q;-><init>(I)V

    iput-object p1, p0, La0/f;->d:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 47
    invoke-virtual {p2, p1}, Lc1/c;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 48
    iget v2, p2, Lc1/c;->a:I

    add-int/2addr v0, v2

    .line 49
    iget-object v2, p2, Lc1/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 50
    iget-object v0, p2, Lc1/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 51
    new-array v0, v0, [C

    iput-object v0, p0, La0/f;->c:Ljava/lang/Object;

    .line 52
    invoke-virtual {p2, p1}, Lc1/c;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    iget v0, p2, Lc1/c;->a:I

    add-int/2addr p1, v0

    .line 54
    iget-object v0, p2, Lc1/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 55
    iget-object p1, p2, Lc1/c;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_4

    .line 56
    new-instance v0, Lb1/m;

    invoke-direct {v0, p0, p2}, Lb1/m;-><init>(La0/f;I)V

    .line 57
    invoke-virtual {v0}, Lb1/m;->c()Lc1/a;

    move-result-object v2

    const/4 v3, 0x4

    .line 58
    invoke-virtual {v2, v3}, Lc1/c;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, Lc1/c;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, Lc1/c;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    mul-int/lit8 v3, p2, 0x2

    .line 59
    iget-object v4, p0, La0/f;->c:Ljava/lang/Object;

    check-cast v4, [C

    invoke-static {v2, v4, v3}, Ljava/lang/Character;->toChars(I[CI)I

    .line 60
    invoke-virtual {v0}, Lb1/m;->b()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_4
    const-string v4, "invalid metadata codepoint length"

    invoke-static {v4, v2}, La2/a;->n(Ljava/lang/String;Z)V

    .line 61
    invoke-virtual {v0}, Lb1/m;->b()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, La0/f;->d:Ljava/lang/Object;

    check-cast v3, Lb1/q;

    invoke-virtual {v3, v0, v1, v2}, Lb1/q;->a(Lb1/m;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, La0/f;->a:I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La0/f;->d:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La0/f;->c:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La0/f;->e:Ljava/lang/Object;

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, La0/f;->b:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 74
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 75
    const-string p1, "name"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "id must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, La0/f;->a:I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, La0/f;->b:Ljava/lang/Object;

    .line 38
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0xc

    .line 39
    invoke-static {v0, v1}, Ln5/d;->m(II)[Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x17

    .line 40
    invoke-static {v0, v1}, Ln5/d;->m(II)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La0/f;->c:Ljava/lang/Object;

    const/16 v1, 0x3b

    .line 41
    invoke-static {v0, v1}, Ln5/d;->m(II)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La0/f;->d:Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La0/f;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq1/w;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, La0/f;->a:I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La0/f;->d:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La0/f;->c:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La0/f;->e:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Lq1/w;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, La0/f;->b:Ljava/lang/Object;

    .line 83
    invoke-virtual {p1}, Lq1/w;->d()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, La0/f;->d:Ljava/lang/Object;

    .line 84
    invoke-virtual {p1}, Lq1/w;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, La0/f;->c:Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Lq1/w;->a()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, La0/f;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv8/a;Lv8/a;La1/b;Lv8/a;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, La0/f;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, La0/f;->b:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, La0/f;->c:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, La0/f;->d:Ljava/lang/Object;

    .line 6
    iput-object p4, p0, La0/f;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lx2/q;Lx2/r;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lx2/a;

    .line 3
    .line 4
    iget-object v1, p0, La0/f;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, v1}, Lx2/a;-><init>(Lx2/q;Lx2/r;Ljava/lang/ref/ReferenceQueue;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, La0/f;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lx2/a;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput-object p2, p1, Lx2/a;->c:Lx2/x;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p1
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/content/IntentFilter;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, La0/f;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v0, "filters must not be null"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public c()Lq1/w;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, La0/f;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "controlFilters"

    .line 11
    .line 12
    iget-object v2, p0, La0/f;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v1, p0, La0/f;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "groupMemberIds"

    .line 29
    .line 30
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object v1, p0, La0/f;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "allowedPackages"

    .line 43
    .line 44
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lq1/w;

    .line 48
    .line 49
    invoke-direct {v0, v2}, Lq1/w;-><init>(Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public d(Lx2/a;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, La0/f;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p1, Lx2/a;->a:Lx2/q;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p1, Lx2/a;->b:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v2, p1, Lx2/a;->c:Lx2/x;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    new-instance v0, Lx2/r;

    .line 22
    .line 23
    iget-object v5, p1, Lx2/a;->a:Lx2/q;

    .line 24
    .line 25
    iget-object v1, p0, La0/f;->e:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v6, v1

    .line 28
    check-cast v6, Lx2/l;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    move-object v1, v0

    .line 33
    invoke-direct/range {v1 .. v6}, Lx2/r;-><init>(Lx2/x;ZZLx2/q;Lx2/l;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, La0/f;->e:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lx2/l;

    .line 39
    .line 40
    iget-object p1, p1, Lx2/a;->a:Lx2/q;

    .line 41
    .line 42
    invoke-virtual {v1, p1, v0}, Lx2/l;->f(Lx2/q;Lx2/r;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p1
.end method

.method public e(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, La0/f;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lp/l;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p0, v3, p2, p3}, La0/f;->e(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    const-string p2, "This graph contains cyclic dependencies"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public f(Lj/a;)Lj/f;
    .locals 5

    .line 1
    iget-object v0, p0, La0/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lj/f;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-object v4, v3, Lj/f;->b:Lj/a;

    .line 21
    .line 22
    if-ne v4, p1, :cond_0

    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v1, Lj/f;

    .line 29
    .line 30
    iget-object v2, p0, La0/f;->e:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v1, v2, p1}, Lj/f;-><init>(Landroid/content/Context;Lj/a;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public g(Lj/a;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, La0/f;->f(Lj/a;)Lj/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lk/s;

    .line 6
    .line 7
    iget-object v1, p0, La0/f;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/content/Context;

    .line 10
    .line 11
    check-cast p2, Lh0/a;

    .line 12
    .line 13
    invoke-direct {v0, v1, p2}, Lk/s;-><init>(Landroid/content/Context;Lh0/a;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, La0/f;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Landroid/view/ActionMode$Callback;

    .line 19
    .line 20
    invoke-interface {p2, p1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, La0/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv8/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lv8/a;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    iget-object v1, p0, La0/f;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lv8/a;

    .line 14
    .line 15
    invoke-interface {v1}, Lv8/a;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Li4/d;

    .line 20
    .line 21
    iget-object v2, p0, La0/f;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, La1/b;

    .line 24
    .line 25
    invoke-virtual {v2}, La1/b;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lh4/d;

    .line 30
    .line 31
    iget-object v3, p0, La0/f;->e:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Lv8/a;

    .line 34
    .line 35
    invoke-interface {v3}, Lv8/a;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lj4/c;

    .line 40
    .line 41
    new-instance v4, Lh4/j;

    .line 42
    .line 43
    invoke-direct {v4, v0, v1, v2, v3}, Lh4/j;-><init>(Ljava/util/concurrent/Executor;Li4/d;Lh4/d;Lj4/c;)V

    .line 44
    .line 45
    .line 46
    return-object v4
.end method

.method public h(Lj/a;Lk/l;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, La0/f;->f(Lj/a;)Lj/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, La0/f;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lp/l;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/Menu;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lk/b0;

    .line 18
    .line 19
    iget-object v2, p0, La0/f;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v1, v2, p2}, Lk/b0;-><init>(Landroid/content/Context;Lk/l;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2, v1}, Lp/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p2, p0, La0/f;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p2, Landroid/view/ActionMode$Callback;

    .line 32
    .line 33
    invoke-interface {p2, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, La0/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "horizontal="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, La0/f;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroidx/leanback/widget/k1;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "; vertical="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, La0/f;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Landroidx/leanback/widget/k1;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
