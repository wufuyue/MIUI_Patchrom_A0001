.class public Lcom/android/server/location/GpsMonitor;
.super Ljava/lang/Object;
.source "GpsMonitor.java"


# static fields
.field private static final MIN_DIS_NAV_DIST_NUM:I = 0x168

.field private static final MIN_INDOOR_DIST_NUM:I = 0xb4

.field private static final MIN_INDOOR_RESET_NUM:I = 0x5

.field private static final MIN_NAV_DIST_NUM:I = 0x1e

.field private static final MIN_NAV_RESET_NUM:I = 0x5

.field private static final MIN_OUTDOOR_DIST_NUM:I = 0xa

.field private static final MIN_OUTDOOR_SNR_NUM:I = 0x4

.field private static final MIN_SNR_VALUE:I = 0x8

.field private static final MIN_WALK_SPEED:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "GpsMonitor"


# instance fields
.field private mDisNavTimer:I

.field private mIndoorTimer:I

.field private mIsNavNow:Z

.field private mLastSnrs:[F

.field private mNavTimer:I

.field private mOutdoorTimer:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsMonitor;->mLastSnrs:[F

    .line 10
    iput v1, p0, Lcom/android/server/location/GpsMonitor;->mIndoorTimer:I

    .line 11
    iput v1, p0, Lcom/android/server/location/GpsMonitor;->mOutdoorTimer:I

    .line 13
    iput v1, p0, Lcom/android/server/location/GpsMonitor;->mNavTimer:I

    .line 14
    iput v1, p0, Lcom/android/server/location/GpsMonitor;->mDisNavTimer:I

    .line 15
    iput-boolean v1, p0, Lcom/android/server/location/GpsMonitor;->mIsNavNow:Z

    .line 32
    return-void
.end method

.method private isIndoorMode([F)Z
    .locals 4
    .param p1, "snrs"    # [F

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 117
    const/4 v0, 0x0

    .line 120
    .local v0, "isIndoor":Z
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsMonitor;->isIndoorStatus([F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget v1, p0, Lcom/android/server/location/GpsMonitor;->mIndoorTimer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsMonitor;->mIndoorTimer:I

    .line 123
    iget v1, p0, Lcom/android/server/location/GpsMonitor;->mIndoorTimer:I

    if-gt v3, v1, :cond_0

    .line 124
    iput v2, p0, Lcom/android/server/location/GpsMonitor;->mOutdoorTimer:I

    .line 129
    const/16 v1, 0xb4

    iget v2, p0, Lcom/android/server/location/GpsMonitor;->mIndoorTimer:I

    if-gt v1, v2, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 147
    :cond_0
    :goto_0
    const-string v1, "GpsMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--isIndoorMode mOutdoorTimer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsMonitor;->mOutdoorTimer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIndoorTimer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsMonitor;->mIndoorTimer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v0

    .line 133
    :cond_1
    iget v1, p0, Lcom/android/server/location/GpsMonitor;->mOutdoorTimer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsMonitor;->mOutdoorTimer:I

    .line 135
    iget v1, p0, Lcom/android/server/location/GpsMonitor;->mOutdoorTimer:I

    if-gt v3, v1, :cond_0

    .line 136
    iput v2, p0, Lcom/android/server/location/GpsMonitor;->mIndoorTimer:I

    .line 141
    const/16 v1, 0xa

    iget v2, p0, Lcom/android/server/location/GpsMonitor;->mOutdoorTimer:I

    if-gt v1, v2, :cond_0

    .line 142
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIndoorStatus([F)Z
    .locals 9
    .param p1, "snrs"    # [F

    .prologue
    .line 181
    const/4 v2, 0x1

    .line 184
    .local v2, "isIndoorMode":Z
    iget-object v6, p0, Lcom/android/server/location/GpsMonitor;->mLastSnrs:[F

    if-nez v6, :cond_1

    .line 185
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    iput-object v6, p0, Lcom/android/server/location/GpsMonitor;->mLastSnrs:[F

    .line 208
    :cond_0
    :goto_0
    const-string v6, "GpsMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--isIndoorStatus snr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/GpsMonitor;->mLastSnrs:[F

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v2

    .line 189
    :cond_1
    iget-object v6, p0, Lcom/android/server/location/GpsMonitor;->mLastSnrs:[F

    invoke-static {v6, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v6

    if-nez v6, :cond_0

    .line 193
    const/4 v5, 0x0

    .line 194
    .local v5, "tmpNum":I
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    iput-object v6, p0, Lcom/android/server/location/GpsMonitor;->mLastSnrs:[F

    .line 196
    iget-object v0, p0, Lcom/android/server/location/GpsMonitor;->mLastSnrs:[F

    .local v0, "arr$":[F
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget v4, v0, v1

    .line 197
    .local v4, "snr":F
    const/high16 v6, 0x41000000    # 8.0f

    cmpg-float v6, v6, v4

    if-gez v6, :cond_2

    .line 198
    add-int/lit8 v5, v5, 0x1

    .line 200
    const/4 v6, 0x4

    if-gt v6, v5, :cond_2

    .line 201
    const/4 v2, 0x0

    .line 202
    goto :goto_0

    .line 196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isNavigateMode(F)Z
    .locals 4
    .param p1, "speed"    # F

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 72
    iget-boolean v0, p0, Lcom/android/server/location/GpsMonitor;->mIsNavNow:Z

    .line 75
    .local v0, "isNavigate":Z
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsMonitor;->isNavigateStatus(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget v1, p0, Lcom/android/server/location/GpsMonitor;->mNavTimer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsMonitor;->mNavTimer:I

    .line 78
    iget v1, p0, Lcom/android/server/location/GpsMonitor;->mNavTimer:I

    if-gt v2, v1, :cond_0

    .line 79
    iput v3, p0, Lcom/android/server/location/GpsMonitor;->mDisNavTimer:I

    .line 84
    const/16 v1, 0x1e

    iget v2, p0, Lcom/android/server/location/GpsMonitor;->mNavTimer:I

    if-gt v1, v2, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GpsMonitor;->mIsNavNow:Z

    .line 102
    :cond_0
    :goto_0
    const-string v1, "GpsMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--isNavigateMode NavTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsMonitor;->mNavTimer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", disNavTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsMonitor;->mDisNavTimer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v0

    .line 89
    :cond_1
    iget v1, p0, Lcom/android/server/location/GpsMonitor;->mDisNavTimer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsMonitor;->mDisNavTimer:I

    .line 91
    iget v1, p0, Lcom/android/server/location/GpsMonitor;->mDisNavTimer:I

    if-gt v2, v1, :cond_2

    .line 92
    iput v3, p0, Lcom/android/server/location/GpsMonitor;->mNavTimer:I

    .line 95
    :cond_2
    const/16 v1, 0x168

    iget v2, p0, Lcom/android/server/location/GpsMonitor;->mDisNavTimer:I

    if-gt v1, v2, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 97
    iput-boolean v3, p0, Lcom/android/server/location/GpsMonitor;->mIsNavNow:Z

    goto :goto_0
.end method

.method private isNavigateStatus(F)Z
    .locals 4
    .param p1, "speed"    # F

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "isNavigate":Z
    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v1, v1, p1

    if-gez v1, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 167
    :cond_0
    const-string v1, "GpsMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--isNavigateStatus speed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v0
.end method


# virtual methods
.method public needStopGps(F[F)Z
    .locals 3
    .param p1, "speed"    # F
    .param p2, "snrs"    # [F

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, "needed":Z
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsMonitor;->isNavigateMode(F)Z

    move-result v1

    .line 54
    .local v1, "isNavigating":Z
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsMonitor;->isIndoorMode([F)Z

    move-result v0

    .line 56
    .local v0, "isIndoor":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 57
    const/4 v2, 0x1

    .line 60
    :cond_0
    return v2
.end method

.method public resetStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/android/server/location/GpsMonitor;->mIndoorTimer:I

    .line 36
    iput v0, p0, Lcom/android/server/location/GpsMonitor;->mOutdoorTimer:I

    .line 37
    iput v0, p0, Lcom/android/server/location/GpsMonitor;->mNavTimer:I

    .line 38
    iput v0, p0, Lcom/android/server/location/GpsMonitor;->mDisNavTimer:I

    .line 39
    return-void
.end method
