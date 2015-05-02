.class public Lcom/android/server/am/OppoAbnormalAppManager;
.super Ljava/lang/Object;
.source "OppoAbnormalAppManager.java"


# static fields
.field public static ABNORMAL_START_COUNT:I

.field public static CHECK_TIME_INTERVAL:J

.field public static COLLECT_START_COUNT:I

.field public static MAX_LIST_COUNT:I

.field public static TAG:Ljava/lang/String;

.field private static mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;


# instance fields
.field final ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String;

.field DEBUG:Z

.field DEBUG_DETAIL:Z

.field mAms:Lcom/android/server/am/ActivityManagerService;

.field mLastCheckTime:J

.field mRestrictAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStartAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/OppoAppStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSwitch:Z

.field mUploadInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "OppoAbnormalAppManager"

    sput-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    .line 36
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/am/OppoAbnormalAppManager;->ABNORMAL_START_COUNT:I

    .line 39
    const/16 v0, 0xf

    sput v0, Lcom/android/server/am/OppoAbnormalAppManager;->COLLECT_START_COUNT:I

    .line 42
    const/16 v0, 0x64

    sput v0, Lcom/android/server/am/OppoAbnormalAppManager;->MAX_LIST_COUNT:I

    .line 45
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/am/OppoAbnormalAppManager;->CHECK_TIME_INTERVAL:J

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckTime:J

    .line 55
    iput-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG:Z

    .line 57
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    .line 61
    const-string v0, "persist.oppo.monitor.appstart"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    .line 63
    const-string v0, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mRestrictAppList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 78
    return-void
.end method

.method public static final getInstance()Lcom/android/server/am/OppoAbnormalAppManager;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/server/am/OppoAbnormalAppManager;

    invoke-direct {v0}, Lcom/android/server/am/OppoAbnormalAppManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    .line 84
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->mOppoAbnormalAppManager:Lcom/android/server/am/OppoAbnormalAppManager;

    return-object v0
.end method


# virtual methods
.method public cleanAbnormalAppList()V
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "cleanAbnormalAppList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    return-void
.end method

.method public cleanUploadInfoList()V
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "cleanUploadInfoList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    return-void
.end method

.method public collectStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "startType"    # Ljava/lang/String;
    .param p4, "isThird"    # Z

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoAbnormalAppManager;->getAppInfoInList(Ljava/lang/String;)Lcom/android/server/am/OppoAppStartInfo;

    move-result-object v0

    .line 143
    .local v0, "appStartInfo":Lcom/android/server/am/OppoAppStartInfo;
    if-nez v0, :cond_0

    .line 144
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OppoAppStartInfo;->builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/am/OppoAppStartInfo;

    move-result-object v1

    .line 145
    .local v1, "info":Lcom/android/server/am/OppoAppStartInfo;
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v1    # "info":Lcom/android/server/am/OppoAppStartInfo;
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/am/OppoAppStartInfo;->increaseStartCount(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/OppoAppStartInfo;->setCurStartTime(J)V

    goto :goto_0
.end method

.method public getAppInfoInList(Ljava/lang/String;)Lcom/android/server/am/OppoAppStartInfo;
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OppoAppStartInfo;

    .line 154
    .local v0, "appinfo":Lcom/android/server/am/OppoAppStartInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    .end local v0    # "appinfo":Lcom/android/server/am/OppoAppStartInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleAbnormalApp(Lcom/android/server/am/OppoAppStartInfo;)V
    .locals 3
    .param p1, "appinfo"    # Lcom/android/server/am/OppoAppStartInfo;

    .prologue
    .line 244
    invoke-virtual {p1}, Lcom/android/server/am/OppoAppStartInfo;->getIsThird()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v1, "handleAbnormalApp setPackageRestricted true!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p1}, Lcom/android/server/am/OppoAppStartInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/OppoAbnormalAppManager;->setPackageRestricted(Ljava/lang/String;Z)V

    .line 248
    invoke-virtual {p1}, Lcom/android/server/am/OppoAppStartInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAbnormalAppManager;->killAbnormalApp(Ljava/lang/String;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAbnormalApp isn\'t third app    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/OppoAppStartInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleStartAppInfo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "startType"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    if-nez v2, :cond_0

    .line 177
    :goto_0
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 168
    .local v0, "isThird":Z
    const-string v1, ""

    .line 169
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 170
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 171
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 172
    const/4 v0, 0x1

    .line 176
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, p2, v0}, Lcom/android/server/am/OppoAbnormalAppManager;->handleStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public handleStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "startType"    # Ljava/lang/String;
    .param p4, "isThird"    # Z

    .prologue
    .line 180
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_0

    .line 181
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartAppInfo processName == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  startType == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 184
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    iput-wide v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckTime:J

    .line 186
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now Begin Monitor App StartInfo\'s Time == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/OppoAbnormalAppManager;->collectStartAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    iget-wide v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckTime:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/am/OppoAbnormalAppManager;->CHECK_TIME_INTERVAL:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->notifyAbnormalInfo()V

    .line 197
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_3

    .line 198
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartAppInfo cost time ==  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_3
    return-void
.end method

.method public isPackageRestricted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mRestrictAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killAbnormalApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 255
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "killAbnormalApp  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 260
    :cond_0
    return-void
.end method

.method public notifyAbnormalInfo()V
    .locals 4

    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mStartAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OppoAppStartInfo;

    .line 109
    .local v0, "appinfo":Lcom/android/server/am/OppoAppStartInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartInfo;->getStartCount()I

    move-result v2

    sget v3, Lcom/android/server/am/OppoAbnormalAppManager;->ABNORMAL_START_COUNT:I

    if-le v2, v3, :cond_2

    .line 110
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 111
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v3, "#################  AbnormalInfo app  ##########################"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v2, "abnormal appinfo"

    invoke-virtual {v0, v2}, Lcom/android/server/am/OppoAppStartInfo;->dumpInfo(Ljava/lang/String;)V

    .line 113
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v3, "###############################################################"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    const-string v3, "abnormal appinfo"

    invoke-virtual {v0, v3}, Lcom/android/server/am/OppoAppStartInfo;->infoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoAbnormalAppManager;->handleAbnormalApp(Lcom/android/server/am/OppoAppStartInfo;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartInfo;->getStartCount()I

    move-result v2

    sget v3, Lcom/android/server/am/OppoAbnormalAppManager;->COLLECT_START_COUNT:I

    if-le v2, v3, :cond_4

    .line 118
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_3

    .line 119
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v3, "---------------------  warning app  -----------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v2, "warning appinfo"

    invoke-virtual {v0, v2}, Lcom/android/server/am/OppoAppStartInfo;->dumpInfo(Ljava/lang/String;)V

    .line 121
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v3, "-----------------------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    const-string v3, "warning appinfo"

    invoke-virtual {v0, v3}, Lcom/android/server/am/OppoAppStartInfo;->infoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_0

    .line 126
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v3, "-----------------  normalInfo app  -----------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v2, "normal appinfo"

    invoke-virtual {v0, v2}, Lcom/android/server/am/OppoAppStartInfo;->dumpInfo(Ljava/lang/String;)V

    .line 128
    sget-object v2, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    const-string v3, "-----------------------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v0    # "appinfo":Lcom/android/server/am/OppoAppStartInfo;
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->sendAbnormalNotify()V

    .line 136
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->cleanAbnormalAppList()V

    .line 137
    invoke-virtual {p0}, Lcom/android/server/am/OppoAbnormalAppManager;->cleanUploadInfoList()V

    .line 138
    return-void
.end method

.method public sendAbnormalNotify()V
    .locals 4

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "startinfo"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mUploadInfoList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 266
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 268
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    :cond_0
    return-void
.end method

.method public setAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 89
    return-void
.end method

.method public setLastCheckTime(J)V
    .locals 0
    .param p1, "lastCheckTime"    # J

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mLastCheckTime:J

    .line 93
    return-void
.end method

.method public setPackageRestricted(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isRestrict"    # Z

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoAbnormalAppManager;->isPackageRestricted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    if-nez p2, :cond_1

    .line 212
    iget-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPackageRestricted remove packageName  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mRestrictAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    if-eqz p2, :cond_1

    .line 218
    iget-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 219
    sget-object v0, Lcom/android/server/am/OppoAbnormalAppManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPackageRestricted add packageName  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mRestrictAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPackageUnRestricted(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/OppoAbnormalAppManager;->setPackageRestricted(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public validNewProc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 233
    iget-boolean v1, p0, Lcom/android/server/am/OppoAbnormalAppManager;->mSwitch:Z

    if-nez v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoAbnormalAppManager;->isPackageRestricted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const/4 v0, 0x0

    goto :goto_0
.end method
