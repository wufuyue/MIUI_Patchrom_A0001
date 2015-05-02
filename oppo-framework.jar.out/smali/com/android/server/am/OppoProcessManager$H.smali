.class Lcom/android/server/am/OppoProcessManager$H;
.super Landroid/os/Handler;
.source "OppoProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final RESUME_PROCESS:I = 0x13e

.field private static final RESUME_SINGNAL:I = 0x12

.field private static final SUSPEND_PROCESS:I = 0x13f

.field private static final SUSPEND_SINGNAL:I = 0x13


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    .line 218
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 219
    return-void
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 214
    const-string v0, "(unknown)"

    :goto_0
    return-object v0

    .line 210
    :pswitch_0
    const-string v0, "SUSPEND_PROCESS"

    goto :goto_0

    .line 212
    :pswitch_1
    const-string v0, "RESUME_PROCESS"

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x13e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 223
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 224
    .local v4, "pid":I
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/am/OppoProcessManager;->getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    invoke-static {v9, v10}, Lcom/android/server/am/OppoProcessManager;->access$800(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 225
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    sget-boolean v9, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v9, :cond_2

    .line 229
    const-string v9, "OppoProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ">>> handling: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mH:Lcom/android/server/am/OppoProcessManager$H;
    invoke-static {v11}, Lcom/android/server/am/OppoProcessManager;->access$900(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/OppoProcessManager$H;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Lcom/android/server/am/OppoProcessManager$H;->codeToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_2
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 349
    :pswitch_0
    const/16 v9, 0x12

    invoke-static {v4, v9}, Landroid/os/Process;->sendSignal(II)V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # getter for: Lcom/android/server/am/OppoProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v9}, Lcom/android/server/am/OppoProcessManager;->access$1000(Lcom/android/server/am/OppoProcessManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getTopRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 239
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_5

    .line 241
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 242
    const-string v9, "OppoProcessManager"

    const-string v10, "#return from top activity"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_3
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_5

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v9, :cond_5

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v9, v9, Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_5

    .line 247
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v9, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 248
    .local v6, "sourceApp":Lcom/android/server/am/ProcessRecord;
    # getter for: Lcom/android/server/am/OppoProcessManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoProcessManager;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 249
    const-string v9, "OppoProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "               "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is relation, resume it!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_4
    iget v9, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v10, 0x12

    invoke-static {v9, v10}, Landroid/os/Process;->sendSignal(II)V

    .line 254
    .end local v6    # "sourceApp":Lcom/android/server/am/ProcessRecord;
    :cond_5
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z
    invoke-static {v9, v0}, Lcom/android/server/am/OppoProcessManager;->access$1200(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 255
    sget-boolean v9, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v9, :cond_0

    .line 256
    const-string v9, "OppoProcessManager"

    const-string v10, "#return from adj"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 261
    :cond_6
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z
    invoke-static {v9, v0}, Lcom/android/server/am/OppoProcessManager;->access$1300(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 265
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z
    invoke-static {v9, v0}, Lcom/android/server/am/OppoProcessManager;->access$1400(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 266
    sget-boolean v9, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v9, :cond_0

    .line 267
    const-string v9, "OppoProcessManager"

    const-string v10, "#return from im"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 272
    :cond_7
    if-eqz v0, :cond_9

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v9, :cond_9

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    iget-boolean v9, v9, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v9, :cond_9

    .line 273
    sget-boolean v9, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v9, :cond_8

    .line 274
    const-string v9, "OppoProcessManager"

    const-string v10, "#try suspend again for order brd"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_8
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v9, v0}, Lcom/android/server/am/OppoProcessManager;->access$1500(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 280
    :cond_9
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->getActiveAudioPids()[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/am/OppoProcessManager;->access$1600(Lcom/android/server/am/OppoProcessManager;)[Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "mTrackPids":[Ljava/lang/String;
    if-eqz v3, :cond_d

    .line 282
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v9, v3

    if-ge v1, v9, :cond_d

    .line 283
    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 282
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    :cond_b
    aget-object v9, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 287
    sget-boolean v9, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v9, :cond_0

    .line 288
    const-string v9, "OppoProcessManager"

    const-string v10, "#return from audio track 1"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    :cond_c
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    aget-object v10, v3, v1

    # invokes: Lcom/android/server/am/OppoProcessManager;->getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    invoke-static {v9, v10}, Lcom/android/server/am/OppoProcessManager;->access$800(Lcom/android/server/am/OppoProcessManager;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 294
    .local v7, "trackApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v7, :cond_a

    iget v9, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v9, v10, :cond_a

    .line 295
    sget-boolean v9, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v9, :cond_0

    .line 296
    const-string v9, "OppoProcessManager"

    const-string v10, "#return from audio track 2"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 303
    .end local v1    # "i":I
    .end local v7    # "trackApp":Lcom/android/server/am/ProcessRecord;
    :cond_d
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->getTouchedWindowsPids()[I
    invoke-static {v9}, Lcom/android/server/am/OppoProcessManager;->access$1700(Lcom/android/server/am/OppoProcessManager;)[I

    move-result-object v2

    .line 304
    .local v2, "mTouchWindowPids":[I
    if-eqz v2, :cond_f

    .line 305
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v9, v2

    if-ge v1, v9, :cond_f

    .line 306
    aget v9, v2, v1

    if-ne v4, v9, :cond_e

    .line 307
    sget-boolean v9, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v9, :cond_0

    .line 308
    const-string v9, "OppoProcessManager"

    const-string v10, "#return from touch window"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 305
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 315
    .end local v1    # "i":I
    :cond_f
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->getWakeLockedPids()[I
    invoke-static {v9}, Lcom/android/server/am/OppoProcessManager;->access$1800(Lcom/android/server/am/OppoProcessManager;)[I

    move-result-object v8

    .line 316
    .local v8, "wakeLocks":[I
    if-eqz v8, :cond_11

    .line 317
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v9, v8

    if-ge v1, v9, :cond_11

    .line 318
    aget v9, v8, v1

    if-ne v4, v9, :cond_10

    .line 319
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v9, v0}, Lcom/android/server/am/OppoProcessManager;->access$1900(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V

    .line 320
    const-string v9, "OppoProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "kill "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget v9, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v10, 0x9

    invoke-static {v9, v10}, Landroid/os/Process;->sendSignal(II)V

    goto/16 :goto_0

    .line 317
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 327
    .end local v1    # "i":I
    :cond_11
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    # invokes: Lcom/android/server/am/OppoProcessManager;->isLocationApplication(I)Z
    invoke-static {v9, v10}, Lcom/android/server/am/OppoProcessManager;->access$2000(Lcom/android/server/am/OppoProcessManager;I)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 328
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v9, v0}, Lcom/android/server/am/OppoProcessManager;->access$1900(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V

    .line 329
    # getter for: Lcom/android/server/am/OppoProcessManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoProcessManager;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v9, "OppoProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "kill "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_12
    iget v9, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v10, 0x9

    invoke-static {v9, v10}, Landroid/os/Process;->sendSignal(II)V

    goto/16 :goto_0

    .line 334
    :cond_13
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->checkProcessToast(I)Z
    invoke-static {v9, v4}, Lcom/android/server/am/OppoProcessManager;->access$2100(Lcom/android/server/am/OppoProcessManager;I)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 335
    sget-boolean v9, Lcom/android/server/am/OppoProcessManager;->DEBUG_DETAIL:Z

    if-eqz v9, :cond_0

    .line 336
    const-string v9, "OppoProcessManager"

    const-string v10, "#return from toast"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 341
    :cond_14
    # getter for: Lcom/android/server/am/OppoProcessManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OppoProcessManager;->access$1100()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 342
    const-string v9, "OppoProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "#===>     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " suspend!!!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_15
    iget-object v9, p0, Lcom/android/server/am/OppoProcessManager$H;->this$0:Lcom/android/server/am/OppoProcessManager;

    # invokes: Lcom/android/server/am/OppoProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v9, v0}, Lcom/android/server/am/OppoProcessManager;->access$1900(Lcom/android/server/am/OppoProcessManager;Lcom/android/server/am/ProcessRecord;)V

    .line 344
    const/16 v9, 0x13

    invoke-static {v4, v9}, Landroid/os/Process;->sendSignal(II)V

    goto/16 :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x13e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
