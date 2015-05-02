.class public final Lcom/android/server/OppoBatteryService;
.super Ljava/lang/Object;
.source "OppoBatteryService.java"


# static fields
.field private static final BATTERY_PLUGGED_NONE:I

.field public static DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessoryCapacity:I

.field private mAccessoryPresent:Z

.field private mAccessoryStatus:I

.field public mBatteryCurrent:I

.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mBatteryTempStatus:I

.field private mBatteryTemperature:I

.field private mBatteryVolStatus:I

.field private mBatteryVoltage:I

.field private mChargeFastCharger:Z

.field private mChargeFinishTime:J

.field private mChargeSocFall:Z

.field private mChargeTimeLeft:I

.field private mChargeTimeLeftConfig:[I

.field private mChargeTimeLeftConfigSize:I

.field private mChargeTimeout:Z

.field private mChargeVolStatus:I

.field private mChargerTechnology:I

.field private mChargerVoltage:I

.field private final mContext:Landroid/content/Context;

.field private mFastChargeDone:Z

.field private mFastChargeHasPlugged:Z

.field private mFastChargeTimeLeft:I

.field private mFastChargeTimeLeftConfig:[I

.field private mFastChargeTimeLeftConfigSize:I

.field private mFastChargeTimeSave:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHighBatteryVoltageWarningLevel:I

.field private final mHighChargerVoltageWarningLevel:I

.field private mLastAccessoryCapacity:I

.field private mLastAccessoryPresent:Z

.field private mLastAccessoryStatus:I

.field public mLastBatteryCurrent:I

.field private mLastBatteryLevel:I

.field private mLastBatteryStatus:I

.field private mLastBatteryTempStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVolStatus:I

.field private mLastBatteryVoltage:I

.field private mLastChargeFastCharger:Z

.field private mLastChargeSocFall:Z

.field private mLastChargeTimeout:Z

.field private mLastChargeVolStatus:I

.field private mLastChargerTechnology:I

.field private mLastChargerVoltage:I

.field private mLastPlugType:I

.field private final mLowBatteryVoltageWarningLevel:I

.field private final mLowChargerVoltageWarningLevel:I

.field private mPlugType:I

.field private mStartChargeBatteryLevel:I

.field private mStartChargeTime:J

.field private final mTomorrowLowBatteryWarningLevel:I

.field private mUpdatesStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/server/OppoBatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/OppoBatteryService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v2, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    .line 89
    iput v0, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeLeft:I

    .line 90
    iput v0, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeLeft:I

    .line 91
    iput v0, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeSave:I

    .line 98
    iput-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z

    .line 105
    iput-wide v3, p0, Lcom/android/server/OppoBatteryService;->mStartChargeTime:J

    .line 106
    iput v0, p0, Lcom/android/server/OppoBatteryService;->mStartChargeBatteryLevel:I

    .line 107
    iput-wide v3, p0, Lcom/android/server/OppoBatteryService;->mChargeFinishTime:J

    .line 108
    iput-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mFastChargeHasPlugged:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mFastChargeDone:Z

    .line 112
    iput-object p1, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/OppoBatteryService;->mHandler:Landroid/os/Handler;

    .line 115
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLowBatteryVoltageWarningLevel:I

    .line 117
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d040a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mHighBatteryVoltageWarningLevel:I

    .line 119
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d040b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLowChargerVoltageWarningLevel:I

    .line 121
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mHighChargerVoltageWarningLevel:I

    .line 123
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mTomorrowLowBatteryWarningLevel:I

    .line 126
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeLeftConfig:[I

    .line 128
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeLeftConfig:[I

    .line 131
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeLeftConfig:[I

    array-length v0, v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeLeftConfigSize:I

    .line 132
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeLeftConfig:[I

    array-length v0, v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeLeftConfigSize:I

    .line 133
    return-void
.end method

.method private getChargeTimeLeft(I)I
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/OppoBatteryService;->getValidBatteryLevel(I)I

    move-result v0

    .line 289
    .local v0, "target":I
    iget v1, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeLeftConfigSize:I

    if-gt v0, v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeLeftConfig:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 293
    :goto_0
    return v1

    .line 292
    :cond_0
    sget-object v1, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    const-string v2, "charge time left config not suitable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getFastChargeTimeLeft(I)I
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/android/server/OppoBatteryService;->getValidBatteryLevel(I)I

    move-result v0

    .line 299
    .local v0, "target":I
    iget v1, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeLeftConfigSize:I

    if-gt v0, v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeLeftConfig:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 303
    :goto_0
    return v1

    .line 302
    :cond_0
    sget-object v1, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    const-string v2, "charge time left config not suitable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getValidBatteryLevel(I)I
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 308
    move v0, p1

    .line 310
    .local v0, "value":I
    if-gtz v0, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 314
    :cond_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 315
    const/16 v0, 0x64

    .line 318
    :cond_1
    return v0
.end method

.method private sendAdditionalIntentLocked()V
    .locals 4

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ADDITIONAL_BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    const-string v1, "chargervoltage"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string v1, "batterycurrent"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string v1, "chargervolstatus"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string v1, "batterytempstatus"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    const-string v1, "batteryvolstatus"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v1, "accessorypresent"

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    const-string v1, "accessorystatus"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v1, "accessorycapacity"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v1, "chargetimeout"

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    const-string v1, "chargesocfall"

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    const-string v1, "chargertechnology"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const-string v1, "chargefastcharger"

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    const-string v1, "chargeplugged"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    const-string v1, "chargetimeleft"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeLeft:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    const-string v1, "fastchargetimeleft"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeLeft:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    const-string v1, "fastchargetimesave"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeSave:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    sget-boolean v1, Lcom/android/server/OppoBatteryService;->DEBUG:Z

    if-nez v1, :cond_0

    const-string v1, "debug.batteryservice"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    :cond_0
    sget-object v1, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ACTION_ADDITIONAL_BATTERY_CHANGED.  chargervoltage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,batterycurrent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargervolstatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,batterytempstatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,batteryvolstatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,accessorypresent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,accessorystatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,accessorycapacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargetimeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargesocfall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargertechnology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargefastcharger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargetimeleft: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,fastchargetimeleft: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,fastchargetimesave: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeSave:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mPlugType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/android/server/OppoBatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/OppoBatteryService$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/OppoBatteryService$1;-><init>(Lcom/android/server/OppoBatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 380
    return-void
.end method


# virtual methods
.method public dumpAddition(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 398
    const/4 v2, 0x1

    .line 399
    .local v2, "update":Z
    if-eqz p3, :cond_0

    array-length v6, p3

    if-eqz v6, :cond_0

    const-string v6, "-a"

    aget-object v7, p3, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 400
    :cond_0
    const-string v4, "Current OPPO Battery Service state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Charger voltage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Battery current : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Accessory present:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Accessory status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Accessory capacity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Chargetimeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Chargesocfall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ChargerTechnology: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ChargeFastCharger: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  PlugType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  UpdatesStopped: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  LowBatteryVoltageWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mLowBatteryVoltageWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  HighBatteryVoltageWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mHighBatteryVoltageWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  LowChargerVoltageWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mLowChargerVoltageWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  HighChargerVoltageWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mTomorrowLowBatteryWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  TomorrowLowBatteryWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mTomorrowLowBatteryWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    :cond_1
    :goto_0
    return v2

    .line 418
    :cond_2
    array-length v6, p3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_e

    const-string v6, "set"

    aget-object v7, p3, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 419
    aget-object v1, p3, v4

    .line 420
    .local v1, "key":Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v3, p3, v6

    .line 422
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    const-string v6, "voltage"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    .line 442
    :goto_1
    if-eqz v2, :cond_1

    .line 443
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_1
    const-string v6, "temperature"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 425
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    goto :goto_1

    .line 426
    :cond_4
    const-string v6, "current"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 427
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    goto :goto_1

    .line 428
    :cond_5
    const-string v6, "chargervol"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 429
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    goto :goto_1

    .line 430
    :cond_6
    const-string v6, "chargetimeout"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 431
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_7

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_2

    .line 432
    :cond_8
    const-string v6, "chargesocfall"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 433
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_9

    :goto_3
    iput-boolean v4, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    goto :goto_1

    :cond_9
    move v4, v5

    goto :goto_3

    .line 434
    :cond_a
    const-string v6, "chargertechnology"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 435
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    goto :goto_1

    .line 436
    :cond_b
    const-string v6, "chargefastcharger"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 437
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_c

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    goto/16 :goto_1

    :cond_c
    move v4, v5

    goto :goto_4

    .line 439
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown set option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 440
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 448
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_e
    array-length v6, p3

    if-ne v6, v4, :cond_f

    const-string v4, "reset"

    aget-object v6, p3, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 449
    iput-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z

    goto/16 :goto_0

    .line 451
    :cond_f
    const-string v4, "Dump current OPPO battery state, or:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    const-string v4, "  set voltage|temperature|current|chargervol|chargetimeout|chargesocfall|chargertechnology|chargefastcharger <value>"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    const-string v4, "  reset"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getChargeFastCharger()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    return v0
.end method

.method public getChargeSocFall()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    return v0
.end method

.method public getChargerVoltage()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    return v0
.end method

.method public native native_update()V
.end method

.method public processAdditionalValuesLocked(IIIII)V
    .locals 8
    .param p1, "batteryVoltage"    # I
    .param p2, "batteryTemperature"    # I
    .param p3, "plugType"    # I
    .param p4, "batteryLevel"    # I
    .param p5, "batteryStatus"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 137
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 138
    iput p1, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    .line 139
    iput p2, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    .line 140
    iput p3, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    .line 141
    iput p4, p0, Lcom/android/server/OppoBatteryService;->mBatteryLevel:I

    .line 142
    iput p5, p0, Lcom/android/server/OppoBatteryService;->mBatteryStatus:I

    .line 145
    :cond_0
    sget-boolean v0, Lcom/android/server/OppoBatteryService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing additional values: mChargerVoltage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastChargerVoltage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mLastChargerVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryCurrent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastBatteryCurrent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargeVolStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryTemperature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryTempStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAccessoryPresent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAccessoryStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAccessoryCapacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargeTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargeSocFall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargerTechnology="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargeFastCharger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPlugType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastPlugType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mLastPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargerVoltage:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryCurrent:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargeVolStatus:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryTemperature:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryTempStatus:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVolStatus:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryPresent:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryStatus:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryCapacity:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    iget-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargeTimeout:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    iget-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargeSocFall:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargerTechnology:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    iget-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargeFastCharger:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryLevel:I

    if-eq v0, v1, :cond_4

    .line 181
    :cond_2
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    const/16 v1, -0x64

    if-ge v0, v1, :cond_5

    .line 182
    iput v5, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    .line 189
    :goto_0
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mHighBatteryVoltageWarningLevel:I

    if-lt v0, v1, :cond_7

    .line 190
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    .line 197
    :goto_1
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mHighChargerVoltageWarningLevel:I

    if-lt v0, v1, :cond_9

    .line 199
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    .line 207
    :goto_2
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    if-eq v0, v5, :cond_b

    .line 208
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeLeft:I

    .line 209
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeLeft:I

    .line 210
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeSave:I

    .line 265
    :cond_3
    :goto_3
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargerVoltage:I

    .line 266
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryCurrent:I

    .line 267
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVoltage:I

    .line 268
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargeVolStatus:I

    .line 269
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryTempStatus:I

    .line 270
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVolStatus:I

    .line 271
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryPresent:Z

    .line 272
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryStatus:I

    .line 273
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryCapacity:I

    .line 274
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargeTimeout:Z

    .line 275
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargeSocFall:Z

    .line 277
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargeFastCharger:Z

    .line 278
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerTechnology:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargerTechnology:I

    .line 280
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryLevel:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryLevel:I

    .line 281
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastPlugType:I

    .line 283
    invoke-direct {p0}, Lcom/android/server/OppoBatteryService;->sendAdditionalIntentLocked()V

    .line 285
    :cond_4
    return-void

    .line 183
    :cond_5
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    const/16 v1, 0x226

    if-le v0, v1, :cond_6

    .line 184
    iput v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    goto :goto_0

    .line 186
    :cond_6
    iput v6, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    goto :goto_0

    .line 191
    :cond_7
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLowBatteryVoltageWarningLevel:I

    if-gt v0, v1, :cond_8

    .line 192
    iput v6, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    goto :goto_1

    .line 194
    :cond_8
    iput v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    goto :goto_1

    .line 200
    :cond_9
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLowChargerVoltageWarningLevel:I

    if-gt v0, v1, :cond_a

    .line 202
    iput v6, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    goto :goto_2

    .line 204
    :cond_a
    iput v3, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    goto :goto_2

    .line 212
    :cond_b
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    if-eqz v0, :cond_f

    .line 213
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mLastPlugType:I

    if-nez v0, :cond_c

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OppoBatteryService;->mStartChargeTime:J

    .line 215
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryLevel:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mStartChargeBatteryLevel:I

    .line 216
    sget-object v0, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charge time save : mStartChargeTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/OppoBatteryService;->mStartChargeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStartChargeBatteryLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mStartChargeBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    if-ne v0, v5, :cond_d

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mFastChargeHasPlugged:Z

    if-nez v0, :cond_d

    .line 221
    sget-object v0, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charge time save : mChargeFastCharger : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeFastCharger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iput-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mFastChargeHasPlugged:Z

    .line 231
    :cond_d
    :goto_4
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryStatus:I

    if-ne v0, v6, :cond_10

    .line 232
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/server/OppoBatteryService;->getChargeTimeLeft(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeLeft:I

    .line 233
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/server/OppoBatteryService;->getFastChargeTimeLeft(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeLeft:I

    .line 239
    :cond_e
    :goto_5
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryStatus:I

    if-eq v0, v1, :cond_12

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OppoBatteryService;->mChargeFinishTime:J

    .line 242
    sget-object v0, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charge time save : mChargeFinishTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/OppoBatteryService;->mChargeFinishTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mFastChargeDone:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mFastChargeHasPlugged:Z

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/android/server/OppoBatteryService;->mStartChargeTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/android/server/OppoBatteryService;->mChargeFinishTime:J

    iget-wide v2, p0, Lcom/android/server/OppoBatteryService;->mStartChargeTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mStartChargeBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/server/OppoBatteryService;->getChargeTimeLeft(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 249
    iput-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mFastChargeDone:Z

    .line 250
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mStartChargeBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/server/OppoBatteryService;->getChargeTimeLeft(I)I

    move-result v0

    iget-wide v1, p0, Lcom/android/server/OppoBatteryService;->mChargeFinishTime:J

    iget-wide v3, p0, Lcom/android/server/OppoBatteryService;->mStartChargeTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    long-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeSave:I

    .line 252
    sget-object v0, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charge time save : mFastChargeTimeSave : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeSave:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_6
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryStatus:I

    goto/16 :goto_3

    .line 225
    :cond_f
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/OppoBatteryService;->mStartChargeTime:J

    .line 226
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mStartChargeBatteryLevel:I

    .line 227
    iput-boolean v7, p0, Lcom/android/server/OppoBatteryService;->mFastChargeHasPlugged:Z

    .line 228
    iput-boolean v7, p0, Lcom/android/server/OppoBatteryService;->mFastChargeDone:Z

    goto/16 :goto_4

    .line 234
    :cond_10
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryStatus:I

    if-eq v0, v6, :cond_e

    .line 235
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeLeft:I

    .line 236
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeLeft:I

    goto/16 :goto_5

    .line 254
    :cond_11
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeSave:I

    goto :goto_6

    .line 258
    :cond_12
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryStatus:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 259
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mFastChargeTimeSave:I

    .line 260
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryStatus:I

    goto/16 :goto_3
.end method
