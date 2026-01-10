.class public final Lv7/g;
.super Lv7/d;
.source "MyApplication"


# virtual methods
.method public final a(Ls2/c;Ljava/lang/String;Ljava/lang/String;)Lv7/f;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x40efffe000000000L    # 65535.0

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    mul-double v0, v0, v2

    .line 11
    .line 12
    double-to-int v0, v0

    .line 13
    int-to-short v0, v0

    .line 14
    new-instance v1, Lv7/b;

    .line 15
    .line 16
    invoke-direct {v1, v0, p3}, Lv7/b;-><init>(SLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lv7/b;->a()[B

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x0

    .line 28
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    new-instance v2, Ljava/net/DatagramPacket;

    .line 34
    .line 35
    array-length v4, p3

    .line 36
    const/16 v5, 0x35

    .line 37
    .line 38
    invoke-direct {v2, p3, v4, v0, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 39
    .line 40
    .line 41
    iget p3, p0, Lv7/d;->c:I

    .line 42
    .line 43
    mul-int/lit16 p3, p3, 0x3e8

    .line 44
    .line 45
    invoke-virtual {v3, p3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 46
    .line 47
    .line 48
    new-instance p3, Ls4/h;

    .line 49
    .line 50
    const/4 v0, 0x4

    .line 51
    invoke-direct {p3, v0, v3}, Ls4/h;-><init>(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p1, Ls2/c;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 57
    .line 58
    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljava/net/DatagramPacket;

    .line 65
    .line 66
    const/16 p3, 0x5dc

    .line 67
    .line 68
    new-array v0, p3, [B

    .line 69
    .line 70
    invoke-direct {p1, v0, p3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 74
    .line 75
    .line 76
    new-instance p3, Lv7/f;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 v0, 0x4

    .line 83
    invoke-direct {p3, p2, v0, v1, p1}, Lv7/f;-><init>(Ljava/lang/String;ILv7/b;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 87
    .line 88
    .line 89
    return-object p3

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    move-object v2, v3

    .line 92
    goto :goto_0

    .line 93
    :catchall_1
    move-exception p1

    .line 94
    :goto_0
    if-eqz v2, :cond_0

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 97
    .line 98
    .line 99
    :cond_0
    throw p1
.end method
