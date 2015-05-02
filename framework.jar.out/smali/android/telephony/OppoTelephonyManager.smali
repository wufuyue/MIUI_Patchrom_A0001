.class public Landroid/telephony/OppoTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "OppoTelephonyManager.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "sub class of TelephonyManager"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "OppoTelephonyManager"

.field private static isMtkGeminiSupport:Z

.field private static isMtkSupport:Z

.field private static isOppoSupport:Z

.field private static isRomSupport:Z

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/OppoTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Landroid/telephony/OppoTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/OppoTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/OppoTelephonyManager;->sInstance:Landroid/telephony/OppoTelephonyManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 40
    sput-object v0, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    .line 46
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    :goto_0
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.sw.solution.device"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isOppoSupport:Z

    .line 47
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.sw.solution.rom"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isRomSupport:Z

    .line 48
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "mtk.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    .line 49
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    .line 50
    const-string v1, "OppoTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppoTelephonyManager isMtkSupport ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isMtkGeminiSupport ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 42
    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/OppoTelephonyManager;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Landroid/telephony/OppoTelephonyManager;->sInstance:Landroid/telephony/OppoTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public oppoChangeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 101
    return-void
.end method

.method public oppoCheckUsimIs4G()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public oppoDisableDataConnectivityGemini(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method public oppoEmtDial(Ljava/lang/String;)V
    .locals 0
    .param p1, "telNumber"    # Ljava/lang/String;

    .prologue
    .line 146
    return-void
.end method

.method public oppoEmtHungup(Ljava/lang/String;)V
    .locals 0
    .param p1, "telNumber"    # Ljava/lang/String;

    .prologue
    .line 150
    return-void
.end method

.method public oppoEnableDataConnectivityGemini(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 124
    const/4 v0, -0x1

    return v0
.end method

.method public oppoEnableEngineerTest(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 154
    return-void
.end method

.method public oppoGetAudioRecordState()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public oppoGetIccCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public oppoGetIccLockEnabled()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public oppoGetIccPin1RetryCount()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetPreferredNetworkType()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetScAddress(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public oppoGetServiceState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public oppoGetServiceStateGemini(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public oppoGetSimIndicatorState()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimIndicatorStateGemini(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 136
    const/4 v0, -0x1

    return v0
.end method

.method public oppoIsDialing()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public oppoSetIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 97
    return-void
.end method

.method public oppoSetLine1Number(Ljava/lang/String;)Z
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public oppoSetPreferredNetworkType(I)I
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 75
    const/4 v0, -0x1

    return v0
.end method

.method public oppoSetScAddress(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method
