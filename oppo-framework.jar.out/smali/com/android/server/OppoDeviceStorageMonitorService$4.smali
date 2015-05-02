.class Lcom/android/server/OppoDeviceStorageMonitorService$4;
.super Ljava/lang/Object;
.source "OppoDeviceStorageMonitorService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OppoDeviceStorageMonitorService;->OppodsmDialog(Ljava/lang/String;Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

.field final synthetic val$issd:Z


# direct methods
.method constructor <init>(Lcom/android/server/OppoDeviceStorageMonitorService;Z)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$4;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    iput-boolean p2, p0, Lcom/android/server/OppoDeviceStorageMonitorService$4;->val$issd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService$4;->val$issd:Z

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService$4;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$700(Lcom/android/server/OppoDeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$4;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$300(Lcom/android/server/OppoDeviceStorageMonitorService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService$4;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/OppoDeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$700(Lcom/android/server/OppoDeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$4;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/OppoDeviceStorageMonitorService;->mIntentFileCleanUP:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$300(Lcom/android/server/OppoDeviceStorageMonitorService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
