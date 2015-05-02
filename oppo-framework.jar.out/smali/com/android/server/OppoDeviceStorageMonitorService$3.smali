.class Lcom/android/server/OppoDeviceStorageMonitorService$3;
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


# direct methods
.method constructor <init>(Lcom/android/server/OppoDeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/server/OppoDeviceStorageMonitorService$3;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/server/OppoDeviceStorageMonitorService$3;->this$0:Lcom/android/server/OppoDeviceStorageMonitorService;

    # getter for: Lcom/android/server/OppoDeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/OppoDeviceStorageMonitorService;->access$600(Lcom/android/server/OppoDeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 461
    return-void
.end method
