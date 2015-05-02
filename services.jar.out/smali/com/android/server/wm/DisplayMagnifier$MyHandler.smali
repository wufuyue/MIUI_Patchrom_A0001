.class Lcom/android/server/wm/DisplayMagnifier$MyHandler;
.super Landroid/os/Handler;
.source "DisplayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_NOTIFY_MAGNIFIED_BOUNDS_CHANGED:I = 0x1

.field public static final MESSAGE_NOTIFY_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field public static final MESSAGE_NOTIFY_ROTATION_CHANGED:I = 0x4

.field public static final MESSAGE_NOTIFY_USER_CONTEXT_CHANGED:I = 0x3

.field public static final MESSAGE_SHOW_MAGNIFIED_REGION_BOUNDS_IF_NEEDED:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayMagnifier;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    .line 710
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 711
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .line 715
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 775
    :goto_0
    return-void

    .line 717
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    .line 719
    .local v2, "bounds":Landroid/graphics/Region;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$1200(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v10

    invoke-interface {v10, v2}, Landroid/view/IMagnificationCallbacks;->onMagnifedBoundsChanged(Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    .line 720
    :catch_0
    move-exception v10

    .line 723
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v10

    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    throw v10

    .line 727
    .end local v2    # "bounds":Landroid/graphics/Region;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 728
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 729
    .local v5, "left":I
    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 730
    .local v9, "top":I
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 731
    .local v7, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 733
    .local v1, "bottom":I
    :try_start_1
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$1200(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v10

    invoke-interface {v10, v5, v9, v7, v1}, Landroid/view/IMagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 737
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 734
    :catch_1
    move-exception v10

    .line 737
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_1
    move-exception v10

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v10

    .line 742
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v5    # "left":I
    .end local v7    # "right":I
    .end local v9    # "top":I
    :pswitch_2
    :try_start_2
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$1200(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/IMagnificationCallbacks;->onUserContextChanged()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 743
    :catch_2
    move-exception v10

    goto :goto_0

    .line 750
    :pswitch_3
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 751
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    move-result-object v10

    invoke-virtual {v10, v11, v11}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 752
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mLongAnimationDuration:J
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$1400(Lcom/android/server/wm/DisplayMagnifier;)J

    move-result-wide v10

    long-to-float v10, v10

    iget-object v11, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v11}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v11

    iget v11, v11, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    mul-float/2addr v10, v11

    float-to-long v3, v10

    .line 754
    .local v3, "delay":J
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 756
    .local v6, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v6, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 759
    .end local v3    # "delay":J
    .end local v6    # "msg":Landroid/os/Message;
    :cond_0
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 761
    .local v8, "rotation":I
    :try_start_3
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$1200(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;

    move-result-object v10

    invoke-interface {v10, v8}, Landroid/view/IMagnificationCallbacks;->onRotationChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 762
    :catch_3
    move-exception v10

    goto/16 :goto_0

    .line 767
    .end local v8    # "rotation":I
    :pswitch_4
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v10

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 768
    :try_start_4
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 769
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$1300(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 770
    iget-object v10, p0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v10}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 772
    :cond_1
    monitor-exit v11

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v10

    .line 715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
