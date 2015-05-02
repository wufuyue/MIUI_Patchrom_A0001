.class Lcom/android/server/power/DisplayPowerController$8;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1666
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const v9, 0x44802000    # 1025.0f

    const/high16 v8, 0x43820000    # 260.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 1617
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$1100(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1618
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1624
    .local v2, "time":J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v0, v4, v5

    .line 1625
    .local v0, "lux":F
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # setter for: Lcom/android/server/power/DisplayPowerController;->mLuxDarkingTime:J
    invoke-static {v4, v2, v3}, Lcom/android/server/power/DisplayPowerController;->access$1202(Lcom/android/server/power/DisplayPowerController;J)J

    .line 1626
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # setter for: Lcom/android/server/power/DisplayPowerController;->mLux:F
    invoke-static {v4, v0}, Lcom/android/server/power/DisplayPowerController;->access$1302(Lcom/android/server/power/DisplayPowerController;F)F

    .line 1627
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1628
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed in: lux = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed: lux_min = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->access$1400(Lcom/android/server/power/DisplayPowerController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lux_max = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->access$1500(Lcom/android/server/power/DisplayPowerController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed: mLux = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLux:F
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->access$1300(Lcom/android/server/power/DisplayPowerController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed: mGetDataFlag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mGetDataFlag:Z
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->access$1600(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mGetDataFlag:Z
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$1600(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1661
    .end local v0    # "lux":F
    .end local v2    # "time":J
    :cond_1
    :goto_0
    return-void

    .line 1637
    .restart local v0    # "lux":F
    .restart local v2    # "time":J
    :cond_2
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$1400(Lcom/android/server/power/DisplayPowerController;)F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$1500(Lcom/android/server/power/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_1

    .line 1638
    :cond_3
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$1400(Lcom/android/server/power/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    .line 1640
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1641
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/power/DisplayPowerController;->mGetDataFlag:Z
    invoke-static {v4, v5}, Lcom/android/server/power/DisplayPowerController;->access$1602(Lcom/android/server/power/DisplayPowerController;Z)Z

    .line 1642
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$1700(Lcom/android/server/power/DisplayPowerController;)Landroid/content/Context;

    move-result-object v5

    # invokes: Lcom/android/server/power/DisplayPowerController;->sendBeginCheckCameraBroadcast(Landroid/content/Context;)V
    invoke-static {v4, v5}, Lcom/android/server/power/DisplayPowerController;->access$1800(Lcom/android/server/power/DisplayPowerController;Landroid/content/Context;)V

    .line 1643
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1644
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0xa

    iput v4, v1, Landroid/os/Message;->what:I

    .line 1645
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mCameraHandler:Lcom/android/server/power/DisplayPowerController$GetDataFromCameraHandler;
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$1900(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$GetDataFromCameraHandler;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/power/DisplayPowerController$GetDataFromCameraHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1648
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v4, v5}, Lcom/android/server/power/DisplayPowerController;->access$1402(Lcom/android/server/power/DisplayPowerController;F)F

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/high16 v5, 0x40800000    # 4.0f

    # setter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/power/DisplayPowerController;->access$1502(Lcom/android/server/power/DisplayPowerController;F)F

    .line 1655
    :goto_1
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG_G:Z

    if-eqz v4, :cond_5

    .line 1656
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PowerMS L-Sensor Changed out: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_5
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V
    invoke-static {v4, v2, v3, v0}, Lcom/android/server/power/DisplayPowerController;->access$2000(Lcom/android/server/power/DisplayPowerController;JF)V

    goto :goto_0

    .line 1649
    :cond_6
    cmpg-float v4, v0, v8

    if-gtz v4, :cond_7

    const/high16 v0, 0x43820000    # 260.0f

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # setter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v4, v7}, Lcom/android/server/power/DisplayPowerController;->access$1402(Lcom/android/server/power/DisplayPowerController;F)F

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/high16 v5, 0x43960000    # 300.0f

    # setter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/power/DisplayPowerController;->access$1502(Lcom/android/server/power/DisplayPowerController;F)F

    goto :goto_1

    .line 1650
    :cond_7
    cmpg-float v4, v0, v9

    if-gtz v4, :cond_8

    const v0, 0x44802000    # 1025.0f

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # setter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v4, v7}, Lcom/android/server/power/DisplayPowerController;->access$1402(Lcom/android/server/power/DisplayPowerController;F)F

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const v5, 0x448fc000    # 1150.0f

    # setter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/power/DisplayPowerController;->access$1502(Lcom/android/server/power/DisplayPowerController;F)F

    goto :goto_1

    .line 1651
    :cond_8
    const v4, 0x4601b000    # 8300.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_9

    const v0, 0x4601b000    # 8300.0f

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # setter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v4, v8}, Lcom/android/server/power/DisplayPowerController;->access$1402(Lcom/android/server/power/DisplayPowerController;F)F

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const v5, 0x460ca000    # 9000.0f

    # setter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/power/DisplayPowerController;->access$1502(Lcom/android/server/power/DisplayPowerController;F)F

    goto :goto_1

    .line 1652
    :cond_9
    const v0, 0x461c4000    # 10000.0f

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # setter for: Lcom/android/server/power/DisplayPowerController;->lux_min:F
    invoke-static {v4, v9}, Lcom/android/server/power/DisplayPowerController;->access$1402(Lcom/android/server/power/DisplayPowerController;F)F

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    const v5, 0x479c4000    # 80000.0f

    # setter for: Lcom/android/server/power/DisplayPowerController;->lux_max:F
    invoke-static {v4, v5}, Lcom/android/server/power/DisplayPowerController;->access$1502(Lcom/android/server/power/DisplayPowerController;F)F

    goto :goto_1
.end method
