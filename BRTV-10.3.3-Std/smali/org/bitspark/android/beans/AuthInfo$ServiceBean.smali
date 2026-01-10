.class public Lorg/bitspark/android/beans/AuthInfo$ServiceBean;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitspark/android/beans/AuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceBean"
.end annotation


# instance fields
.field public auth_url:Ljava/lang/String;

.field public auth_url_sdk:Ljava/lang/String;

.field public brand_url:Ljava/lang/String;

.field public ch_url:Ljava/lang/String;

.field public domain_suffix:Ljava/lang/String;

.field public enabledAppManager:Z

.field public enabledLive:Z

.field public enabledPlayback:Z

.field public enabledVoD:Z

.field public epg_url:Ljava/lang/String;

.field public event_url:Ljava/lang/String;

.field public logo:Ljava/lang/String;

.field public message_url:Ljava/lang/String;

.field public mk_broker:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public reseller:Ljava/lang/String;

.field public telephone:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public type:I

.field public update_url:Ljava/lang/String;

.field public vod_search_url:Ljava/lang/String;

.field public vod_tag_url:Ljava/lang/String;

.field public vod_url:Ljava/lang/String;

.field public website:Ljava/lang/String;

.field public wsguard_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public native toString()Ljava/lang/String;
.end method
