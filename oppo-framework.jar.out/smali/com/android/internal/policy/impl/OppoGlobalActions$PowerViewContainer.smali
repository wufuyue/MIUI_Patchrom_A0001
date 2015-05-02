.class Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;
.super Landroid/widget/LinearLayout;
.source "OppoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerViewContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnKeyListener;,
        Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnChangeListener;
    }
.end annotation


# instance fields
.field private mKeyListener:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnKeyListener;

.field private mListener:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnChangeListener;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1016
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1017
    return-void
.end method


# virtual methods
.method public deliveryValue(Landroid/view/WindowManager;)V
    .locals 0
    .param p1, "mWm"    # Landroid/view/WindowManager;

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->mWm:Landroid/view/WindowManager;

    .line 1060
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 1021
    const-string v5, "OppoGlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchKeyEvent event.getKeyCode()= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 1023
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 1024
    .local v3, "state":Landroid/view/KeyEvent$DispatcherState;
    const-string v5, "OppoGlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchKeyEvent  state= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    if-nez v3, :cond_1

    .line 1026
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 1054
    .end local v3    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v4

    .line 1028
    .restart local v3    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 1029
    .local v0, "count":I
    const-string v5, "OppoGlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchKeyEvent  count= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " event.getAction()= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    if-nez v0, :cond_2

    .line 1031
    if-eqz v3, :cond_0

    .line 1032
    invoke-virtual {v3, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 1035
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 1036
    invoke-virtual {v3, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1037
    .local v2, "isTracking":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    .line 1038
    .local v1, "isCanceled":Z
    const-string v5, "OppoGlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchKeyEvent  isTracking= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isCanceled= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " this= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    if-eqz p0, :cond_3

    .line 1041
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->removePowerPicture()V

    goto :goto_0

    .line 1045
    .end local v1    # "isCanceled":Z
    .end local v2    # "isTracking":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1049
    .end local v0    # "count":I
    .end local v3    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x18

    if-eq v4, v5, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x19

    if-ne v4, v5, :cond_6

    .line 1050
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->mKeyListener:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnKeyListener;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnKeyListener;->onKey()V

    .line 1051
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1054
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public removePowerPicture()V
    .locals 1

    .prologue
    .line 1063
    if-eqz p0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1065
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->mListener:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnChangeListener;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->mListener:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnChangeListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnChangeListener;->onChange()V

    .line 1069
    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnChangeListener;

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->mListener:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnChangeListener;

    .line 1073
    return-void
.end method

.method public setOnKeyListener(Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnKeyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnKeyListener;

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer;->mKeyListener:Lcom/android/internal/policy/impl/OppoGlobalActions$PowerViewContainer$OnKeyListener;

    .line 1084
    return-void
.end method
