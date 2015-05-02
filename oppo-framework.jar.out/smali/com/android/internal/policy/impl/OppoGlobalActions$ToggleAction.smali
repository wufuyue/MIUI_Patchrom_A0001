.class abstract Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/OppoGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "enabledIconResId"    # I
    .param p2, "disabledIconResid"    # I
    .param p3, "message"    # I
    .param p4, "enabledStatusMessageResId"    # I
    .param p5, "disabledStatusMessageResId"    # I

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    sget-object v0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    .line 561
    iput p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 562
    iput p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 563
    iput p3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mMessageResId:I

    .line 564
    iput p4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 565
    iput p5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 566
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .param p1, "buttonOn"    # Z

    .prologue
    .line 635
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    .line 636
    return-void

    .line 635
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v7, 0x0

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->willCreate()V

    .line 579
    const v6, 0xc090443

    invoke-virtual {p4, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 581
    .local v5, "v":Landroid/view/View;
    const v6, 0xc020434

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 582
    .local v1, "icon":Landroid/widget/ImageView;
    const v6, 0xc020499

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 583
    .local v2, "messageView":Landroid/widget/TextView;
    const v6, 0xc020422

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 584
    .local v4, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    .line 586
    .local v0, "enabled":Z
    if-eqz v2, :cond_0

    .line 587
    iget v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 588
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 591
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    if-eq v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    if-ne v6, v8, :cond_4

    :cond_1
    const/4 v3, 0x1

    .line 592
    .local v3, "on":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v3, :cond_5

    iget v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_1
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 595
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 598
    :cond_2
    if-eqz v4, :cond_3

    .line 599
    if-eqz v3, :cond_6

    iget v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 600
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 603
    :cond_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 605
    return-object v5

    .end local v3    # "on":Z
    :cond_4
    move v3, v7

    .line 591
    goto :goto_0

    .line 593
    .restart local v3    # "on":Z
    :cond_5
    iget v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mDisabledIconResid:I

    goto :goto_1

    .line 599
    :cond_6
    iget v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public final onPress()V
    .locals 3

    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    const-string v1, "OppoGlobalActions"

    const-string v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 615
    .local v0, "nowOn":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->onToggle(Z)V

    .line 616
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 614
    .end local v0    # "nowOn":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    .line 642
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method
