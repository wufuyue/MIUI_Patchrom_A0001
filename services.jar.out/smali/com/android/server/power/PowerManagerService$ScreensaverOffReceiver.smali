.class final Lcom/android/server/power/PowerManagerService$ScreensaverOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreensaverOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 2896
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ScreensaverOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 2896
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$ScreensaverOffReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScreensaverOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2900
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScreensaverOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsScreensaverOn:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2902(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2901
    monitor-exit v1

    .line 2902
    return-void

    .line 2901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
