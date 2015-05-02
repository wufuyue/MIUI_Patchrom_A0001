.class public Lcom/android/server/OppoDeviceStorageMonitorService;
.super Lcom/android/server/DeviceStorageMonitorService;
.source "OppoDeviceStorageMonitorService.java"


# static fields
.field private static final DEBUG_DEBUG_LOGV_MASK:I = 0x2

.field private static final DEBUG_LOCAL_LOGV_MASK:I = 0x1

.field private static final OPPO_DEFAULT_CHECK_INTERVAL:J = 0x7530L

.field private static final OPPO_DEVICE_MEMORY_WHAT:I = 0x1

.field private static final OPPO_LOW_SD_NOTIFICATION_ID:I = 0x3

.field private static final OPPO_MONITOR_INTERVAL:I = 0x1e

.field private static final OPPO_SHORT_CHECK_INTERVAL:J = 0x2710L

.field private static final OPPO_SHORT_INTERVAL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OppoDeviceStorageMonitorService"

.field private static debugLOGV:Z

.field private static localLOGV:Z

.field private static mLogFlag:J


# instance fields
.field private final DEFAULT_THRESHOLD_PERCENTAGE:I

.field private final GB_BYTES:J

.field private final MB_BYTES:J

.field private final OPPO_ACTION_FILEMANAGER:Ljava/lang/String;

.field private final OPPO_FULL_THRESHOLD_MB:J

.field private final OPPO_SD_NOT_ENOUGH_MB:J

.field private final OPPO_SD_NOT_ENOUGH_TRIM_MB:J

.field private final REMINDER_INTERVAL:J

.field private firstboot:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mExternalSdFileStats:Landroid/os/StatFs;

.field private mExternalSdPath:Ljava/lang/String;

.field private mFreeExternalSd:J

.field private mIntentFileCleanUP:Landroid/content/Intent;

.field private mLowDataFlag:Z

.field private mLowDataTimeStamp:J

.field private mLowSdFlag:Z

.field private mLowSdTimeStamp:J

.field mOHandler:Landroid/os/Handler;

.field private mSdFullFlag:Z

.field private mSdStartTrimThreshold:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lcom/android/server/OppoDeviceStorageMonitorService;->localLOGV:Z

    .line 62
    sput-boolean v0, Lcom/android/server/OppoDeviceStorageMonitorService;->debugLOGV:Z

    .line 65
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLogFlag:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    .line 78
    iput-boolean v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mSdFullFlag:Z

    .line 79
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->firstboot:Z

    .line 101
    const-wide/32 v2, 0x100000

    iput-wide v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->MB_BYTES:J

    .line 102
    const-wide/32 v2, 0x40000000

    iput-wide v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->GB_BYTES:J

    .line 103
    const-wide/32 v2, 0x6400000

    iput-wide v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->OPPO_SD_NOT_ENOUGH_MB:J

    .line 104
    const-wide/32 v2, 0x3200000

    iput-wide v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->OPPO_SD_NOT_ENOUGH_TRIM_MB:J

    .line 105
    const-wide/32 v2, 0xa00000

    iput-wide v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->OPPO_FULL_THRESHOLD_MB:J

    .line 106
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->DEFAULT_THRESHOLD_PERCENTAGE:I

    .line 108
    const-wide/32 v2, 0xf731400

    iput-wide v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->REMINDER_INTERVAL:J

    .line 111
    const-string v2, "ACTION_FILEMANAGER_BROWSE_CHECK_PASSWORD"

    iput-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->OPPO_ACTION_FILEMANAGER:Ljava/lang/String;

    .line 113
    new-instance v2, Lcom/android/server/OppoDeviceStorageMonitorService$1;

    invoke-direct {v2, p0}, Lcom/android/server/OppoDeviceStorageMonitorService$1;-><init>(Lcom/android/server/OppoDeviceStorageMonitorService;)V

    iput-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mOHandler:Landroid/os/Handler;

    .line 237
    new-instance v2, Lcom/android/server/OppoDeviceStorageMonitorService$2;

    invoke-direct {v2, p0}, Lcom/android/server/OppoDeviceStorageMonitorService$2;-><init>(Lcom/android/server/OppoDeviceStorageMonitorService;)V

    iput-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    iput-object p1, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    .line 271
    sget-boolean v2, Lcom/android/server/OppoDeviceStorageMonitorService;->debugLOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "OppoDeviceStorageMonitorService"

    const-string v3, "init!!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    .line 294
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.oppo.safe"

    const-string v3, "com.oppo.cleandroid.ui.ClearMainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 297
    iget-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    invoke-static {p1}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    .line 304
    const-string v2, "OppoDeviceStorageMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mExternalSdPath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppoCheckMemory()V

    .line 306
    return-void
.end method

.method private OppoCancelNotification(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 390
    .local v0, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 391
    return-void
.end method

.method private final OppoCheckMemory()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x100000

    .line 151
    const-wide/16 v0, 0x2710

    .line 153
    .local v0, "checkInterval":J
    invoke-direct {p0}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppoCheckSdMounted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 154
    const-wide/16 v0, 0x7530

    .line 155
    invoke-direct {p0}, Lcom/android/server/OppoDeviceStorageMonitorService;->restatSdDir()V

    .line 156
    sget-boolean v2, Lcom/android/server/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "OppoDeviceStorageMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFreeExternalSd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mFreeExternalSd:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    sget-boolean v2, Lcom/android/server/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "OppoDeviceStorageMonitorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSdStartTrimThreshold = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mSdStartTrimThreshold:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    iget-wide v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mFreeExternalSd:J

    iget-wide v4, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mSdStartTrimThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 176
    iget-boolean v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-nez v2, :cond_2

    .line 177
    const-string v2, "OppoDeviceStorageMonitorService"

    const-string v3, "OppoCheckMemory: Running low on SDCARD. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0}, Lcom/android/server/OppoDeviceStorageMonitorService;->sdsendNotification()V

    .line 195
    :cond_2
    :goto_0
    const-wide/32 v2, 0xf731400

    invoke-direct {p0, v2, v3}, Lcom/android/server/OppoDeviceStorageMonitorService;->timedReminder(J)V

    .line 196
    sget-boolean v2, Lcom/android/server/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v2, :cond_3

    const-string v2, "OppoDeviceStorageMonitorService"

    const-string v3, "Posting Message again"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppoPostCheckMemoryMsg(J)V

    .line 198
    return-void

    .line 182
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-eqz v2, :cond_2

    .line 183
    const-string v2, "OppoDeviceStorageMonitorService"

    const-string v3, "OppoCheckMemory: SDCARD available. Cancelling notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/android/server/OppoDeviceStorageMonitorService;->sdcancelNotification()V

    goto :goto_0

    .line 189
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-eqz v2, :cond_2

    .line 190
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    .line 191
    const-string v2, "OppoDeviceStorageMonitorService"

    const-string v3, "OppoCheckMemory: SDCARD is removed. Cancelling notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/android/server/OppoDeviceStorageMonitorService;->sdcancelNotification()V

    goto :goto_0
.end method

.method private OppoCheckSdMounted()Z
    .locals 3

    .prologue
    .line 146
    sget-boolean v0, Lcom/android/server/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoDeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoUsbEnvironment.getExternalStorageState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalSdState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    const-string v0, "mounted"

    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalSdState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private OppoPostCheckMemoryMsg(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x1

    .line 201
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mOHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mOHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mOHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 203
    return-void
.end method

.method private OppoShowNotification(Landroid/content/Intent;III)V
    .locals 11
    .param p1, "ointent"    # Landroid/content/Intent;
    .param p2, "id"    # I
    .param p3, "title_id"    # I
    .param p4, "details_id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 376
    .local v8, "mNotificationMgr":Landroid/app/NotificationManager;
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 377
    .local v10, "title":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 378
    .local v6, "details":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 380
    .local v7, "intent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 381
    .local v9, "notification":Landroid/app/Notification;
    const v0, 0x108058d

    iput v0, v9, Landroid/app/Notification;->icon:I

    .line 382
    iput-object v10, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 383
    iget v0, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 384
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0, v10, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 385
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, p2, v9, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 386
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OppoDeviceStorageMonitorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OppoDeviceStorageMonitorService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppoCheckMemory()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OppoDeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoDeviceStorageMonitorService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/OppoDeviceStorageMonitorService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OppoDeviceStorageMonitorService;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/OppoDeviceStorageMonitorService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoDeviceStorageMonitorService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/OppoDeviceStorageMonitorService;Landroid/content/Intent;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OppoDeviceStorageMonitorService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppoShowNotification(Landroid/content/Intent;III)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/OppoDeviceStorageMonitorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoDeviceStorageMonitorService;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/OppoDeviceStorageMonitorService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoDeviceStorageMonitorService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/OppoDeviceStorageMonitorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OppoDeviceStorageMonitorService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private parseLogMask([Ljava/lang/String;J)J
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 494
    move-wide v1, p2

    .line 496
    .local v1, "flag":J
    :try_start_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 497
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 506
    :cond_0
    :goto_0
    return-wide v1

    .line 500
    :cond_1
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private final restatSdDir()V
    .locals 4

    .prologue
    .line 127
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->firstboot:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->firstboot:Z

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mFreeExternalSd:J

    .line 137
    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mSdStartTrimThreshold:J

    .line 141
    :goto_1
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mExternalSdFileStats:Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mExternalSdPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private sdcancelNotification()V
    .locals 2

    .prologue
    .line 412
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V

    .line 413
    sget-boolean v0, Lcom/android/server/OppoDeviceStorageMonitorService;->debugLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "Canceling low SDCARD notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    .line 415
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdTimeStamp:J

    .line 416
    return-void
.end method

.method private sdsendNotification()V
    .locals 6

    .prologue
    const v3, 0xc04052e

    const/4 v5, 0x1

    .line 396
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    const/4 v1, 0x3

    const v2, 0xc040530

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppoShowNotification(Landroid/content/Intent;III)V

    .line 400
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0xc04052f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0xc04052b

    const v4, 0xc04052d

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppodsmDialog(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 406
    sget-boolean v0, Lcom/android/server/OppoDeviceStorageMonitorService;->debugLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "sdsendNotification: Sending low SDCARD notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iput-boolean v5, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdTimeStamp:J

    .line 409
    return-void
.end method

.method private timedReminder(J)V
    .locals 8
    .param p1, "interval"    # J

    .prologue
    const v4, 0xc04052d

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 208
    .local v6, "nowElapsed":J
    sget-boolean v0, Lcom/android/server/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoDeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timedReminder: nowElapsed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    sget-boolean v0, Lcom/android/server/OppoDeviceStorageMonitorService;->localLOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "OppoDeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timedReminder: mLowSdTimeStamp= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLowDataTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowDataTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    if-eqz v0, :cond_2

    .line 211
    iget-wide v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdTimeStamp:J

    sub-long v0, v6, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc04052e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0xc04052f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0xc04052b

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppodsmDialog(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 218
    iput-wide v6, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdTimeStamp:J

    .line 219
    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "timedReminder: show sd not enough diag"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    if-eqz v0, :cond_3

    .line 224
    iget-wide v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowDataTimeStamp:J

    sub-long v0, v6, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc040531

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0xc040532

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0xc04052c

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppodsmDialog(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 231
    iput-wide v6, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowDataTimeStamp:J

    .line 232
    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "timedReminder: show data not enough diag"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_3
    return-void
.end method

.method private updateLogMask(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 510
    sget-wide v3, Lcom/android/server/OppoDeviceStorageMonitorService;->mLogFlag:J

    invoke-direct {p0, p2, v3, v4}, Lcom/android/server/OppoDeviceStorageMonitorService;->parseLogMask([Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/OppoDeviceStorageMonitorService;->mLogFlag:J

    .line 512
    sget-wide v3, Lcom/android/server/OppoDeviceStorageMonitorService;->mLogFlag:J

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    cmp-long v0, v3, v8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/OppoDeviceStorageMonitorService;->localLOGV:Z

    .line 513
    sget-wide v3, Lcom/android/server/OppoDeviceStorageMonitorService;->mLogFlag:J

    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    cmp-long v0, v3, v8

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/OppoDeviceStorageMonitorService;->debugLOGV:Z

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLogFlag=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v3, Lcom/android/server/OppoDeviceStorageMonitorService;->mLogFlag:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    const-string v0, "  localLOGV(0x%1$h)=%2$b"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    sget-boolean v4, Lcom/android/server/OppoDeviceStorageMonitorService;->localLOGV:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 516
    const-string v0, "  debugLOGV(0x%1$h)=%2$b"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    sget-boolean v2, Lcom/android/server/OppoDeviceStorageMonitorService;->debugLOGV:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    return-void

    :cond_0
    move v0, v2

    .line 512
    goto :goto_0

    :cond_1
    move v0, v2

    .line 513
    goto :goto_1
.end method


# virtual methods
.method public OppodsmDialog(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "issd"    # Z

    .prologue
    .line 439
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/OppoDeviceStorageMonitorService$4;

    invoke-direct {v1, p0, p5}, Lcom/android/server/OppoDeviceStorageMonitorService$4;-><init>(Lcom/android/server/OppoDeviceStorageMonitorService;Z)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/OppoDeviceStorageMonitorService$3;

    invoke-direct {v1, p0}, Lcom/android/server/OppoDeviceStorageMonitorService$3;-><init>(Lcom/android/server/OppoDeviceStorageMonitorService;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    .line 464
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 465
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 467
    return-void
.end method

.method cancelNotification()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelNotification()V

    .line 336
    sget-boolean v0, Lcom/android/server/OppoDeviceStorageMonitorService;->debugLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "Canceling low data notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    .line 338
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowDataTimeStamp:J

    .line 339
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump devicestoragemonitor from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/DeviceStorageMonitorService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 532
    const-string v0, "Current OppoDeviceStorageMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0, p2, p3}, Lcom/android/server/OppoDeviceStorageMonitorService;->updateLogMask(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 534
    const-string v0, "  mFreeExternalSd="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mFreeExternalSd:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    const-string v0, "  mSdStartTrimThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mSdStartTrimThreshold:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    const-string v0, "  mLowSdFlag="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdFlag:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_0
.end method

.method sendNotification()V
    .locals 7

    .prologue
    const v3, 0xc040531

    const/4 v6, 0x1

    .line 311
    const/16 v0, 0xab9

    iget-wide v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 317
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;

    const v1, 0xc040533

    invoke-direct {p0, v0, v6, v3, v1}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppoShowNotification(Landroid/content/Intent;III)V

    .line 321
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0xc040532

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0xc04052c

    const v4, 0xc04052d

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/OppoDeviceStorageMonitorService;->OppodsmDialog(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 327
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 328
    sget-boolean v0, Lcom/android/server/OppoDeviceStorageMonitorService;->debugLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "Sending low data notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowDataFlag:Z

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService;->mLowDataTimeStamp:J

    .line 331
    return-void
.end method
