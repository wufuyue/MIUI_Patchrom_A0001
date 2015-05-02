.class Landroid/widget/OppoCursorController$SelectionStartHandleView;
.super Landroid/widget/OppoCursorController$OppoHandleView;
.source "OppoCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionStartHandleView"
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
    .line 1189
    iput-object p1, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->this$0:Landroid/widget/OppoCursorController;

    .line 1190
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/OppoCursorController$OppoHandleView;-><init>(Landroid/widget/OppoCursorController;Landroid/widget/OppoEditor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1191
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 1201
    if-eqz p2, :cond_0

    .line 1202
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    .line 1204
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0xf

    div-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1195
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/OppoCursorController$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 1196
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mEditor:Landroid/widget/OppoEditor;

    invoke-virtual {v0}, Landroid/widget/OppoEditor;->getOppoSelectionController()Landroid/widget/OppoCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OppoCursorController;->updatePosition()V

    .line 1197
    return-void
.end method

.method public updatePosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 1221
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1222
    .local v0, "offset":I
    iget-object v2, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1223
    .local v1, "selectionEnd":I
    if-lt v0, v1, :cond_0

    .line 1224
    add-int/lit8 v2, v1, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1226
    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/OppoCursorController$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 1227
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1215
    iget-object v0, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mEditor:Landroid/widget/OppoEditor;

    iget-object v1, p0, Landroid/widget/OppoCursorController$SelectionStartHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/OppoEditor;->setTextSelectionWrap(II)V

    .line 1216
    invoke-virtual {p0}, Landroid/widget/OppoCursorController$SelectionStartHandleView;->updateDrawable()V

    .line 1217
    return-void
.end method
