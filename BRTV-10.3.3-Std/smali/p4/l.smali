.class public final synthetic Lp4/l;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lz4/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp4/o;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lp4/o;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp4/l;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/l;->b:Lp4/o;

    iput-object p2, p0, Lp4/l;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lp4/o;Ljava/lang/String;Lr4/f;)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Lp4/l;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/l;->b:Lp4/o;

    iput-object p2, p0, Lp4/l;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, -0x1

    .line 4
    const/4 v3, 0x1

    .line 5
    iget v4, p0, Lp4/l;->a:I

    .line 6
    .line 7
    packed-switch v4, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v4, p0, Lp4/l;->b:Lp4/o;

    .line 11
    .line 12
    iget-object v5, p0, Lp4/l;->c:Ljava/lang/String;

    .line 13
    .line 14
    check-cast p1, Lv4/w;

    .line 15
    .line 16
    check-cast p2, Lw5/d;

    .line 17
    .line 18
    sget-object v6, Lp4/o;->F:Lv4/b;

    .line 19
    .line 20
    invoke-virtual {v4}, Lp4/o;->j()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const-string v7, "Not connected to device"

    .line 25
    .line 26
    invoke-static {v7, v6}, Lb5/l;->g(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    iget-object v6, p1, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    .line 30
    .line 31
    new-instance v6, Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 32
    .line 33
    invoke-direct {v6, v2, v2, v1, v3}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lv4/d;

    .line 41
    .line 42
    new-instance v1, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 43
    .line 44
    invoke-direct {v1, v6}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x5

    .line 58
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V

    .line 59
    .line 60
    .line 61
    iget-object v5, v4, Lp4/o;->r:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v5

    .line 64
    :try_start_0
    iget-object p1, v4, Lp4/o;->o:Lw5/d;

    .line 65
    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 69
    .line 70
    const/16 v1, 0x7d1

    .line 71
    .line 72
    invoke-direct {p1, v1, v0, v0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ly4/e;

    .line 76
    .line 77
    invoke-direct {v0, p1}, Ly4/e;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v0}, Lw5/d;->a(Ljava/lang/Exception;)V

    .line 81
    .line 82
    .line 83
    monitor-exit v5

    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    iput-object p2, v4, Lp4/o;->o:Lw5/d;

    .line 88
    .line 89
    monitor-exit v5

    .line 90
    :goto_0
    return-void

    .line 91
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p1

    .line 93
    :pswitch_0
    check-cast p1, Lv4/w;

    .line 94
    .line 95
    check-cast p2, Lw5/d;

    .line 96
    .line 97
    iget-object v4, p0, Lp4/l;->b:Lp4/o;

    .line 98
    .line 99
    iget v4, v4, Lp4/o;->E:I

    .line 100
    .line 101
    if-eq v4, v3, :cond_1

    .line 102
    .line 103
    const/4 v4, 0x1

    .line 104
    goto :goto_2

    .line 105
    :cond_1
    const/4 v4, 0x0

    .line 106
    :goto_2
    const-string v5, "Not active connection"

    .line 107
    .line 108
    invoke-static {v5, v4}, Lb5/l;->g(Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    iget-object v4, p1, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    .line 112
    .line 113
    new-instance v4, Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 114
    .line 115
    invoke-direct {v4, v2, v2, v1, v3}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 119
    .line 120
    invoke-direct {v1, v4}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Lv4/d;

    .line 128
    .line 129
    iget-object v3, p0, Lp4/l;->c:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 139
    .line 140
    .line 141
    const/16 v5, 0xc

    .line 142
    .line 143
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Lv4/d;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 160
    .line 161
    .line 162
    const/16 v1, 0xb

    .line 163
    .line 164
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, v0}, Lw5/d;->b(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
