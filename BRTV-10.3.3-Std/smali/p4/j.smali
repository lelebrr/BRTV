.class public abstract Lp4/j;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Lcom/google/android/gms/common/Feature;

.field public static final b:Lcom/google/android/gms/common/Feature;

.field public static final c:Lcom/google/android/gms/common/Feature;

.field public static final d:Lcom/google/android/gms/common/Feature;

.field public static final e:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v1, "client_side_logging"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 9
    .line 10
    const-string v2, "cxless_client_minimal"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lp4/j;->a:Lcom/google/android/gms/common/Feature;

    .line 16
    .line 17
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 18
    .line 19
    const-string v3, "cxless_caf_control"

    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcom/google/android/gms/common/Feature;

    .line 25
    .line 26
    const-string v4, "module_flag_control"

    .line 27
    .line 28
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v3, Lp4/j;->b:Lcom/google/android/gms/common/Feature;

    .line 32
    .line 33
    new-instance v4, Lcom/google/android/gms/common/Feature;

    .line 34
    .line 35
    const-string v5, "discovery_hint_supply"

    .line 36
    .line 37
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Lcom/google/android/gms/common/Feature;

    .line 41
    .line 42
    const-string v6, "relay_casting_set_active_account"

    .line 43
    .line 44
    invoke-direct {v5, v6}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v6, Lcom/google/android/gms/common/Feature;

    .line 48
    .line 49
    const-string v7, "analytics_proto_enum_translation"

    .line 50
    .line 51
    invoke-direct {v6, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v6, Lp4/j;->c:Lcom/google/android/gms/common/Feature;

    .line 55
    .line 56
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 57
    .line 58
    const-string v8, "integer_to_integer_map"

    .line 59
    .line 60
    invoke-direct {v7, v8}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v7, Lp4/j;->d:Lcom/google/android/gms/common/Feature;

    .line 64
    .line 65
    new-instance v8, Lcom/google/android/gms/common/Feature;

    .line 66
    .line 67
    const-string v9, "relay_casting_set_remote_casting_mode"

    .line 68
    .line 69
    invoke-direct {v8, v9}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v9, Lcom/google/android/gms/common/Feature;

    .line 73
    .line 74
    const-string v10, "get_relay_access_token"

    .line 75
    .line 76
    invoke-direct {v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v10, Lcom/google/android/gms/common/Feature;

    .line 80
    .line 81
    const-string v11, "get_cast_settings"

    .line 82
    .line 83
    invoke-direct {v10, v11}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v11, Lcom/google/android/gms/common/Feature;

    .line 87
    .line 88
    const-string v12, "set_bundle_setting"

    .line 89
    .line 90
    invoke-direct {v11, v12}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v12, Lcom/google/android/gms/common/Feature;

    .line 94
    .line 95
    const-string v13, "get_client_updated_info"

    .line 96
    .line 97
    invoke-direct {v12, v13}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 101
    .line 102
    const-string v14, "device_suggestions"

    .line 103
    .line 104
    invoke-direct {v13, v14}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const/16 v14, 0xe

    .line 108
    .line 109
    new-array v14, v14, [Lcom/google/android/gms/common/Feature;

    .line 110
    .line 111
    const/4 v15, 0x0

    .line 112
    aput-object v0, v14, v15

    .line 113
    .line 114
    const/4 v0, 0x1

    .line 115
    aput-object v1, v14, v0

    .line 116
    .line 117
    const/4 v0, 0x2

    .line 118
    aput-object v2, v14, v0

    .line 119
    .line 120
    const/4 v0, 0x3

    .line 121
    aput-object v3, v14, v0

    .line 122
    .line 123
    const/4 v0, 0x4

    .line 124
    aput-object v4, v14, v0

    .line 125
    .line 126
    const/4 v0, 0x5

    .line 127
    aput-object v5, v14, v0

    .line 128
    .line 129
    const/4 v0, 0x6

    .line 130
    aput-object v6, v14, v0

    .line 131
    .line 132
    const/4 v0, 0x7

    .line 133
    aput-object v7, v14, v0

    .line 134
    .line 135
    const/16 v0, 0x8

    .line 136
    .line 137
    aput-object v8, v14, v0

    .line 138
    .line 139
    const/16 v0, 0x9

    .line 140
    .line 141
    aput-object v9, v14, v0

    .line 142
    .line 143
    const/16 v0, 0xa

    .line 144
    .line 145
    aput-object v10, v14, v0

    .line 146
    .line 147
    const/16 v0, 0xb

    .line 148
    .line 149
    aput-object v11, v14, v0

    .line 150
    .line 151
    const/16 v0, 0xc

    .line 152
    .line 153
    aput-object v12, v14, v0

    .line 154
    .line 155
    const/16 v0, 0xd

    .line 156
    .line 157
    aput-object v13, v14, v0

    .line 158
    .line 159
    sput-object v14, Lp4/j;->e:[Lcom/google/android/gms/common/Feature;

    .line 160
    .line 161
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Ll6/h;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1}, Ll6/h;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ll6/h;->u(Ll6/h;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "applicationId cannot be null"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method
