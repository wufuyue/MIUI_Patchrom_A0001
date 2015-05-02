.class Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;
.super Ljava/lang/Object;
.source "OppoPermissionInterceptPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoPermissionInterceptPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckPermissionRunnable"
.end annotation


# instance fields
.field callback:Lcom/android/server/am/OppoPermissionCallback;

.field lock:Ljava/lang/Object;

.field permission:Ljava/lang/String;

.field pid:I

.field res:I

.field final synthetic this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

.field token:I

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/Object;Ljava/lang/String;IIILcom/android/server/am/OppoPermissionCallback;)V
    .locals 0
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "token"    # I
    .param p7, "callback"    # Lcom/android/server/am/OppoPermissionCallback;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p2, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    .line 632
    iput-object p3, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    .line 633
    iput p4, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->pid:I

    .line 634
    iput p5, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->uid:I

    .line 635
    iput p6, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->token:I

    .line 636
    iput-object p7, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->callback:Lcom/android/server/am/OppoPermissionCallback;

    .line 637
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 640
    iget-object v9, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 641
    :try_start_0
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 642
    const-string v8, "OppoPermissionInterceptPolicy"

    const-string v10, "checkPermissionForProc Runnable"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget v10, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->pid:I

    invoke-virtual {v8, v10}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->getProcessForPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 644
    .local v7, "pr":Lcom/android/server/am/ProcessRecord;
    const/4 v6, 0x0

    .line 645
    .local v6, "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    if-nez v7, :cond_2

    .line 646
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 647
    const-string v8, "OppoPermissionInterceptPolicy"

    const-string v10, "checkPermissionForProc, pr==null"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_1
    const/4 v8, 0x3

    iput v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 649
    iget-object v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 650
    monitor-exit v9

    .line 735
    :goto_0
    return-void

    .line 652
    :cond_2
    iget-object v10, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    :try_start_1
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_6

    .line 654
    iget-object v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v11, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->queryPackagePermissions(Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    invoke-static {v8, v11}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$200(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    move-result-object v6

    .line 655
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 656
    const-string v8, "OppoPermissionInterceptPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkPermissionForProc, pr.mPackagePermission = null, query pkgPm="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 665
    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->mPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .line 666
    invoke-virtual {v6}, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->copy()Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/am/ProcessRecord;->mPersistPackagePermission:Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;

    .line 669
    :cond_4
    if-eqz v6, :cond_5

    .line 670
    iget-object v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    iget-object v11, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->getPermissionMask(Ljava/lang/String;)I
    invoke-static {v8, v11}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$000(Lcom/android/server/am/OppoPermissionInterceptPolicy;Ljava/lang/String;)I

    move-result v3

    .line 671
    .local v3, "mask":I
    iget-object v8, v6, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->packageName:Ljava/lang/String;

    const-string v11, ".cts."

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 672
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 732
    .end local v3    # "mask":I
    :cond_5
    :goto_2
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 733
    :try_start_2
    iget-object v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->lock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 734
    monitor-exit v9

    goto :goto_0

    .end local v6    # "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .end local v7    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 660
    .restart local v6    # "pkgPm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;
    .restart local v7    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const/4 v8, 0x3

    :try_start_3
    iput v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 661
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 662
    const-string v8, "OppoPermissionInterceptPolicy"

    const-string v11, "checkPermissionForProc, pr.info is null!!! return INVALID_RES!!!"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 732
    :catchall_1
    move-exception v8

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 673
    .restart local v3    # "mask":I
    :cond_7
    :try_start_5
    iget v8, v6, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->trust:I

    if-eqz v8, :cond_8

    .line 674
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    goto :goto_2

    .line 675
    :cond_8
    iget v8, v6, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->accept:I

    and-int/2addr v8, v3

    if-eqz v8, :cond_9

    .line 676
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    goto :goto_2

    .line 677
    :cond_9
    iget v8, v6, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->reject:I

    and-int/2addr v8, v3

    if-eqz v8, :cond_c

    .line 678
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 679
    iget-object v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1200(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/Context;

    move-result-object v8

    const-string v11, "activity"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 680
    .local v2, "manager":Landroid/app/ActivityManager;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 681
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 682
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    .line 684
    .local v4, "packageName":Ljava/lang/String;
    :try_start_6
    iget v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->uid:I

    iget-object v11, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPm:Landroid/content/pm/IPackageManager;
    invoke-static {v11}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1400(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/pm/IPackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v4, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v11

    if-eq v8, v11, :cond_a

    const-string v8, "com.wandoujia.phoenix2"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.wandoujia.phoenix2.usbproxy"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 686
    :cond_a
    const-string v8, "com.wandoujia.phoenix2"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.wandoujia.phoenix2.usbproxy"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 687
    const-string v4, "com.wandoujia.phoenix2.usbproxy"

    .line 688
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 689
    const-string v8, "OppoPermissionInterceptPolicy"

    const-string v11, "--wandoujia equals--"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 692
    .local v1, "intent":Landroid/content/Intent;
    const-string v8, "com.oppo.permissionprotect.notify"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v8, "PackageName"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string v8, "Permission"

    iget-object v11, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    invoke-virtual {v1, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget-object v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1200(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 696
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 697
    const-string v8, "OppoPermissionInterceptPolicy"

    const-string v11, "Notify!!!"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    .line 699
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    goto/16 :goto_2

    .line 704
    .end local v0    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "manager":Landroid/app/ActivityManager;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_c
    :try_start_7
    iget v8, v6, Lcom/android/server/am/OppoPermissionInterceptPolicy$PackagePermission;->prompt:I

    and-int/2addr v8, v3

    if-eqz v8, :cond_5

    .line 705
    iget-object v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # invokes: Lcom/android/server/am/OppoPermissionInterceptPolicy;->isScreenOn()Z
    invoke-static {v8}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1300(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 707
    new-instance v5, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;

    iget-object v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-direct {v5, v8}, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;-><init>(Lcom/android/server/am/OppoPermissionInterceptPolicy;)V

    .line 708
    .local v5, "pcm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    iget-object v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->permission:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permission:Ljava/lang/String;

    .line 709
    iput-object v7, v5, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->pr:Lcom/android/server/am/ProcessRecord;

    .line 710
    iget v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->uid:I

    iput v8, v5, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->uid:I

    .line 711
    iget-object v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->callback:Lcom/android/server/am/OppoPermissionCallback;

    iput-object v8, v5, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->callback:Lcom/android/server/am/OppoPermissionCallback;

    .line 712
    iput v3, v5, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->permissionMask:I

    .line 713
    iget v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->token:I

    iput v8, v5, Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;->token:I

    .line 714
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v11

    monitor-enter v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 715
    :try_start_8
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 716
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->isWaitingPermissionChoice:Z

    .line 717
    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$300()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 718
    const-string v8, "OppoPermissionInterceptPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add pcm, size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", sPermissionCheckMsgList="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->sPermissionCheckMsgList:Ljava/util/LinkedList;
    invoke-static {}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$500()Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_d
    iget-object v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->this$0:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    # getter for: Lcom/android/server/am/OppoPermissionInterceptPolicy;->mPendingMsgHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->access$1500(Lcom/android/server/am/OppoPermissionInterceptPolicy;)Landroid/os/Handler;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 723
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I

    .line 724
    monitor-exit v11

    goto/16 :goto_2

    :catchall_2
    move-exception v8

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v8

    .line 727
    .end local v5    # "pcm":Lcom/android/server/am/OppoPermissionInterceptPolicy$PermissionCheckingMsg;
    :cond_e
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/am/OppoPermissionInterceptPolicy$CheckPermissionRunnable;->res:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2
.end method
