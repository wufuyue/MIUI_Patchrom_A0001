.class Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/OppoGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnovativeV2HAction"
.end annotation


# instance fields
.field private final AIRPLANE_OPTION:I

.field private final ITEM_IDS:[I

.field private final SHUTDOWN_OPTION:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->ITEM_IDS:[I

    .line 933
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->SHUTDOWN_OPTION:I

    .line 934
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->AIRPLANE_OPTION:I

    .line 942
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mHandler:Landroid/os/Handler;

    .line 943
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mContext:Landroid/content/Context;

    .line 944
    return-void

    .line 931
    :array_0
    .array-data 4
        0xc02048c
        0xc02048d
    .end array-data
.end method

.method private indexToOption(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 980
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 948
    const v2, 0xc09043e

    const/4 v3, 0x0

    invoke-virtual {p4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    .line 950
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->ITEM_IDS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 951
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->ITEM_IDS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 952
    .local v1, "itemView":Landroid/view/View;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 953
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    .end local v1    # "itemView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    return-object v2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 973
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 984
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 1006
    :goto_0
    return-void

    .line 988
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 990
    .local v0, "index":I
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->indexToOption(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 991
    const-string v2, "OppoGlobalActions"

    const-string v3, "PRESS SHUTDOW OPTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    sput-boolean v4, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    .line 994
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1700(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1005
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 995
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->indexToOption(I)I

    move-result v2

    if-ne v4, v2, :cond_1

    .line 996
    const-string v2, "OppoGlobalActions"

    const-string v3, "----PRESS REBOOT OPTION "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    sput-boolean v4, Lcom/android/internal/policy/impl/OppoGlobalActions;->isPRStatus:Z

    .line 999
    const-string v2, "ro.SHUT_DOWN_DEVICE"

    const-string v3, "1"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1001
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1002
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 958
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 969
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 965
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 976
    return-void
.end method
