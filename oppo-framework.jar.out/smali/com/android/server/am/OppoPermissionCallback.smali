.class public Lcom/android/server/am/OppoPermissionCallback;
.super Ljava/lang/Object;
.source "OppoPermissionCallback.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoPermissionCallback"

.field private static mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OppoPermissionCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public permission:Ljava/lang/String;

.field public pid:I

.field public res:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OppoPermissionCallback;->DEBUG:Z

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOppoPermission(Ljava/lang/String;IILcom/android/server/am/ActivityManagerService;)I
    .locals 11
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "mSelf"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 86
    const-string v1, "persist.sys.permission.enable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 87
    const/4 v10, 0x3

    .line 88
    .local v10, "result":I
    sget-object v1, Landroid/content/pm/OppoPermissionManager;->sInterceptingPermissions:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    const/4 v9, 0x3

    .line 90
    .local v9, "res":I
    new-instance v6, Lcom/android/server/am/OppoPermissionCallback;

    invoke-direct {v6}, Lcom/android/server/am/OppoPermissionCallback;-><init>()V

    .line 92
    .local v6, "callback":Lcom/android/server/am/OppoPermissionCallback;
    :try_start_0
    iput-object p0, v6, Lcom/android/server/am/OppoPermissionCallback;->permission:Ljava/lang/String;

    .line 93
    iput p1, v6, Lcom/android/server/am/OppoPermissionCallback;->pid:I

    .line 94
    const/4 v1, 0x3

    iput v1, v6, Lcom/android/server/am/OppoPermissionCallback;->res:I

    .line 95
    sget-object v2, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 96
    :try_start_1
    sget-object v1, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    const-string v1, "persist.sys.assert.panic"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OppoPermissionCallback;->DEBUG:Z

    .line 100
    sget-boolean v1, Lcom/android/server/am/OppoPermissionCallback;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "OppoPermissionCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOppoPermission, permission="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/android/server/am/OppoActivityManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/am/OppoActivityManagerService;->mPermissionInterceptPolicy:Lcom/android/server/am/OppoPermissionInterceptPolicy;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/OppoPermissionInterceptPolicy;->checkPermissionForProc(Ljava/lang/String;IIILcom/android/server/am/OppoPermissionCallback;)I

    move-result v9

    .line 106
    sget-boolean v1, Lcom/android/server/am/OppoPermissionCallback;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 107
    const-string v1, "OppoPermissionCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOppoPermission, checkPermissionForProc return res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", permission="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/am/OppoPermissionCallback;->getPermission()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 112
    :cond_1
    const/4 v1, 0x1

    if-ne v9, v1, :cond_6

    .line 113
    const/4 v10, -0x1

    .line 131
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OppoPermissionCallback;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 132
    const-string v1, "OppoPermissionCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOppoPermission, finally callback size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", permission="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/am/OppoPermissionCallback;->getPermission()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_3
    sget-object v2, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 138
    :try_start_3
    sget-object v1, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 143
    .end local v6    # "callback":Lcom/android/server/am/OppoPermissionCallback;
    .end local v9    # "res":I
    :cond_4
    :goto_1
    const/4 v1, -0x1

    if-ne v1, v10, :cond_9

    .line 144
    const/4 v1, -0x1

    .line 168
    .end local v10    # "result":I
    :goto_2
    return v1

    .line 97
    .restart local v6    # "callback":Lcom/android/server/am/OppoPermissionCallback;
    .restart local v9    # "res":I
    .restart local v10    # "result":I
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 128
    :catch_0
    move-exception v7

    .line 129
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 131
    sget-boolean v1, Lcom/android/server/am/OppoPermissionCallback;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 132
    const-string v1, "OppoPermissionCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOppoPermission, finally callback size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", permission="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/am/OppoPermissionCallback;->getPermission()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_5
    sget-object v2, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 138
    :try_start_7
    sget-object v1, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 114
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v1, 0x2

    if-ne v9, v1, :cond_2

    .line 115
    :try_start_8
    monitor-enter v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 116
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    .line 117
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 118
    :try_start_a
    sget-boolean v1, Lcom/android/server/am/OppoPermissionCallback;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 119
    const-string v1, "OppoPermissionCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOppoPermission, notify continue callback.res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/android/server/am/OppoPermissionCallback;->res:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", permission="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/am/OppoPermissionCallback;->getPermission()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_7
    iget v1, v6, Lcom/android/server/am/OppoPermissionCallback;->res:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 125
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 117
    :catchall_2
    move-exception v1

    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 131
    :catchall_3
    move-exception v1

    sget-boolean v2, Lcom/android/server/am/OppoPermissionCallback;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 132
    const-string v2, "OppoPermissionCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOppoPermission, finally callback size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permission="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/server/am/OppoPermissionCallback;->getPermission()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Thread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_8
    sget-object v2, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 138
    :try_start_d
    sget-object v3, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v1

    :catchall_4
    move-exception v1

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v1

    :catchall_5
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v1

    .line 146
    .end local v6    # "callback":Lcom/android/server/am/OppoPermissionCallback;
    .end local v9    # "res":I
    :cond_9
    invoke-static {p3, p1}, Lcom/android/server/am/OppoPermissionCallback;->getProcessForPid(Lcom/android/server/am/ActivityManagerService;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    .line 148
    .local v8, "pr":Lcom/android/server/am/ProcessRecord;
    :try_start_10
    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.permission.READ_MMS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.permission.WRITE_MMS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 152
    :cond_a
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, ".cts."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 153
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 155
    :cond_b
    const-string v1, "android.permission.SEND_MMS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 156
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, ".cts."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 157
    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {p3, v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    goto/16 :goto_2

    .line 159
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 162
    :cond_d
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    move-result v1

    goto/16 :goto_2

    .line 164
    :catch_1
    move-exception v7

    .line 165
    .restart local v7    # "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    goto/16 :goto_2

    .line 168
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "result":I
    :cond_e
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    goto/16 :goto_2
.end method

.method public static getProcessForPid(Lcom/android/server/am/ActivityManagerService;I)Lcom/android/server/am/ProcessRecord;
    .locals 3
    .param p0, "mService"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "pid"    # I

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 76
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v2, p1, :cond_0

    .line 77
    monitor-exit p0

    .line 81
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v1

    .line 74
    .restart local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 80
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    monitor-exit p0

    .line 81
    const/4 v1, 0x0

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public getPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/am/OppoPermissionCallback;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/am/OppoPermissionCallback;->pid:I

    return v0
.end method

.method public notifyApplication(Ljava/lang/String;III)I
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "allowed"    # I
    .param p4, "token"    # I

    .prologue
    .line 48
    sget-boolean v2, Lcom/android/server/am/OppoPermissionCallback;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 49
    const-string v2, "OppoPermissionCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context notifyApplication, permission="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", allowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    .local v1, "callback":Lcom/android/server/am/OppoPermissionCallback;
    sget-object v3, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 53
    :try_start_0
    sget-object v2, Lcom/android/server/am/OppoPermissionCallback;->mCallbackMap:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/OppoPermissionCallback;

    move-object v1, v0

    .line 54
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v1, :cond_1

    .line 56
    monitor-enter v1

    .line 57
    :try_start_1
    iput p3, v1, Lcom/android/server/am/OppoPermissionCallback;->res:I

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 59
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 54
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 59
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
