.class public final Lcom/color/view/ColorWindowManager;
.super Ljava/lang/Object;
.source "ColorWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/view/ColorWindowManager$LayoutParams;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static getFocusedWindowFrame(Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 49
    :try_start_0
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 51
    .local v0, "iwm":Landroid/view/IWindowManager;
    invoke-interface {v0}, Landroid/view/IWindowManager;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "iwm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    goto :goto_0
.end method
