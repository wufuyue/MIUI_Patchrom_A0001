.class Lcom/android/server/ColorInjector$SystemServer;
.super Ljava/lang/Object;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ColorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemServer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "OppoTranslateManagerService"

    invoke-static {p0}, Lcom/oppo/translate/OppoTranslateManagerService;->getInstance(Landroid/content/Context;)Lcom/oppo/translate/OppoTranslateManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 39
    const-string v0, "color_screenshot"

    invoke-static {p0}, Lcom/color/screenshot/ColorScreenshotManagerService;->getInstance(Landroid/content/Context;)Lcom/color/screenshot/ColorScreenshotManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 41
    return-void
.end method
