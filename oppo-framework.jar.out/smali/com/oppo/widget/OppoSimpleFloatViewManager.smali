.class public Lcom/oppo/widget/OppoSimpleFloatViewManager;
.super Ljava/lang/Object;
.source "OppoSimpleFloatViewManager.java"

# interfaces
.implements Lcom/oppo/widget/OppoDragSortListView$FloatViewManager;


# instance fields
.field private mFloatBGColor:I

.field private mFloatBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "lv"    # Landroid/widget/ListView;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mFloatBGColor:I

    .line 47
    iput-object p1, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    .line 48
    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 62
    iget-object v1, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 86
    :goto_0
    return-object v1

    .line 69
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 76
    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 78
    iget-object v1, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 79
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    const v2, 0xc080486

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 82
    iget-object v1, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 83
    iget-object v1, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    iget-object v1, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v1, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 2
    .param p1, "floatView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 103
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "floatView":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    iput-object v1, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 107
    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 95
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/oppo/widget/OppoSimpleFloatViewManager;->mFloatBGColor:I

    .line 52
    return-void
.end method
