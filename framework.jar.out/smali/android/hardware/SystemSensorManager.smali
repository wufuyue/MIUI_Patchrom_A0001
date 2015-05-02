.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$BaseEventQueue;
    }
.end annotation


# static fields
.field private static final TAG_SENSOR_POWER:Ljava/lang/String; = "sensor_power"

.field private static final sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private static sSensorModuleInitialized:Z

.field private static final sSensorModuleLock:Ljava/lang/Object;


# instance fields
.field private final mMainLooper:Landroid/os/Looper;

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkLevel:I

.field private final mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sSensorModuleLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 49
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 51
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 60
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v3, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 62
    sget-object v4, Landroid/hardware/SystemSensorManager;->sSensorModuleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 63
    :try_start_0
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v3, :cond_2

    .line 64
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 66
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 69
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 70
    .local v0, "fullList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 72
    .local v1, "i":I
    :cond_0
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 73
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SystemSensorManager;->nativeGetNextSensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 74
    if-ltz v1, :cond_1

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v3, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 80
    :cond_1
    if-gtz v1, :cond_0

    .line 82
    .end local v0    # "fullList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1    # "i":I
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    monitor-exit v4

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/SystemSensorManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 39
    iget v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeGetNextSensor(Landroid/hardware/Sensor;I)I
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 214
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/hardware/Sensor;->getReportingMode(Landroid/hardware/Sensor;)I

    move-result v2

    sget v3, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    if-eq v2, v3, :cond_0

    .line 232
    :goto_0
    return v1

    .line 217
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 218
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 219
    .local v0, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v0, :cond_3

    .line 221
    if-nez p2, :cond_2

    .line 222
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result v1

    .line 226
    .local v1, "result":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 230
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 233
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 224
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1

    .line 232
    .end local v1    # "result":Z
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v1, 0x0

    .line 237
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 240
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 241
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v0, :cond_1

    .line 242
    monitor-exit v2

    .line 244
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 246
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    .prologue
    const/4 v2, 0x0

    .line 99
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 100
    :cond_0
    const-string v3, "SensorManager"

    const-string/jumbo v4, "sensor or listener is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return v2

    .line 104
    :cond_1
    invoke-static {p2}, Landroid/hardware/Sensor;->getReportingMode(Landroid/hardware/Sensor;)I

    move-result v3

    sget v4, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    if-ne v3, v4, :cond_2

    .line 105
    const-string v3, "SensorManager"

    const-string v4, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_2
    if-ltz p5, :cond_3

    if-gez p3, :cond_4

    .line 109
    :cond_3
    const-string v3, "SensorManager"

    const-string/jumbo v4, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_4
    const-string/jumbo v3, "sensor_power"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sensorType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 122
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 123
    .local v1, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v1, :cond_7

    .line 124
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 125
    .local v0, "looper":Landroid/os/Looper;
    :goto_1
    new-instance v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-direct {v1, p1, v0, p0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V

    .line 126
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-virtual {v1, p2, p3, p5, p6}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;III)Z

    move-result v4

    if-nez v4, :cond_6

    .line 127
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 128
    monitor-exit v3

    goto :goto_0

    .line 143
    .end local v0    # "looper":Landroid/os/Looper;
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 124
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :cond_5
    :try_start_1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_1

    .line 130
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_6
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v2, "sensor_power"

    const-string v4, "add listener finished!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 139
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_7
    const-string/jumbo v2, "sensor_power"

    const-string v4, "add sensor finished!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v1, p2, p3, p5, p6}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;III)Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    const/4 v1, 0x0

    .line 190
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sensor cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    invoke-static {p2}, Landroid/hardware/Sensor;->getReportingMode(Landroid/hardware/Sensor;)I

    move-result v2

    sget v3, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    if-eq v2, v3, :cond_1

    .line 205
    :goto_0
    return v1

    .line 194
    :cond_1
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 195
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 196
    .local v0, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v0, :cond_3

    .line 197
    new-instance v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p1, v3, p0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V

    .line 198
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, p2, v3, v4, v5}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 199
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 200
    monitor-exit v2

    goto :goto_0

    .line 207
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 202
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 205
    :cond_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v1, v3, v4}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;III)Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 150
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/hardware/Sensor;->getReportingMode(Landroid/hardware/Sensor;)I

    move-result v2

    sget v3, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    if-ne v2, v3, :cond_0

    .line 185
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string/jumbo v2, "sensor_power"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 159
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 160
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v0, :cond_1

    .line 162
    if-nez p2, :cond_2

    .line 163
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result v1

    .line 166
    .local v1, "result":Z
    const-string/jumbo v2, "sensor_power"

    const-string/jumbo v4, "remove all sensor"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v2, "sensor_power"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " finished!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 184
    .end local v1    # "result":Z
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 169
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v1

    .line 172
    .restart local v1    # "result":Z
    const-string/jumbo v2, "sensor_power"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove sensorType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
