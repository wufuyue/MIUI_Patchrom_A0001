.class Lcom/android/server/OppoDeviceStorageMonitorService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 237
    iput-object p1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    iget-object v1, v1, Lcom/android/server/OppoDeviceStorageMonitorService;->mOHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/OppoDeviceStorageMonitorService;->mLowSdFlag:Z
    invoke-static {v1}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$100(Lcom/android/server/OppoDeviceStorageMonitorService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    # invokes: Lcom/android/server/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V
    invoke-static {v1, v6}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$200(Lcom/android/server/OppoDeviceStorageMonitorService;I)V

    .line 250
    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    iget-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$300(Lcom/android/server/OppoDeviceStorageMonitorService;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0xc04052e

    const v4, 0xc040530

    # invokes: Lcom/android/server/OppoDeviceStorageMonitorService;->OppoShowNotification(Landroid/content/Intent;III)V
    invoke-static {v1, v2, v6, v3, v4}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$400(Lcom/android/server/OppoDeviceStorageMonitorService;Landroid/content/Intent;III)V

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/OppoDeviceStorageMonitorService;->mLowDataFlag:Z
    invoke-static {v1}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$500(Lcom/android/server/OppoDeviceStorageMonitorService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    # invokes: Lcom/android/server/OppoDeviceStorageMonitorService;->OppoCancelNotification(I)V
    invoke-static {v1, v5}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$200(Lcom/android/server/OppoDeviceStorageMonitorService;I)V

    .line 257
    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    iget-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$300(Lcom/android/server/OppoDeviceStorageMonitorService;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0xc040531

    const v4, 0xc040533

    # invokes: Lcom/android/server/OppoDeviceStorageMonitorService;->OppoShowNotification(Landroid/content/Intent;III)V
    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$400(Lcom/android/server/OppoDeviceStorageMonitorService;Landroid/content/Intent;III)V

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    iget-object v1, v1, Lcom/android/server/OppoDeviceStorageMonitorService;->mOHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/OppoDeviceStorageMonitorService$2;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    iget-object v2, v2, Lcom/android/server/OppoDeviceStorageMonitorService;->mOHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    :cond_2
    return-void
.end method
