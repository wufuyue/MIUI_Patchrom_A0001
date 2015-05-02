.class public Lcom/android/server/OppoLightsService;
.super Lcom/android/server/LightsService;
.source "OppoLightsService.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Jun.Zhang@Plf.Framework, add for button light"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OppoLightsService$ButtonLight;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoLightsService"


# instance fields
.field mCameraLightReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V

    .line 210
    new-instance v1, Lcom/android/server/OppoLightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/OppoLightsService$1;-><init>(Lcom/android/server/OppoLightsService;)V

    iput-object v1, p0, Lcom/android/server/OppoLightsService;->mCameraLightReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p1, p0, Lcom/android/server/OppoLightsService;->mContext:Landroid/content/Context;

    .line 54
    new-instance v1, Lcom/android/server/OppoLightsService$ButtonLight;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/OppoLightsService$ButtonLight;-><init>(Lcom/android/server/OppoLightsService;ILcom/android/server/OppoLightsService$1;)V

    invoke-virtual {p0, v3, v1}, Lcom/android/server/OppoLightsService;->setLight(ILcom/android/server/LightsService$Light;)V

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.oppo.camera.OpenLight"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/server/OppoLightsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OppoLightsService;->mCameraLightReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/OppoLightsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoLightsService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/OppoLightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method setLight(ILcom/android/server/LightsService$Light;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "light"    # Lcom/android/server/LightsService$Light;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/OppoLightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aput-object p2, v0, p1

    .line 63
    return-void
.end method
