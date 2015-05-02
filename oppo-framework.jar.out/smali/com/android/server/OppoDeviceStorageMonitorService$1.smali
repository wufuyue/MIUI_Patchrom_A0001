.class Lcom/android/server/OppoDeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "OppoDeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OppoDeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OppoDeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/OppoDeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 118
    const-string v0, "OppoDeviceStorageMonitorService"

    const-string v1, "Will not process invalid message"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService$1;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    # invokes: Lcom/android/server/OppoDeviceStorageMonitorService;->OppoCheckMemory()V
    invoke-static {v0}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$000(Lcom/android/server/OppoDeviceStorageMonitorService;)V

    goto :goto_0
.end method
