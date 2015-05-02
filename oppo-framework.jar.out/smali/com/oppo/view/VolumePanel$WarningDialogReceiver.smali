.class Lcom/oppo/view/VolumePanel$WarningDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningDialogReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mSeekBar:Landroid/widget/OppoSeekBar;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 331
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 329
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    .line 332
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    .line 333
    iput-object p2, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    .line 334
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/widget/OppoSeekBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "seekbar"    # Landroid/widget/OppoSeekBar;

    .prologue
    .line 339
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 329
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    .line 340
    iput-object p1, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    .line 341
    iput-object p2, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    .line 342
    iput-object p3, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    .line 343
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 345
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 358
    # getter for: Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;
    invoke-static {}, Lcom/oppo/view/VolumePanel;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 359
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/oppo/view/VolumePanel;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 362
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mSeekBar:Landroid/widget/OppoSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/OppoSeekBar;->setSafeMediaVolumeEnabled(Z)V

    .line 366
    :cond_0
    monitor-exit v1

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/oppo/view/VolumePanel$WarningDialogReceiver;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 351
    # getter for: Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;
    invoke-static {}, Lcom/oppo/view/VolumePanel;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 352
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/oppo/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/oppo/view/VolumePanel;->access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 353
    monitor-exit v1

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
