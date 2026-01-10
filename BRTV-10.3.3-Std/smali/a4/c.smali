.class public final La4/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lh7/d;


# static fields
.field public static final a:La4/c;

.field public static final b:Lh7/c;

.field public static final c:Lh7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, La4/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La4/c;->a:La4/c;

    .line 7
    .line 8
    new-instance v0, Lk7/a;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lk7/a;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const-class v2, Lk7/d;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lh7/c;

    .line 25
    .line 26
    new-instance v3, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v3, "eventsDroppedCount"

    .line 36
    .line 37
    invoke-direct {v0, v3, v1}, Lh7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, La4/c;->b:Lh7/c;

    .line 41
    .line 42
    new-instance v0, Lk7/a;

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-direct {v0, v1}, Lk7/a;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance v0, Lh7/c;

    .line 57
    .line 58
    new-instance v2, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "reason"

    .line 68
    .line 69
    invoke-direct {v0, v2, v1}, Lh7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, La4/c;->c:Lh7/c;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le4/d;

    .line 2
    .line 3
    check-cast p2, Lh7/e;

    .line 4
    .line 5
    iget-wide v0, p1, Le4/d;->a:J

    .line 6
    .line 7
    sget-object v2, La4/c;->b:Lh7/c;

    .line 8
    .line 9
    invoke-interface {p2, v2, v0, v1}, Lh7/e;->a(Lh7/c;J)Lh7/e;

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Le4/d;->b:Le4/c;

    .line 13
    .line 14
    sget-object v0, La4/c;->c:Lh7/c;

    .line 15
    .line 16
    invoke-interface {p2, v0, p1}, Lh7/e;->d(Lh7/c;Ljava/lang/Object;)Lh7/e;

    .line 17
    .line 18
    .line 19
    return-void
.end method
