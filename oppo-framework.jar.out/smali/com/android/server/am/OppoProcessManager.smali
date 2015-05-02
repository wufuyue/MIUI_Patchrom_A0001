.class public Lcom/android/server/am/OppoProcessManager;
.super Ljava/lang/Object;
.source "OppoProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OppoProcessManager$H;,
        Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final APP_WIDGET_PATH:Ljava/lang/String; = "/data/data_bpm/appwidgets.xml"

.field private static final BAD_APPS_PATH:Ljava/lang/String; = "/data/data_bpm/bad_apps.xml"

.field private static final BPM_DIR:Ljava/lang/String; = "/data/data_bpm"

.field private static final BPM_PATH:Ljava/lang/String; = "/data/data_bpm/bpm.xml"

.field private static final BPM_STATUS_PATH:Ljava/lang/String; = "/data/data_bpm/bpm_sts.xml"

.field private static final BRD_PATH:Ljava/lang/String; = "/data/data_bpm/brd.xml"

.field private static DEBUG:Z = false

.field public static DEBUG_DETAIL:Z = false

.field private static final PKG_PATH:Ljava/lang/String; = "/data/data_bpm/pkg.xml"

.field private static final SUSPEND_DELAY:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "OppoProcessManager"

.field private static final UPDATE_APPWIDGET:I = 0x69

.field private static final UPDATE_BAD:I = 0x68

.field private static final UPDATE_BPM:I = 0x65

.field private static final UPDATE_BRD:I = 0x66

.field private static final UPDATE_PKG:I = 0x67

.field private static final UPDATE_STS:I = 0x64

.field private static mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mAppWidgetFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mAppWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBPMFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mBPMList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBPMSTSFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mBPMStatus:Z

.field private mBadAppFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mBadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mH:Lcom/android/server/am/OppoProcessManager$H;

.field final mHandler:Landroid/os/Handler;

.field private mPackageFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

.field private mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPower:Lcom/android/server/power/PowerManagerService;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    .line 62
    sput-boolean v1, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 69
    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 70
    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mPower:Lcom/android/server/power/PowerManagerService;

    .line 71
    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    .line 73
    iput-boolean v4, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    .line 104
    new-instance v2, Lcom/android/server/am/OppoProcessManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OppoProcessManager$1;-><init>(Lcom/android/server/am/OppoProcessManager;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mHandler:Landroid/os/Handler;

    .line 361
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ProcessManagerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "mThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 363
    new-instance v2, Lcom/android/server/am/OppoProcessManager$H;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/android/server/am/OppoProcessManager$H;-><init>(Lcom/android/server/am/OppoProcessManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    .line 364
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 365
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->initDir()V

    .line 367
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 368
    .local v1, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 369
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    .line 372
    :cond_0
    const-string v2, "/data/data_bpm/bpm.xml"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    .line 373
    const-string v2, "/data/data_bpm/pkg.xml"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    .line 374
    const-string v2, "/data/data_bpm/brd.xml"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    .line 375
    const-string v2, "/data/data_bpm/bad_apps.xml"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    .line 377
    new-instance v2, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMSTSFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 378
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMSTSFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 380
    new-instance v2, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v3, "/data/data_bpm/bpm.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 381
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 383
    new-instance v2, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v3, "/data/data_bpm/pkg.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mPackageFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 384
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mPackageFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 386
    new-instance v2, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v3, "/data/data_bpm/brd.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBroadcastFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 387
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBroadcastFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 389
    new-instance v2, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v3, "/data/data_bpm/bad_apps.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBadAppFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 390
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBadAppFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 393
    const-string v2, "/data/data_bpm/appwidgets.xml"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OppoProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    .line 394
    new-instance v2, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    const-string v3, "/data/data_bpm/appwidgets.xml"

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    .line 395
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetFileObserver:Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/OppoProcessManager$FileObserverPolicy;->startWatching()V

    .line 396
    return-void

    :cond_1
    move v2, v4

    .line 369
    goto :goto_0
.end method

.method private Logcat(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1064
    sget-boolean v0, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 1065
    const-string v0, "OppoProcessManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OppoProcessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/OppoProcessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/OppoProcessManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->getActiveAudioPids()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/OppoProcessManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->getTouchedWindowsPids()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/OppoProcessManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->getWakeLockedPids()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OppoProcessManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/OppoProcessManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isLocationApplication(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/am/OppoProcessManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessToast(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OppoProcessManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->updateProcessStateForChanged(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/server/am/OppoProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->updateProcessStateForWidgetChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OppoProcessManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    return-object v0
.end method

.method private cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 592
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 593
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_0

    .line 594
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 595
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/am/OppoProcessManager$2;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/server/am/OppoProcessManager$2;-><init>(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    monitor-exit v5

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private changeMod()V
    .locals 4

    .prologue
    .line 612
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 613
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/bpm.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 614
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/bpm_sts.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 615
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/pkg.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 616
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/brd.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 617
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/bad_apps.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 618
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "chmod 777 /data/data_bpm/appwidgets.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x1

    .line 542
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gt v1, v0, :cond_0

    .line 545
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 431
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 432
    if-nez p1, :cond_0

    .line 433
    :try_start_0
    monitor-exit v4

    .line 478
    :goto_0
    return v2

    .line 436
    :cond_0
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_2

    .line 437
    sget-boolean v2, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_1

    .line 438
    const-string v2, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#1 FIRST_APPLICATION_UID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 444
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 445
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 448
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 449
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 450
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 455
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 456
    .restart local v1    # "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 457
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 462
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 463
    .restart local v1    # "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 464
    monitor-exit v4

    move v2, v3

    goto/16 :goto_0

    .line 468
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_9
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_c

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    .line 470
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 471
    .restart local v1    # "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 472
    monitor-exit v4

    goto/16 :goto_0

    .line 479
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 475
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_b
    :try_start_1
    monitor-exit v4

    move v2, v3

    goto/16 :goto_0

    .line 478
    :cond_c
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private checkProcessToast(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 607
    invoke-static {p1}, Lcom/android/server/OppoBPMHelper;->checkProcessToast(I)Z

    move-result v0

    return v0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 1059
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v0, "sourceFile":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private getActiveAudioPids()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 550
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_pid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "pids":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/am/OppoProcessManager;->getActiveAudioPids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getActiveAudioPids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "pids"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 560
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-object v0

    .line 564
    :cond_1
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "pid":[Ljava/lang/String;
    goto :goto_0
.end method

.method private getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 845
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService;

    .line 847
    .local v0, "imManager":Lcom/android/server/InputMethodManagerService;
    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 850
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getInstance()Lcom/android/server/am/OppoProcessManager;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Lcom/android/server/am/OppoProcessManager;

    invoke-direct {v0}, Lcom/android/server/am/OppoProcessManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    .line 402
    :cond_0
    sget-object v0, Lcom/android/server/am/OppoProcessManager;->mOppoProcessManager:Lcom/android/server/am/OppoProcessManager;

    return-object v0
.end method

.method private getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 955
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 956
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 957
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 958
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    monitor-exit v3

    .line 962
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v1

    .line 956
    .restart local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 962
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v1, 0x0

    monitor-exit v3

    goto :goto_1

    .line 963
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getProcessForUid(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 967
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 968
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 970
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 971
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, p1, :cond_0

    .line 972
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 975
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    monitor-exit v4

    return-object v2

    .line 976
    .end local v0    # "i":I
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getTouchedWindowsPids()[I
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/OppoBPMHelper;->getTouchedWindowPids(Lcom/android/server/wm/WindowManagerService;)[I

    move-result-object v0

    return-object v0
.end method

.method private getWakeLockedPids()[I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mPower:Lcom/android/server/power/PowerManagerService;

    if-nez v0, :cond_0

    .line 575
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService;

    iput-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mPower:Lcom/android/server/power/PowerManagerService;

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mPower:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getWakeLockedPids()[I

    move-result-object v0

    return-object v0
.end method

.method private initDir()V
    .locals 5

    .prologue
    .line 626
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data_bpm"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 628
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 631
    :cond_0
    const-string v2, "/system/bpm/pkg.xml"

    const-string v3, "/data/data_bpm/pkg.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v2, "/system/bpm/brd.xml"

    const-string v3, "/data/data_bpm/brd.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v2, "/system/bpm/bpm_sts.xml"

    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v2, "/system/bpm/bpm.xml"

    const-string v3, "/data/data_bpm/bpm.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v2, "/system/bpm/bad_apps.xml"

    const-string v3, "/data/data_bpm/bad_apps.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v2, "/system/bpm/appwidgets.xml"

    const-string v3, "/data/data_bpm/appwidgets.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OppoProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->changeMod()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OppoProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkdir failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 805
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/OppoProcessManager;->isHomeProcess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isHomeProcess(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->queryHomeResolveInfo()Ljava/util/List;

    move-result-object v1

    .line 810
    .local v1, "mHomeList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 811
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 812
    const/4 v3, 0x1

    .line 815
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isInclude(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 987
    if-eqz p2, :cond_0

    array-length v5, p2

    if-lez v5, :cond_0

    if-nez p1, :cond_1

    .line 996
    :cond_0
    :goto_0
    return v4

    .line 991
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 992
    .local v3, "v":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 993
    const/4 v4, 0x1

    goto :goto_0

    .line 991
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v4, 0x0

    .line 827
    if-nez p1, :cond_1

    .line 841
    :cond_0
    :goto_0
    return v4

    .line 831
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 832
    .local v2, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v2, :cond_0

    .line 833
    const/4 v3, 0x0

    .line 834
    .local v3, "p":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 835
    .local v1, "im":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 836
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 837
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isLocationApplication(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 581
    invoke-static {}, Lcom/android/server/OppoBPMHelper;->getLocationListenersUid()[I

    move-result-object v1

    .line 582
    .local v1, "uids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 583
    aget v2, v1, v0

    if-ne p1, v2, :cond_0

    .line 584
    const/4 v2, 0x1

    .line 587
    :goto_1
    return v2

    .line 582
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 4
    .param p1, "preceding"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1076
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1078
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1080
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private queryHomeResolveInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 796
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 797
    .local v0, "mHomeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 801
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v1
.end method

.method private resumeTopProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 701
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    .line 703
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 704
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 705
    .local v1, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v3, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 709
    .end local v1    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 710
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 711
    .local v0, "cc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v3, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 716
    .end local v0    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    .line 717
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 719
    :cond_2
    return-void
.end method

.method private sendMessage(Lcom/android/server/am/ProcessRecord;IJ)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "what"    # I
    .param p3, "delay"    # J

    .prologue
    .line 406
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 407
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 408
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 409
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 410
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    invoke-virtual {v1, v0, p3, p4}, Lcom/android/server/am/OppoProcessManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 411
    return-void
.end method

.method private suspendProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 647
    if-nez p1, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    iget-boolean v1, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_2

    .line 655
    const/16 v1, 0x13f

    const-wide/16 v2, 0x1388

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager;->sendMessage(Lcom/android/server/am/ProcessRecord;IJ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspend Process failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 659
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13e

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(ILjava/lang/Object;)V

    .line 660
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isProcessSuspended(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13f

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    const/16 v1, 0x13f

    const-wide/16 v2, 0x1388

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager;->sendMessage(Lcom/android/server/am/ProcessRecord;IJ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1094
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v1, "targetFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1096
    .local v0, "sourceFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1097
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1100
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1101
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private updateProcessStateForChanged(Z)V
    .locals 4
    .param p1, "rs"    # Z

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/android/server/am/OppoProcessManager;->updateWidgets()V

    .line 747
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 749
    if-nez p1, :cond_2

    .line 750
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 751
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 752
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 753
    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 750
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 756
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 769
    .end local v0    # "i":I
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 761
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 762
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 763
    .restart local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_3

    .line 764
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 761
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 769
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    return-void
.end method

.method private updateProcessStateForWidgetChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 777
    if-eqz p1, :cond_0

    .line 778
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->updateWidget(Ljava/lang/String;)V

    .line 781
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 782
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 783
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 784
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1

    .line 785
    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 786
    invoke-virtual {p0, v1}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 782
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 788
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 792
    .end local v0    # "i":I
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i":I
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    return-void
.end method

.method private updateWidget(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 823
    invoke-static {p1}, Lcom/android/server/OppoBPMHelper;->updateProvider(Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method private updateWidgets()V
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/OppoBPMHelper;->updateProviders(Ljava/util/List;)V

    .line 820
    return-void
.end method


# virtual methods
.method public checkBroadcast(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 883
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 884
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 885
    const/4 v2, 0x1

    .line 888
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPackage(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 489
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 490
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 529
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 496
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 497
    .restart local v1    # "pkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 503
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 504
    .restart local v1    # "pkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    .line 509
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    .line 511
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 515
    :goto_1
    if-eqz v2, :cond_7

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_8

    .line 516
    :cond_7
    sget-boolean v4, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exits!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    :cond_8
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a

    .line 521
    iget-object v5, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 522
    .restart local v1    # "pkg":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v3, v4

    .line 523
    goto/16 :goto_0

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_a
    move v3, v4

    .line 529
    goto/16 :goto_0

    .line 512
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public checkPackageCanStart(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v0, 0x0

    .line 854
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    .line 878
    :cond_0
    :goto_0
    return v0

    .line 859
    :cond_1
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 864
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_0

    .line 869
    invoke-virtual {p0, p2}, Lcom/android/server/am/OppoProcessManager;->checkBroadcast(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 874
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 878
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x1

    .line 414
    iget-boolean v2, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    if-nez v2, :cond_0

    .line 427
    :goto_0
    return v1

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 421
    :try_start_0
    invoke-static {}, Lcom/android/server/OppoBPMHelper;->getLivePackageForLiveWallPaper()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "wallpaperPkg":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 423
    monitor-exit v2

    goto :goto_0

    .line 425
    .end local v0    # "wallpaperPkg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "wallpaperPkg":Ljava/lang/String;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@The BPM status is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    const-string v0, "@The BPM list : "

    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OppoProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1085
    const-string v0, "@The PKG list : "

    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mPkgList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OppoProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1086
    const-string v0, "@The BRD list : "

    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OppoProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1087
    const-string v0, "@The BAD list : "

    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mBadList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OppoProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1088
    const-string v0, "@The AppWidget list : "

    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OppoProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1089
    const-string v0, "@The suspend list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    return-void
.end method

.method public getBPMEnable()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    return v0
.end method

.method public isProcessSuspended(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 980
    if-eqz p1, :cond_0

    .line 981
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->isProcessSuspend(I)Z

    move-result v0

    .line 983
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadStateLocked(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v1, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1003
    const-string v11, "OppoProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " file don\'t exist!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    .end local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 1006
    .restart local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1008
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 1010
    .local v7, "success":Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1012
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v3, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1016
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 1017
    .local v9, "type":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    .line 1018
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1019
    .local v8, "tag":Ljava/lang/String;
    const-string v11, "p"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1020
    const/4 v11, 0x0

    const-string v12, "att"

    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1021
    .local v10, "value":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1022
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1026
    .end local v8    # "tag":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    .line 1027
    const/4 v7, 0x1

    .line 1040
    if-eqz v6, :cond_4

    .line 1041
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v5, v6

    .line 1046
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :cond_5
    :goto_1
    if-eqz v7, :cond_7

    move-object v1, v4

    .line 1047
    goto :goto_0

    .line 1043
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "type":I
    :catch_0
    move-exception v11

    move-object v5, v6

    .line 1045
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 1028
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_1
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_2
    :try_start_3
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1040
    if-eqz v5, :cond_5

    .line 1041
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1043
    :catch_2
    move-exception v11

    goto :goto_1

    .line 1030
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    .line 1031
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_3
    :try_start_5
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1040
    if-eqz v5, :cond_5

    .line 1041
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 1043
    :catch_4
    move-exception v11

    goto :goto_1

    .line 1032
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v0

    .line 1033
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_7
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1040
    if-eqz v5, :cond_5

    .line 1041
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 1043
    :catch_6
    move-exception v11

    goto :goto_1

    .line 1034
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1040
    if-eqz v5, :cond_5

    .line 1041
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_1

    .line 1043
    :catch_8
    move-exception v11

    goto :goto_1

    .line 1036
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 1037
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_6
    :try_start_b
    const-string v11, "OppoProcessManager"

    const-string v12, "failed parsing "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1040
    if-eqz v5, :cond_5

    .line 1041
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_1

    .line 1043
    :catch_a
    move-exception v11

    goto :goto_1

    .line 1039
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v11

    .line 1040
    :goto_7
    if-eqz v5, :cond_6

    .line 1041
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 1044
    :cond_6
    :goto_8
    throw v11

    .line 1050
    :cond_7
    sget-boolean v11, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "OppoProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " file failed parsing!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1043
    :catch_b
    move-exception v12

    goto :goto_8

    .line 1039
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 1036
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 1034
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1032
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1030
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1028
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_10
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public openDebug(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1071
    sput-boolean p1, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    .line 1072
    sput-boolean p1, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    .line 1073
    return-void
.end method

.method public resumeProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 676
    if-nez p1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13f

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->removeMessages(ILjava/lang/Object;)V

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/server/am/OppoProcessManager;->isProcessSuspended(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;

    const/16 v2, 0x13e

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/OppoProcessManager$H;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    const/16 v1, 0x13e

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/am/OppoProcessManager;->sendMessage(Lcom/android/server/am/ProcessRecord;IJ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resume Process failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resumeProcessByUID(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 695
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 696
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/OppoProcessManager;->resumeProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 698
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    return-void
.end method

.method public skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "ordered"    # Z

    .prologue
    const/4 v3, 0x0

    .line 893
    iget-boolean v4, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    if-nez v4, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v3

    .line 896
    :cond_1
    if-eqz p1, :cond_0

    .line 902
    if-eqz p3, :cond_3

    .line 903
    sget-boolean v4, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_2

    .line 904
    const-string v4, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not skip order broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_2
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto :goto_0

    .line 909
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 910
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 911
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto :goto_0

    .line 916
    .end local v0    # "action":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 917
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto :goto_0

    .line 923
    :cond_6
    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v5, :cond_8

    .line 924
    sget-boolean v4, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 925
    const-string v4, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not skip broadcast because uid is the same  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_7
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto/16 :goto_0

    .line 930
    :cond_8
    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_a

    .line 931
    sget-boolean v4, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 932
    const-string v4, "OppoProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not skip callingUid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_9
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    goto/16 :goto_0

    .line 940
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getTopRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 942
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 943
    if-eqz v1, :cond_c

    :try_start_0
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/OppoProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 944
    sget-boolean v5, Lcom/android/server/am/OppoProcessManager;->DEBUG:Z

    if-eqz v5, :cond_b

    .line 945
    const-string v5, "OppoProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not skip top activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_b
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OppoProcessManager;->resumeProcessByUID(I)V

    .line 947
    monitor-exit v4

    goto/16 :goto_0

    .line 949
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_c
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public updateProcessState(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 722
    iget-boolean v1, p0, Lcom/android/server/am/OppoProcessManager;->mBPMStatus:Z

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getTopRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 729
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/OppoProcessManager;->resumeTopProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 731
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 732
    invoke-direct {p0, p1}, Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 736
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-void
.end method
