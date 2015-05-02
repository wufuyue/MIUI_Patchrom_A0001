.class Lcom/android/server/am/ActivityManagerService$UsageRecorderRunnable;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageRecorderRunnable"
.end annotation


# instance fields
.field private mProcName:Ljava/lang/String;

.field private mTimeStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "timeStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 17237
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UsageRecorderRunnable;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17234
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$UsageRecorderRunnable;->mProcName:Ljava/lang/String;

    .line 17235
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$UsageRecorderRunnable;->mTimeStr:Ljava/lang/String;

    .line 17238
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$UsageRecorderRunnable;->mProcName:Ljava/lang/String;

    .line 17239
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$UsageRecorderRunnable;->mTimeStr:Ljava/lang/String;

    .line 17240
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 17243
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UsageRecorderRunnable;->mProcName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UsageRecorderRunnable;->mProcName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UsageRecorderRunnable;->mTimeStr:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UsageRecorderRunnable;->mTimeStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 17249
    :cond_0
    :goto_0
    return-void

    .line 17247
    :cond_1
    invoke-static {}, Landroid/os/OppoUsageManager;->getOppoUsageManager()Landroid/os/OppoUsageManager;

    move-result-object v0

    .line 17248
    .local v0, "oppoUsageManager":Landroid/os/OppoUsageManager;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UsageRecorderRunnable;->mProcName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UsageRecorderRunnable;->mTimeStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/OppoUsageManager;->writeAppUsageHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
