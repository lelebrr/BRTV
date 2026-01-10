.class public final synthetic Lp4/k;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lz4/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp4/o;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lp4/o;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lp4/k;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp4/k;->b:Lp4/o;

    .line 4
    .line 5
    iput-object p2, p0, Lp4/k;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lp4/k;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x1

    .line 4
    iget v3, p0, Lp4/k;->a:I

    .line 5
    .line 6
    packed-switch v3, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lp4/k;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p0, Lp4/k;->d:Ljava/lang/String;

    .line 12
    .line 13
    check-cast p1, Lv4/w;

    .line 14
    .line 15
    check-cast p2, Lw5/d;

    .line 16
    .line 17
    iget-object v5, p0, Lp4/k;->b:Lp4/o;

    .line 18
    .line 19
    iget-object v6, v5, Lp4/o;->p:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    .line 21
    iget-object v7, v5, Lp4/o;->A:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    invoke-virtual {v5}, Lp4/o;->j()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const-string v6, "Not connected to device"

    .line 32
    .line 33
    invoke-static {v6, v5}, Lb5/l;->g(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v7, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object v5, p1, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    .line 44
    .line 45
    new-instance v5, Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 46
    .line 47
    invoke-direct {v5, v1, v1, v0, v2}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 51
    .line 52
    invoke-direct {v0, v5}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lv4/d;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 75
    .line 76
    .line 77
    const/16 v0, 0x9

    .line 78
    .line 79
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p1

    .line 84
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1}, Lw5/d;->a(Ljava/lang/Exception;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void

    .line 95
    :pswitch_0
    check-cast p1, Lv4/w;

    .line 96
    .line 97
    check-cast p2, Lw5/d;

    .line 98
    .line 99
    sget-object v3, Lp4/o;->F:Lv4/b;

    .line 100
    .line 101
    iget-object v3, p0, Lp4/k;->b:Lp4/o;

    .line 102
    .line 103
    invoke-virtual {v3}, Lp4/o;->j()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const-string v5, "Not connected to device"

    .line 108
    .line 109
    invoke-static {v5, v4}, Lb5/l;->g(Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    iget-object v4, p1, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    .line 113
    .line 114
    new-instance v4, Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 115
    .line 116
    invoke-direct {v4, v1, v1, v0, v2}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lv4/d;

    .line 124
    .line 125
    new-instance v1, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 126
    .line 127
    invoke-direct {v1, v4}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget-object v4, p0, Lp4/k;->c:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v4, p0, Lp4/k;->d:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget v4, Lcom/google/android/gms/internal/cast/d0;->a:I

    .line 145
    .line 146
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 150
    .line 151
    .line 152
    const/16 v0, 0xe

    .line 153
    .line 154
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, v3, Lp4/o;->q:Ljava/lang/Object;

    .line 158
    .line 159
    monitor-enter p1

    .line 160
    :try_start_1
    iget-object v0, v3, Lp4/o;->n:Lw5/d;

    .line 161
    .line 162
    if-eqz v0, :cond_0

    .line 163
    .line 164
    const/16 v0, 0x9ad

    .line 165
    .line 166
    invoke-virtual {v3, v0}, Lp4/o;->h(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catchall_0
    move-exception p2

    .line 171
    goto :goto_2

    .line 172
    :cond_0
    :goto_1
    iput-object p2, v3, Lp4/o;->n:Lw5/d;

    .line 173
    .line 174
    monitor-exit p1

    .line 175
    return-void

    .line 176
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    throw p2

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
