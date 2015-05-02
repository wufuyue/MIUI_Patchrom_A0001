.class Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;
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
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final FLIGHT_MODE:I

.field private final ITEM_IDS:[I

.field private final NORMAL_MODE:I

.field private final SILENT_MODE:I

.field private final TEXT_IDS:[I

.field private final VIBRATE_MODE:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field protected mFlightState:Z

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "audioManager"    # Landroid/media/AudioManager;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 687
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 674
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->TEXT_IDS:[I

    .line 681
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    .line 682
    iput v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->SILENT_MODE:I

    .line 683
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->VIBRATE_MODE:I

    .line 684
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->NORMAL_MODE:I

    .line 685
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->FLIGHT_MODE:I

    .line 688
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 689
    iput-object p4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 690
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 691
    return-void

    .line 673
    nop

    :array_0
    .array-data 4
        0xc020488
        0xc020489
        0xc02048a
        0xc02048b
    .end array-data

    .line 674
    :array_1
    .array-data 4
        0xc02048e
        0xc02048f
        0xc020490
        0xc020491
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 700
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .param p1, "ringerMode"    # I

    .prologue
    .line 695
    return p1
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$800(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->updateState(Z)V

    .line 778
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    # setter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mOppoAirplaneState:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1102(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)Z

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v6, 0x0

    .line 705
    const v7, 0xc09043f

    invoke-virtual {p4, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 707
    .local v5, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v3

    .line 708
    .local v3, "selectedIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    array-length v7, v7

    if-ge v0, v7, :cond_3

    .line 709
    if-ne v3, v0, :cond_1

    const/4 v2, 0x1

    .line 710
    .local v2, "selected":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 711
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    .line 713
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v7, v7, v0

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 714
    .local v1, "itemView":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 716
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 717
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    iget-object v7, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->TEXT_IDS:[I

    aget v7, v7, v0

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 719
    .local v4, "t":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 720
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0xc060405

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 708
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "itemView":Landroid/view/View;
    .end local v2    # "selected":Z
    .end local v4    # "t":Landroid/widget/TextView;
    :cond_1
    move v2, v6

    .line 709
    goto :goto_1

    .line 723
    .restart local v1    # "itemView":Landroid/view/View;
    .restart local v2    # "selected":Z
    .restart local v4    # "t":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0xc060406

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 727
    .end local v1    # "itemView":Landroid/view/View;
    .end local v2    # "selected":Z
    .end local v4    # "t":Landroid/widget/TextView;
    :cond_3
    return-object v5
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v5, 0x0

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    .line 813
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 788
    .local v1, "index":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v2

    .line 789
    .local v2, "mode":I
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v3

    .line 790
    .local v3, "selected":Z
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 792
    .local v0, "flightOn":Z
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 808
    const-string v4, "OppoGlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0    # "flightOn":Z
    :cond_1
    move v0, v5

    .line 790
    goto :goto_1

    .line 794
    .restart local v0    # "flightOn":Z
    :pswitch_0
    if-nez v3, :cond_2

    .line 795
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 800
    :cond_2
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 803
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->onToggle(Z)V

    .line 804
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->changeStateFromPress(Z)V

    goto :goto_2

    .line 792
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 730
    return-void
.end method

.method onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 755
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$800(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$902(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)Z

    .line 760
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 762
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 763
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 767
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/OppoGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1000(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 751
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mFlightState:Z

    .line 752
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 748
    return-void
.end method
