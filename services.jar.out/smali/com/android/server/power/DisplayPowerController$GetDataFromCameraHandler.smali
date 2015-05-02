.class final Lcom/android/server/power/DisplayPowerController$GetDataFromCameraHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GetDataFromCameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$GetDataFromCameraHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    .line 1710
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1711
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1715
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1727
    :goto_0
    return-void

    .line 1717
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$GetDataFromCameraHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$GetDataFromCameraHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLuxDarkingTime:J
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$1200(Lcom/android/server/power/DisplayPowerController;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$GetDataFromCameraHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLux:F
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$1300(Lcom/android/server/power/DisplayPowerController;)F

    move-result v3

    # invokes: Lcom/android/server/power/DisplayPowerController;->judgeCameraData(JF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerController;->access$2200(Lcom/android/server/power/DisplayPowerController;JF)V

    goto :goto_0

    .line 1721
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$GetDataFromCameraHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->delaySendAndGetData()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$2300(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 1715
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
