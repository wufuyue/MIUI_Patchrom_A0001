.class Lcom/android/server/power/PowerManagerService$OppoHelper;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "TongXi.Li@Plf.Framework, add for button light"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OppoHelper"
.end annotation


# static fields
.field private static BUTTON_LIGHT_BRIGHTNESS:I

.field static mButtonLight:Lcom/android/server/LightsService$Light;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 482
    const/16 v0, 0x66

    sput v0, Lcom/android/server/power/PowerManagerService$OppoHelper;->BUTTON_LIGHT_BRIGHTNESS:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setButtonLight(Lcom/android/server/LightsService;)V
    .locals 1
    .param p0, "lightsService"    # Lcom/android/server/LightsService;

    .prologue
    .line 485
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 486
    return-void
.end method

.method static turnOffButtonLight()V
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 514
    return-void
.end method

.method static updateButtonBrightness(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 7
    .param p0, "service"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "condition"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 488
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getUserActivitySumm()I

    move-result v3

    .line 489
    .local v3, "tmp":I
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    move v1, v4

    .line 490
    .local v1, "b1":Z
    :goto_0
    if-nez v3, :cond_2

    move v2, v4

    .line 491
    .local v2, "b2":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulness()I

    move-result v6

    if-ne v6, v4, :cond_3

    move v0, v4

    .line 495
    .local v0, "b":Z
    :goto_2
    # getter for: Lcom/android/server/power/PowerManagerService;->mOppoButtonReady:Z
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 496
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_SPEW:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    const-string v4, "PowerManagerService"

    const-string v5, "PowerMS Buttonlight: can\'t bright now"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    :goto_3
    return-void

    .end local v0    # "b":Z
    .end local v1    # "b1":Z
    .end local v2    # "b2":Z
    :cond_1
    move v1, v5

    .line 489
    goto :goto_0

    .restart local v1    # "b1":Z
    :cond_2
    move v2, v5

    .line 490
    goto :goto_1

    .restart local v2    # "b2":Z
    :cond_3
    move v0, v5

    .line 491
    goto :goto_2

    .line 502
    .restart local v0    # "b":Z
    :cond_4
    if-eqz p1, :cond_5

    .line 503
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 504
    sget-object v4, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/LightsService$Light;

    sget v5, Lcom/android/server/power/PowerManagerService$OppoHelper;->BUTTON_LIGHT_BRIGHTNESS:I

    invoke-virtual {v4, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_3

    .line 507
    :cond_5
    sget-object v4, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/LightsService$Light;

    sget v5, Lcom/android/server/power/PowerManagerService$OppoHelper;->BUTTON_LIGHT_BRIGHTNESS:I

    invoke-virtual {v4, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_3
.end method
