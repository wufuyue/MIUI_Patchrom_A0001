.class Landroid/widget/OppoCursorController$SelectionEndHandleView;
.super Landroid/widget/OppoCursorController$OppoHandleView;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/OppoCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "editor"    # Landroid/widget/OppoEditor;
    .param p3, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1232
    iput-object p1, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->this$0:Landroid/widget/OppoCursorController;

    .line 1233
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/OppoCursorController$OppoHandleView;-><init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1234
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 1249
    if-eqz p2, :cond_0

    .line 1250
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0xf

    div-int/lit8 v0, v0, 0x10

    .line 1252
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1238
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/OppoCursorController$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 1239
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->updatePosition()V

    .line 1240
    return-void
.end method

.method public updatePosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1264
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1265
    .local v0, "offset":I
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1266
    .local v1, "selectionStart":I
    if-gt v0, v1, :cond_0

    .line 1267
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1269
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/OppoCursorController$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 1270
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mEditor:Landroid/widget/OppoEditor;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionEndHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/OppoEditor;->setTextSelectionWrap(II)V

    .line 1259
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionEndHandleView;->updateDrawable()V

    .line 1260
    return-void
.end method
