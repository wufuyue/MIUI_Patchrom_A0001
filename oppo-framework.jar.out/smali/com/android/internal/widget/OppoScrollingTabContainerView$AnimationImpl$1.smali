.class Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z
    invoke-static {v0, v3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$002(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z

    .line 139
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    iget-object v1, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    iget-object v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget-object v1, v1, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    iget-object v2, v2, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    iget v2, v2, Lcom/android/internal/widget/OppoScrollingTabContainerView;->mSelectedTabIndex:I

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->updateTabBackground(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$400(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;II)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z
    invoke-static {v0, v3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$102(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z

    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsInterrupted:Z
    invoke-static {v0, v3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$502(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsClicked:Z
    invoke-static {v0, v3}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$602(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    iget-object v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->this$0:Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->invalidate()V

    .line 146
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mShowAnimationByClick:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$002(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # setter for: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsBegin:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$102(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;Z)Z

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # getter for: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->mIsCleared:Z
    invoke-static {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$200(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl$1;->this$1:Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;

    # invokes: Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->clearSelectTabBackground()V
    invoke-static {v0}, Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;->access$300(Lcom/android/internal/widget/OppoScrollingTabContainerView$AnimationImpl;)V

    .line 125
    :cond_0
    return-void
.end method
