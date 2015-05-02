.class Landroid/widget/OppoCursorController$InsertionHandleView;
.super Landroid/widget/OppoCursorController$OppoHandleView;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InsertionHandleView"
.end annotation


# static fields
.field protected static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xbb8

.field protected static final DELAY_WHEN_HANDLE_INVISIBLE:I = 0xc8


# instance fields
.field private mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/OppoCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "editor"    # Landroid/widget/OppoEditor;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1103
    iput-object p1, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->this$0:Landroid/widget/OppoCursorController;

    .line 1104
    invoke-direct {p0, p1, p2, p3, p3}, Landroid/widget/OppoCursorController$OppoHandleView;-><init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1105
    return-void
.end method

.method private removeHiderCallback()V
    .locals 2

    .prologue
    .line 1108
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1111
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 1120
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected hideAfterDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 1124
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionHandleView;->removeHiderCallback()V

    .line 1126
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1127
    new-instance v0, Landroid/widget/OppoCursorController$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/OppoCursorController$InsertionHandleView$1;-><init>(Landroid/widget/OppoCursorController$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    .line 1133
    :cond_0
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1134
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 1138
    invoke-super {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->onDetached()V

    .line 1139
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionHandleView;->removeHiderCallback()V

    .line 1140
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 1144
    invoke-super {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->onHandleMoved()V

    .line 1145
    invoke-direct {p0}, Landroid/widget/OppoCursorController$InsertionHandleView;->removeHiderCallback()V

    .line 1146
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0xbb8

    .line 1166
    invoke-super {p0, p1}, Landroid/widget/OppoCursorController$OppoHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1167
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1182
    :goto_0
    :pswitch_0
    return v0

    .line 1172
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/widget/OppoCursorController$InsertionHandleView;->hideAfterDelay(I)V

    goto :goto_0

    .line 1176
    :pswitch_2
    invoke-virtual {p0, v2}, Landroid/widget/OppoCursorController$InsertionHandleView;->hideAfterDelay(I)V

    goto :goto_0

    .line 1167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public show()V
    .locals 1

    .prologue
    .line 1150
    invoke-super {p0}, Landroid/widget/OppoCursorController$OppoHandleView;->show()V

    .line 1151
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/OppoCursorController$InsertionHandleView;->hideAfterDelay(I)V

    .line 1152
    return-void
.end method

.method public updatePosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/OppoCursorController$InsertionHandleView;->positionAtCursorOffset(IZ)V

    .line 1157
    return-void
.end method

.method public updateSelection(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1161
    iget-object v0, p0, Landroid/widget/OppoCursorController$InsertionHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0, p1, p1}, Landroid/widget/OppoEditor;->setTextSelectionWrap(II)V

    .line 1162
    return-void
.end method
