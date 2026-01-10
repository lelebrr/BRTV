.class public final synthetic Lv4/p;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lz4/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lv4/r;[Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv4/p;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lv4/p;->b:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lv4/p;->a:I

    .line 2
    .line 3
    check-cast p1, Lv4/s;

    .line 4
    .line 5
    check-cast p2, Lw5/d;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Lv4/q;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-direct {v0, v1, p2}, Lv4/q;-><init>(ILw5/d;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p1, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    .line 17
    .line 18
    new-instance p2, Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, -0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {p2, v2, v2, v3, v1}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lv4/g;

    .line 31
    .line 32
    new-instance v1, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 33
    .line 34
    invoke-direct {v1, p2}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/cast/d0;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lv4/p;->b:[Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x7

    .line 53
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_0
    new-instance v0, Lv4/q;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-direct {v0, v1, p2}, Lv4/q;-><init>(ILw5/d;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p1, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    .line 64
    .line 65
    new-instance p2, Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    const/4 v2, -0x1

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-direct {p2, v2, v2, v3, v1}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lv4/g;

    .line 78
    .line 79
    new-instance v1, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 80
    .line 81
    invoke-direct {v1, p2}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/cast/d0;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lv4/p;->b:[Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x5

    .line 100
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_1
    new-instance v0, Lv4/q;

    .line 105
    .line 106
    const/4 v1, 0x1

    .line 107
    invoke-direct {v0, v1, p2}, Lv4/q;-><init>(ILw5/d;)V

    .line 108
    .line 109
    .line 110
    iget-object p2, p1, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    .line 111
    .line 112
    new-instance p2, Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 113
    .line 114
    const/4 v1, 0x1

    .line 115
    const/4 v2, -0x1

    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-direct {p2, v2, v2, v3, v1}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lv4/g;

    .line 125
    .line 126
    new-instance v1, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 127
    .line 128
    invoke-direct {v1, p2}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/cast/d0;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lv4/p;->b:[Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 144
    .line 145
    .line 146
    const/4 v0, 0x6

    .line 147
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
