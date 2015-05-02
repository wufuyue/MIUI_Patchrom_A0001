.class Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmTimeoutCheckReceiver"
.end annotation


# static fields
.field private static final ACTION_OPPO_GUARD_ELF_MONITOR:Ljava/lang/String; = "android.intent.action.OPPO_GUARD_ELF_MONITOR"

.field private static final ALARM_WAKEUP_CHECK_ACTION:Ljava/lang/String; = "android.intent.action.ALARM_WAKEUP_CHECK"

.field private static final ATAG:Ljava/lang/String; = "AlarmWakeupCheck"

.field private static final INTERVAL_WAKEUP_CHECK:J = 0xafc80L

.field private static final THRESHOLD_SEC_PER_WAKEUP:J = 0x78L

.field private static final TIMEOUT_INTERVAL:J = 0x493e0L

.field private static final TIMEOUT_THRESHOLD:J = 0x927c0L


# instance fields
.field private intervalScreenoff:J

.field public mAcquireTime:J

.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmTimeoutCheck:Ljava/lang/Runnable;

.field private mAlarmWakeupCheck:Ljava/lang/Runnable;

.field private mHandlerThreadTimeout:Landroid/os/HandlerThread;

.field private mHandlerTimeout:Landroid/os/Handler;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mReportFrequentAlarm:Ljava/lang/Runnable;

.field private mReportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public mScreenOn:Z

.field private mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

.field private mWakeupNumRecord:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;

.field private timeStampScreenoff:J


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2079
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2062
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mScreenOn:Z

    .line 2065
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAcquireTime:J

    .line 2066
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 2075
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    .line 2147
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$1;-><init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAlarmTimeoutCheck:Ljava/lang/Runnable;

    .line 2250
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$2;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$2;-><init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeupNumRecord:Ljava/lang/Runnable;

    .line 2265
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$3;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$3;-><init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportFrequentAlarm:Ljava/lang/Runnable;

    .line 2272
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$4;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver$4;-><init>(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAlarmWakeupCheck:Ljava/lang/Runnable;

    .line 2081
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2082
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2083
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2084
    const-string v2, "android.intent.action.ALARM_WAKEUP_CHECK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2087
    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2088
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "alarmCheck"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    .line 2089
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2091
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AlarmTimeout"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerThreadTimeout:Landroid/os/HandlerThread;

    .line 2092
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerThreadTimeout:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2093
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerThreadTimeout:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    .line 2095
    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ALARM_WAKEUP_CHECK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v2, v5, v3, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2099
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 2100
    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2058
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->alarmTimeoutCheck()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2058
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->reportFrequentAlarmList()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2058
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->alarmWakeupCheck()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;

    .prologue
    .line 2058
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->scheduleAlarmWakeupCheck()V

    return-void
.end method

.method private addReportList(ILjava/lang/String;J)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "wakeupInterval"    # J

    .prologue
    .line 2171
    const/4 v0, 0x0

    .line 2172
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->getFrequentAlarm(I)Ljava/util/HashMap;

    move-result-object v0

    .line 2173
    if-eqz v0, :cond_0

    .line 2174
    const-string v1, "WakeupInterval"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2183
    :goto_0
    return-void

    .line 2176
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2177
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    const-string v1, "PkgName"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    const-string v1, "WakeupInterval"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2181
    const-string v1, "AlarmWakeupCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addReportList: Uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private alarmTimeoutCheck()V
    .locals 14

    .prologue
    .line 2113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAcquireTime:J

    sub-long v2, v10, v12

    .line 2114
    .local v2, "hold":J
    const/4 v6, 0x0

    .line 2115
    .local v6, "isTimeout":Z
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$2000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Ljava/lang/Integer;

    .line 2117
    .local v8, "mUids":[Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 2118
    :try_start_0
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)I

    move-result v10

    if-nez v10, :cond_1

    .line 2119
    monitor-exit v11

    .line 2145
    :cond_0
    return-void

    .line 2122
    :cond_1
    const-wide/32 v12, 0x927c0

    cmp-long v10, v2, v12

    if-ltz v10, :cond_2

    .line 2123
    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "alarmTimeoutCheck release wakelock!!!, mBroadcastRefCount="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v13}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$2000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Ljava/lang/Integer;

    move-object v8, v0

    .line 2126
    const/4 v6, 0x1

    .line 2127
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$2000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2128
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v10, v12}, Lcom/android/server/AlarmManagerService;->access$1702(Lcom/android/server/AlarmManagerService;I)I

    .line 2129
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2131
    :cond_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2133
    if-eqz v6, :cond_0

    .line 2134
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/Integer;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v9, v1, v4

    .line 2135
    .local v9, "uid":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->assertUidInfo(I)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v5

    .line 2136
    .local v5, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v5, :cond_3

    .line 2137
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "alarmTimeoutCheck uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", process name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2131
    .end local v1    # "arr$":[Ljava/lang/Integer;
    .end local v4    # "i$":I
    .end local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "len$":I
    .end local v9    # "uid":Ljava/lang/Integer;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 2140
    .restart local v1    # "arr$":[Ljava/lang/Integer;
    .restart local v4    # "i$":I
    .restart local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v7    # "len$":I
    .restart local v9    # "uid":Ljava/lang/Integer;
    :cond_3
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "alarmTimeoutCheck uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private alarmWakeupCheck()V
    .locals 15

    .prologue
    .line 2224
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 2225
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2226
    .local v5, "nowElapsed":J
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2227
    .local v0, "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2228
    .local v1, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v9, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    if-eqz v9, :cond_0

    iget v9, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    iget v11, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeupWhenScreenoff:I

    if-le v9, v11, :cond_0

    .line 2232
    iget-wide v11, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->wakeupCountStartTime:J

    sub-long v11, v5, v11

    const-wide/16 v13, 0x3e8

    div-long v3, v11, v13

    .line 2233
    .local v3, "intervalSeconds":J
    const-wide/16 v11, 0x2d0

    cmp-long v9, v3, v11

    if-ltz v9, :cond_0

    .line 2237
    iget v9, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    iget v11, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeupWhenScreenoff:I

    sub-int/2addr v9, v11

    int-to-long v11, v9

    div-long v7, v3, v11

    .line 2238
    .local v7, "numSecondsPerWakeup":J
    const-wide/16 v11, 0x78

    cmp-long v9, v7, v11

    if-gez v9, :cond_0

    .line 2239
    const-string v9, "AlarmWakeupCheck"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "alarmWakeupCheck: Uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", pkgName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", wakeup system every "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " seconds, when screen off!!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget v9, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->uid:I

    iget-object v11, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v9, v11, v7, v8}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->addReportList(ILjava/lang/String;J)V

    goto :goto_0

    .line 2246
    .end local v0    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v1    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intervalSeconds":J
    .end local v5    # "nowElapsed":J
    .end local v7    # "numSecondsPerWakeup":J
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "nowElapsed":J
    :cond_1
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2248
    return-void
.end method

.method private assertUidInfo(I)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 2103
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 2104
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2105
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne p1, v3, :cond_0

    .line 2109
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFrequentAlarm(I)Ljava/util/HashMap;
    .locals 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2158
    const/4 v2, 0x0

    .line 2159
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2160
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2161
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v2, Ljava/util/HashMap;

    .line 2162
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Uid"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_0

    move-object v3, v2

    .line 2167
    :goto_1
    return-object v3

    .line 2160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2167
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getReportString(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "wakeupInterval"    # J

    .prologue
    .line 2186
    const-string v1, ""

    .line 2187
    .local v1, "str":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2188
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "[ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->intervalScreenoff:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2196
    return-object v1
.end method

.method private isUidInReportList(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 2285
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2286
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2287
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 2288
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Uid"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 2289
    const/4 v3, 0x1

    .line 2293
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    return v3

    .line 2286
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2293
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private reportFrequentAlarmList()V
    .locals 13

    .prologue
    .line 2200
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2201
    .local v2, "len":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2203
    .local v7, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2204
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 2205
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "Uid"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2206
    .local v6, "uid":I
    const-string v10, "PkgName"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2207
    .local v4, "pkgName":Ljava/lang/String;
    const-string v10, "WakeupInterval"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 2209
    .local v8, "wakeupInterval":J
    invoke-direct {p0, v4, v8, v9}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->getReportString(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 2210
    .local v5, "reportString":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2211
    const-string v10, "AlarmWakeupCheck"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportFrequentAlarmList: reportString="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2214
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "reportString":Ljava/lang/String;
    .end local v6    # "uid":I
    .end local v8    # "wakeupInterval":J
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 2215
    new-instance v1, Landroid/content/Intent;

    const-string v10, "android.intent.action.OPPO_GUARD_ELF_MONITOR"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2216
    .local v1, "intent":Landroid/content/Intent;
    const-string v10, "data"

    invoke-virtual {v1, v10, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2217
    const-string v10, "type"

    const-string v11, "alarm"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2218
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2221
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private scheduleAlarmWakeupCheck()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 2341
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v6, 0xafc80

    add-long/2addr v2, v6

    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V

    .line 2343
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2347
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2348
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2349
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mScreenOn:Z

    .line 2350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->timeStampScreenoff:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->intervalScreenoff:J

    .line 2351
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAlarmTimeoutCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2352
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 2353
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeupNumRecord:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2354
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAlarmWakeupCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2355
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportFrequentAlarm:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2356
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2372
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2358
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mScreenOn:Z

    .line 2359
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 2360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAcquireTime:J

    .line 2361
    :cond_2
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAlarmTimeoutCheck:Ljava/lang/Runnable;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2363
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2364
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2365
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeupNumRecord:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2366
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->scheduleAlarmWakeupCheck()V

    .line 2367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->timeStampScreenoff:J

    goto :goto_0

    .line 2368
    :cond_3
    const-string v1, "android.intent.action.ALARM_WAKEUP_CHECK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2369
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2370
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mHandlerTimeout:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mAlarmWakeupCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public recalculateRepeatAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const-wide/32 v4, 0x1d4c0

    .line 2320
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mScreenOn:Z

    if-eqz v0, :cond_1

    .line 2338
    :cond_0
    :goto_0
    return-void

    .line 2324
    :cond_1
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2328
    :cond_2
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->isUidInReportList(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2332
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 2333
    const-string v0, "AlarmWakeupCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recalculateRepeatAlarm: pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    const-string v0, "AlarmWakeupCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recalculateRepeatAlarm: 11 alarm.repeatInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 2336
    const-string v0, "AlarmWakeupCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recalculateRepeatAlarm: 22 alarm.repeatInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recalculateTriggertime(IJLandroid/app/PendingIntent;)J
    .locals 10
    .param p1, "type"    # I
    .param p2, "triggerElapsed"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    const-wide/32 v8, 0x1d4c0

    .line 2297
    const-wide/16 v0, 0x0

    .line 2298
    .local v0, "delta":J
    iget-boolean v6, p0, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->mScreenOn:Z

    if-eqz v6, :cond_0

    move-wide v2, v0

    .line 2316
    .end local v0    # "delta":J
    .local v2, "delta":J
    :goto_0
    return-wide v2

    .line 2302
    .end local v2    # "delta":J
    .restart local v0    # "delta":J
    :cond_0
    if-eqz p1, :cond_1

    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    move-wide v2, v0

    .line 2303
    .end local v0    # "delta":J
    .restart local v2    # "delta":J
    goto :goto_0

    .line 2306
    .end local v2    # "delta":J
    .restart local v0    # "delta":J
    :cond_1
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService$AlarmTimeoutCheckReceiver;->isUidInReportList(I)Z

    move-result v6

    if-nez v6, :cond_2

    move-wide v2, v0

    .line 2307
    .end local v0    # "delta":J
    .restart local v2    # "delta":J
    goto :goto_0

    .line 2310
    .end local v2    # "delta":J
    .restart local v0    # "delta":J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2311
    .local v4, "nowElapsed":J
    sub-long v6, p2, v4

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 2312
    add-long v6, v4, v8

    sub-long v0, v6, p2

    .line 2313
    const-string v6, "AlarmWakeupCheck"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recalculateTriggertime: pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", operation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", delta="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v2, v0

    .line 2316
    .end local v0    # "delta":J
    .restart local v2    # "delta":J
    goto :goto_0
.end method
