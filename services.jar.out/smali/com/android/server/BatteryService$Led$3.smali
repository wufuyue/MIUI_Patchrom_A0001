.class Lcom/android/server/BatteryService$Led$3;
.super Lcom/android/server/BatteryService$SettingsObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$Led;

.field final synthetic val$this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$Led;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/BatteryService;)V
    .locals 1
    .param p2, "x0"    # Landroid/os/Handler;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/server/BatteryService$Led$3;->this$1:Lcom/android/server/BatteryService$Led;

    iput-object p4, p0, Lcom/android/server/BatteryService$Led$3;->val$this$0:Lcom/android/server/BatteryService;

    iget-object v0, p1, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/BatteryService$SettingsObserver;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onUpdate(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/server/BatteryService$Led$3;->this$1:Lcom/android/server/BatteryService$Led;

    # getter for: Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z
    invoke-static {v0}, Lcom/android/server/BatteryService$Led;->access$700(Lcom/android/server/BatteryService$Led;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/server/BatteryService$Led$3;->this$1:Lcom/android/server/BatteryService$Led;

    # setter for: Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z
    invoke-static {v0, p1}, Lcom/android/server/BatteryService$Led;->access$702(Lcom/android/server/BatteryService$Led;Z)Z

    .line 1048
    iget-object v0, p0, Lcom/android/server/BatteryService$Led$3;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 1050
    :cond_0
    return-void
.end method
