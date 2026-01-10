.class public final enum Ls9/c;
.super Ljava/lang/Enum;
.source "MyApplication"


# static fields
.field public static final synthetic b:[Ls9/c;


# instance fields
.field public final a:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ls9/c;

    .line 2
    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    const-string v2, "NANOSECONDS"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Ls9/c;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ls9/c;

    .line 12
    .line 13
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    const-string v4, "MICROSECONDS"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-direct {v1, v4, v5, v2}, Ls9/c;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ls9/c;

    .line 22
    .line 23
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    const-string v6, "MILLISECONDS"

    .line 26
    .line 27
    const/4 v7, 0x2

    .line 28
    invoke-direct {v2, v6, v7, v4}, Ls9/c;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Ls9/c;

    .line 32
    .line 33
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    .line 35
    const-string v8, "SECONDS"

    .line 36
    .line 37
    const/4 v9, 0x3

    .line 38
    invoke-direct {v4, v8, v9, v6}, Ls9/c;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Ls9/c;

    .line 42
    .line 43
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    const-string v10, "MINUTES"

    .line 46
    .line 47
    const/4 v11, 0x4

    .line 48
    invoke-direct {v6, v10, v11, v8}, Ls9/c;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 49
    .line 50
    .line 51
    new-instance v8, Ls9/c;

    .line 52
    .line 53
    sget-object v10, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    const-string v12, "HOURS"

    .line 56
    .line 57
    const/4 v13, 0x5

    .line 58
    invoke-direct {v8, v12, v13, v10}, Ls9/c;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 59
    .line 60
    .line 61
    new-instance v10, Ls9/c;

    .line 62
    .line 63
    sget-object v12, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 64
    .line 65
    const-string v14, "DAYS"

    .line 66
    .line 67
    const/4 v15, 0x6

    .line 68
    invoke-direct {v10, v14, v15, v12}, Ls9/c;-><init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V

    .line 69
    .line 70
    .line 71
    const/4 v12, 0x7

    .line 72
    new-array v12, v12, [Ls9/c;

    .line 73
    .line 74
    aput-object v0, v12, v3

    .line 75
    .line 76
    aput-object v1, v12, v5

    .line 77
    .line 78
    aput-object v2, v12, v7

    .line 79
    .line 80
    aput-object v4, v12, v9

    .line 81
    .line 82
    aput-object v6, v12, v11

    .line 83
    .line 84
    aput-object v8, v12, v13

    .line 85
    .line 86
    aput-object v10, v12, v15

    .line 87
    .line 88
    sput-object v12, Ls9/c;->b:[Ls9/c;

    .line 89
    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ls9/c;->a:Ljava/util/concurrent/TimeUnit;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls9/c;
    .locals 1

    .line 1
    const-class v0, Ls9/c;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ls9/c;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ls9/c;
    .locals 1

    .line 1
    sget-object v0, Ls9/c;->b:[Ls9/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ls9/c;

    .line 8
    .line 9
    return-object v0
.end method
